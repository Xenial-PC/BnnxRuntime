using System;
using System.Interop;
using System.Collections;
using OnnxRuntime.Native;

namespace OnnxRuntime;

public class InferenceSession
{
	/**
	Onnx ORT Environment
	*/
    private OrtEnv* _env;

	/**
	Session options
	*/
    private OrtSessionOptions* _options;

	/**
	Onnx ORT Session
	*/
    private OrtSession* _session;

	/**
	Onnx ORT API
	*/
    private OrtApi* _ort;

	/**
	CPU Memory infomation
	*/
	private OrtMemoryInfo* _cpuMemInfo;

	/**
	Desired ORT API Version
	*/
	public const int32 ORT_API_VERSION = 24;

	/**
	Access to the session
	*/
	public OrtSession* Session => _session;

	/**
	Acces to session options
	*/
	public OrtSessionOptions* Options => _options;

	/**
	Constructor for initialization of the onnx session
	*/
    public this(String modelPath, OrtLoggingLevel logLevel = OrtLoggingLevel.ORT_LOGGING_LEVEL_WARNING, int directMlDeviceId = 0)
    {
        var apiBase = Imports.OrtGetApiBase();
        _ort = apiBase.GetApi(ORT_API_VERSION);

        _env = null;
        var status = _ort.CreateEnv(logLevel, "InferenceSession", &(_env));
        _checkStatus(status);

        _options = null;
        status = _ort.CreateSessionOptions(&(_options));
        _checkStatus(status);

        status = Imports.OrtSessionOptionsAppendExecutionProvider_DML(_options, (int32)directMlDeviceId);
        _checkStatus(status);

        _session = null;

		var alloc = new StdAllocator();
		
		char16* modelBuffer = (char16*)alloc.Alloc(sizeof(char16) * (modelPath.Length + 1), sizeof(char16));

		for (int i = 0; i < modelPath.Length; i++)
		    modelBuffer[i] = modelPath[i];

		modelBuffer[modelPath.Length] = 0;

        status = _ort.CreateSession(_env, modelBuffer, _options, &(_session));
        _checkStatus(status);

		alloc.Free(modelBuffer);
    }

	/**
	Initializes cpu memory information
	*/
	private void _initCpuMemInfo()
	{
	    if (_cpuMemInfo != null) return;
	    _ort.CreateCpuMemoryInfo(
			OrtAllocatorType.OrtArenaAllocator,
			OrtMemType.OrtMemTypeDefault,
			&_cpuMemInfo);
	}

	/**
	Interface for creating a tensor
	*/
	public OrtValue* CreateTensor(float* data, int64* shape, int32 rank)
	{
	    _initCpuMemInfo();

	    OrtValue* tensor = null;
	    uint64 bytes = (uint64)(sizeof(float) * _computeNumElements(shape, rank));

	    _ort.CreateTensorWithDataAsOrtValue(
		    _cpuMemInfo,
		    data,
		    bytes,
		    shape,
		    (uint64)rank,
		    ONNXTensorElementDataType.ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT,
		    &tensor
		);

	    return tensor;
	}

	/**
	Interface for running a inference
	*/
	public void Run(char8** inputNames, OrtValue** inputValues, uint64 inputCount,
	                char8** outputNames, OrtValue** outputValues, uint64 outputCount)
	{
	    var status = _ort.Run(
	        _session,
	        null,
	        inputNames,
	        inputValues,
	        inputCount,
	        outputNames,
	        outputCount,
	        outputValues
	    );
	    _checkStatus(status);
	}

	/**
	Returns tensor mutable data
	*/
	public float* GetTensorData(OrtValue* tensor)
	{
	    float* data = null;
	    _ort.GetTensorMutableData(tensor, (void**)&data);
	    return data;
	}

	/**
	Dumps the onnx models IO Names
	*/
	public void DumpIONames()
	{
	    size_t inCount = 0;
	    size_t outCount = 0;

	    var st = _ort.SessionGetInputCount(_session, &inCount);
	    if (_checkStatusRet(st)) return;

	    st = _ort.SessionGetOutputCount(_session, &outCount);
	    if (_checkStatusRet(st)) return;

	    OrtAllocator* alloc = null;
	    st = _ort.GetAllocatorWithDefaultOptions(&alloc);
	    if (_checkStatusRet(st)) return;

	    Console.WriteLine($"Inputs: {inCount}");
	    for (uint64 i = 0; i < inCount; i++)
	    {
	        char8* name = null;
	        st = _ort.SessionGetInputName(_session, i, alloc, &name);
	        if (_checkStatusRet(st)) return;

	        if (name == null)
	        {
	            Console.WriteLine($"  [{i}] <null name>");
	            continue;
	        }

	        Console.WriteLine($"  [{i}] {scope String(name)}");

	        alloc.Free(alloc, name);
	    }

	    Console.WriteLine($"Outputs: {outCount}");
	    for (uint64 i = 0; i < outCount; i++)
	    {
	        char8* name = null;
	        st = _ort.SessionGetOutputName(_session, i, alloc, &name);
	        if (_checkStatusRet(st)) return;

	        if (name == null)
	        {
	            Console.WriteLine($"  [{i}] <null name>");
	            continue;
	        }

	        Console.WriteLine($"  [{i}] {scope String(name)}");

	        alloc.Free(alloc, name);
	    }
	}

	/**
	Computes the number of elements for the shape
	*/
	private int64 _computeNumElements(int64* shape, int32 rank)
	{
	    int64 count = 1;
	    for (int i = 0; i < rank; i++)
	        count *= shape[i];
	    return count;
	}

	/**
	Checks the ORT Status
	*/
	private void _checkStatus(OrtStatus* status)
	{
	    if (status == null) return;
		var msg = new String(_ort.GetErrorMessage(status));

	    Console.WriteLine(msg);
		delete msg;
	}

	/**
	Checks the ORT Status with a return value of bool
	*/
	private bool _checkStatusRet(OrtStatus* status)
	{
	    if (status == null) return false;

	    var msg = new String(_ort.GetErrorMessage(status));
	    Console.WriteLine($"ORT ERROR: {msg}");
	    delete msg;

	    return true;
	}

	/**
	Dumps the models IO with Shapes
	*/
	public void DumpIOWithShapes()
	{
	    size_t inCount = 0;
	    size_t outCount = 0;

	    var st = _ort.SessionGetInputCount(_session, &inCount);
	    if (_checkStatusRet(st)) return;

	    st = _ort.SessionGetOutputCount(_session, &outCount);
	    if (_checkStatusRet(st)) return;

	    OrtAllocator* alloc = null;
	    st = _ort.GetAllocatorWithDefaultOptions(&alloc);
	    if (_checkStatusRet(st)) return;

	    Console.WriteLine($"Inputs: {inCount}");
	    for (size_t i = 0; i < inCount; i++)
	    {
	        char8* name = null;
	        st = _ort.SessionGetInputName(_session, i, alloc, &name);
	        if (_checkStatusRet(st)) return;

	        Console.WriteLine($"  [{i}] {scope String(name)}");

	        OrtTypeInfo* typeInfo = null;
	        st = _ort.SessionGetInputTypeInfo(_session, i, &typeInfo);
	        if (_checkStatusRet(st)) return;

	        OrtTensorTypeAndShapeInfo* tinfo = null;
	        st = _ort.CastTypeInfoToTensorInfo(typeInfo, &tinfo);
	        if (_checkStatusRet(st)) return;

			ONNXTensorElementDataType onnxTensorData;
	        var elemType = _ort.GetTensorElementType(tinfo, &onnxTensorData);

	        size_t rank = 0;
	        st = _ort.GetDimensionsCount(tinfo, &rank);
	        if (_checkStatusRet(st)) return;

	        int64* dims = scope int64[(int)rank]*;
	        st = _ort.GetDimensions(tinfo, dims, rank);
	        if (_checkStatusRet(st)) return;

	        Console.Write("      type=");
	        Console.WriteLine((int)((void*)elemType));

	        Console.Write("      shape=[");
	        for (int r = 0; r < (int)rank; r++)
	        {
	            if (r != 0) Console.Write(", ");
	            Console.Write($"{dims[r]}");
	        }
	        Console.WriteLine("]");

	        _ort.ReleaseTypeInfo(typeInfo);
	        alloc.Free(alloc, name);
	    }

	    Console.WriteLine($"Outputs: {outCount}");
	    for (size_t i = 0; i < outCount; i++)
	    {
	        char8* name = null;
	        st = _ort.SessionGetOutputName(_session, i, alloc, &name);
	        if (_checkStatusRet(st)) return;

	        Console.WriteLine($"  [{i}] {scope String(name)}");

	        OrtTypeInfo* typeInfo = null;
	        st = _ort.SessionGetOutputTypeInfo(_session, i, &typeInfo);
	        if (_checkStatusRet(st)) return;

	        OrtTensorTypeAndShapeInfo* tinfo = null;
	        st = _ort.CastTypeInfoToTensorInfo(typeInfo, &tinfo);
	        if (_checkStatusRet(st)) return;

			ONNXTensorElementDataType onnxTensorData;
	        var elemType = _ort.GetTensorElementType(tinfo, &onnxTensorData);

	        size_t rank = 0;
	        st = _ort.GetDimensionsCount(tinfo, &rank);
	        if (_checkStatusRet(st)) return;

	        int64* dims = scope int64[(int)rank]*;
	        st = _ort.GetDimensions(tinfo, dims, rank);
	        if (_checkStatusRet(st)) return;

	        Console.Write("      type=");
	        Console.WriteLine((int)((void*)elemType));

	        Console.Write("      shape=[");
	        for (int r = 0; r < (int)rank; r++)
	        {
	            if (r != 0) Console.Write(", ");
	            Console.Write($"{dims[r]}");
	        }
	        Console.WriteLine("]");

	        _ort.ReleaseTypeInfo(typeInfo);
	        alloc.Free(alloc, name);
	    }
	}

	/**
	Simple interface for creating a tensor from a list
	*/
	public OrtValue* CreateTensorFromList(List<float> dataList, int64* shape, int32 rank)
	{
	    var alloc = new StdAllocator();
	    float* buf = (float*)alloc.Alloc(sizeof(float) * dataList.Count, sizeof(float));

	    for (int i = 0; i < dataList.Count; i++)
	        buf[i] = dataList[i];

	    OrtValue* t = CreateTensor(buf, shape, rank);
	    return t;
	}

	/**
	Deconstructor for cleaning up the inference session
	*/
	public ~this()
	{
		if (_session != null) _ort.ReleaseSession(_session);
		if (_options != null) _ort.ReleaseSessionOptions(_options);
		if (_env != null) _ort.ReleaseEnv(_env);
		if (_cpuMemInfo != null) _ort.ReleaseMemoryInfo(_cpuMemInfo);
	}
}
