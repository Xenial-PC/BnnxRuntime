using System;
using System.Collections;
using OnnxRuntime.Native;

namespace OnnxRuntime.Session;

/**
Holds helper functions for ease of use
*/
public class Helpers
{
	/**
	Dumps the onnx models IO Names
	*/
	public static MetaData DumpIONames(InferenceSession session)
	{
		var iClass = new List<YoloClass>();
		var oClass = new List<YoloClass>();

	    size_t inCount = 0;
	    size_t outCount = 0;

	    var st = session.Ort.SessionGetInputCount(session.Session, &inCount);
	    if (Status.VerifySuccess(session.Options.Ort, st)) return null;

	    st = session.Ort.SessionGetOutputCount(session.Session, &outCount);
	    if (Status.VerifySuccess(session.Options.Ort, st)) return null;

	    OrtAllocator* alloc = null;
	    st = session.Ort.GetAllocatorWithDefaultOptions(&alloc);
	    if (Status.VerifySuccess(session.Options.Ort, st)) return null;

	    for (uint64 i = 0; i < inCount; i++)
	    {
	        char8* name = null;
	        st = session.Ort.SessionGetInputName(session.Session, i, alloc, &name);
	        if (Status.VerifySuccess(session.Options.Ort, st)) continue;

	        if (name == null) continue;

			iClass.Add(new YoloClass()
			{
				Class = (int)i,
				Name = scope String(name),
			});
	        alloc.Free(alloc, name);
	    }

	    for (uint64 i = 0; i < outCount; i++)
	    {
	        char8* name = null;
	        st = session.Ort.SessionGetOutputName(session.Session, i, alloc, &name);
	        if (Status.VerifySuccess(session.Options.Ort, st)) continue;

	        if (name == null) continue;

			oClass.Add(new YoloClass()
			{
				Class = (int)i,
				Name = scope String(name),
			});
	        alloc.Free(alloc, name);
	    }

		var metaData = new MetaData()
		{
			ICount = inCount,
			OCount = outCount,
			Inputs = iClass,
			Outputs = oClass
		};

		return metaData;
	}

	/**
	Dumps the models IO with Shapes
	*/
	public static MetaData DumpIOWithShapes(InferenceSession session)
	{
		var iClass = new List<YoloClass>();
		var oClass = new List<YoloClass>();
		
	    size_t inCount = 0;
	    size_t outCount = 0;

	    var st = session.Ort.SessionGetInputCount(session.Session, &inCount);
	    if (Status.VerifySuccess(session.Options.Ort, st)) return null;

	    st = session.Ort.SessionGetOutputCount(session.Session, &outCount);
	    if (Status.VerifySuccess(session.Options.Ort, st)) return null;

	    OrtAllocator* alloc = null;
	    st = session.Ort.GetAllocatorWithDefaultOptions(&alloc);
	    if (Status.VerifySuccess(session.Options.Ort, st)) return null;

	    for (size_t i = 0; i < inCount; i++)
	    {
	        char8* name = null;
	        st = session.Ort.SessionGetInputName(session.Session, i, alloc, &name);
	        if (Status.VerifySuccess(session.Options.Ort, st)) continue;

	        OrtTypeInfo* typeInfo = null;
	        st = session.Ort.SessionGetInputTypeInfo(session.Session, i, &typeInfo);
	        if (Status.VerifySuccess(session.Options.Ort, st)) continue;

	        OrtTensorTypeAndShapeInfo* tinfo = null;
	        st = session.Ort.CastTypeInfoToTensorInfo(typeInfo, &tinfo);
	        if (Status.VerifySuccess(session.Options.Ort, st)) continue;

			ONNXTensorElementDataType onnxTensorData = default;
	        session.Ort.GetTensorElementType(tinfo, &onnxTensorData);

	        size_t rank = 0;
	        st = session.Ort.GetDimensionsCount(tinfo, &rank);
	        if (Status.VerifySuccess(session.Options.Ort, st)) continue;

	        int64* dims = scope int64[(int)rank]*;
	        st = session.Ort.GetDimensions(tinfo, dims, rank);
	        if (Status.VerifySuccess(session.Options.Ort, st)) continue;

			var ranks = new List<int>();
	        for (int r = 0; r < (int)rank; r++)
				ranks.Add(dims[r]);

			iClass.Add(new YoloClass()
			{
				Name = scope String(name),
				Type = onnxTensorData,
				Shape = ranks,
				Dimensions = dims,
				Class = (int)i
			});

	        session.Ort.ReleaseTypeInfo(typeInfo);
	        alloc.Free(alloc, name);
	    }

	    for (size_t i = 0; i < outCount; i++)
	    {
	        char8* name = null;
	        st = session.Ort.SessionGetOutputName(session.Session, i, alloc, &name);
	        if (Status.VerifySuccess(session.Options.Ort, st)) continue;

	        OrtTypeInfo* typeInfo = null;
	        st = session.Ort.SessionGetOutputTypeInfo(session.Session, i, &typeInfo);
	        if (Status.VerifySuccess(session.Options.Ort, st)) continue;

	        OrtTensorTypeAndShapeInfo* tinfo = null;
	        st = session.Ort.CastTypeInfoToTensorInfo(typeInfo, &tinfo);
	        if (Status.VerifySuccess(session.Options.Ort, st)) continue;

			ONNXTensorElementDataType onnxTensorData = default;
	        session.Ort.GetTensorElementType(tinfo, &onnxTensorData);

	        size_t rank = 0;
	        st = session.Ort.GetDimensionsCount(tinfo, &rank);
	        if (Status.VerifySuccess(session.Options.Ort, st)) continue;

	        int64* dims = scope int64[(int)rank]*;
	        st = session.Ort.GetDimensions(tinfo, dims, rank);
	        if (Status.VerifySuccess(session.Options.Ort, st)) continue;

			var ranks = new List<int>();
			for (int r = 0; r < (int)rank; r++)
				ranks.Add(dims[r]);

			oClass.Add(new YoloClass()
			{
				Name = scope String(name),
				Type = onnxTensorData,
				Shape = ranks,
				Class = (int)i
			});

	        session.Ort.ReleaseTypeInfo(typeInfo);
	        alloc.Free(alloc, name);
	    }

		var metaData = new MetaData()
		{
			ICount = inCount,
			OCount = outCount,
			Inputs = iClass,
			Outputs = oClass
		};

		return metaData;
	}
	
	/**
	Computes the number of elements for the shape
	*/
	public static int64 ComputeNumElements(int64* shape, int32 rank)
	{
	    int64 count = 1;
	    for (int i = 0; i < rank; i++)
	        count *= shape[i];
	    return count;
	}
	
	/**
	Initializes cpu memory information
	*/
	public static void InitCpuMemInfo(ref OrtMemoryInfo* cpuMemInfo, OrtApi* ort)
	{
	    if (cpuMemInfo != null) return;
	    ort.CreateCpuMemoryInfo(
			OrtAllocatorType.OrtArenaAllocator,
			OrtMemType.OrtMemTypeDefault,
			&cpuMemInfo);
	}

	/**
	Returns tensor mutable data
	*/
	public static float* GetTensorData(OrtValue* tensor, OrtApi* ort)
	{
	    float* data = null;
	    ort.GetTensorMutableData(tensor, (void**)&data);
	    return data;
	}
}