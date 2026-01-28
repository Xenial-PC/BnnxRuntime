using System;
using System.Interop;
using System.Collections;
using OnnxRuntime.Native;
using OnnxRuntime.Session;

namespace OnnxRuntime;

/**
OnnxRuntime inference session
*/
public class InferenceSession
{
	/**
	Onnx ORT Session
	*/
    public OrtSession* Session ~ delete _;

	/**
	Interface for OrtApi
	*/
	public OrtApi* Ort => Options.Ort;

	/**
	CPU Memory information
	*/
	private OrtMemoryInfo* _cpuMemInfo ~ delete _;

	/**
	Interface for the current session options
	*/
	public SessionOptions Options ~ delete _;

	/**
	Model Input/Output MetaData
	*/
	public MetaData MetaData ~ delete _;

	/**
	Constructor for initialization of the onnx session
	*/
    public this(String modelPath, SessionOptions options = default)
    {
		var options;
		if (options == default)
			options = new SessionOptions();

		Options = options;

		options.Setup();
        Session = null;

		var alloc = new StdAllocator();
		
		char16* modelBuffer = (char16*)alloc.Alloc(sizeof(char16) * (modelPath.Length + 1), sizeof(char16));

		for (int i = 0; i < modelPath.Length; i++)
		    modelBuffer[i] = modelPath[i];

		modelBuffer[modelPath.Length] = 0;

        var status = Ort.CreateSession(options.Env, modelBuffer, options.Options, &Session);
        Status.VerifySuccess(Ort, status);

		alloc.Free(modelBuffer);

		MetaData = Helpers.DumpIOWithShapes(this);
    }

	/**
	Constructor for initialization of the onnx session
	*/
	public this(uint8[] model, SessionOptions options = default)
	{
		if (model.Count <= 0)
		{
			Console.WriteLine("Error! Model Byte Length is equal to or less than 0");
			return;
		}

		var options;
		if (options == default)
			options = new SessionOptions();

		Options = options;

		options.Setup();
	    Session = null;

	    var status = Ort.CreateSessionFromArray(Options.Env, model.Ptr, (uint64)(model.Count), Options.Options, &Session);
	    Status.VerifySuccess(Ort, status);

		MetaData = Helpers.DumpIOWithShapes(this);
	}

	/**
	Interface for creating a tensor
	*/
	public OrtValue* CreateTensor(float* data, int64* shape, int32 rank,
		ONNXTensorElementDataType dataType = ONNXTensorElementDataType.ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT)
	{
	    Helpers.InitCpuMemInfo(ref _cpuMemInfo, Ort);

	    OrtValue* tensor = null;
	    uint64 bytes = (uint64)(sizeof(float) * Helpers.ComputeNumElements(shape, rank));

	    Ort.CreateTensorWithDataAsOrtValue(
		    _cpuMemInfo,
		    data,
		    bytes,
		    shape,
		    (uint64)rank,
		    dataType,
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
	    var status = Ort.Run(
	        Session,
	        null,
	        inputNames,
	        inputValues,
	        inputCount,
	        outputNames,
	        outputCount,
	        outputValues
	    );
	    Status.VerifySuccess(Ort, status);
	}

	/**
	Simple interface for creating a tensor from a list
	*/
	public OrtValue* CreateTensor(List<float> dataList, int64* shape, int32 rank,
		ONNXTensorElementDataType dataType = ONNXTensorElementDataType.ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT)
	{
	    var alloc = new StdAllocator();
	    float* buf = (float*)alloc.Alloc(sizeof(float) * dataList.Count, sizeof(float));

	    for (int i = 0; i < dataList.Count; i++)
	        buf[i] = dataList[i];

	    OrtValue* t = CreateTensor(buf, shape, rank, dataType);
	    return t;
	}

	/**
	Cleans up the inference session
	*/
	public ~this()
	{
		if (Session != null) Ort.ReleaseSession(Session);
		if (Options.Env != null) Ort.ReleaseEnv(Options.Env);
		if (_cpuMemInfo != null) Ort.ReleaseMemoryInfo(_cpuMemInfo);
		if (Options != null) delete Options;
	}
}
