using System;
using System.Interop;
using System.Collections;
using OnnxRuntime.Native;

namespace OnnxRuntime;

/**
Contains all info about the session options for the current session
*/
public class SessionOptions
{
	/**
	Onnx ORT Environment
	*/
	public OrtEnv* Env ~ delete _;

	/**
	Onnx ORT Session
	*/
	public OrtSession* Session ~ delete _;

	/**
	Onnx ORT API
	*/
	public OrtApi* Ort ~ delete _;

	/**
	CPU Memory information
	*/
	private OrtMemoryInfo* CpuMemInfo ~ delete _;

	/**
	Session options
	*/
	public OrtSessionOptions* Options ~ delete _;

	/**
	Level the graph is optimized on load
	*/
	public GraphOptimizationLevel GraphOptimizationLevel = OnnxRuntime.Native.GraphOptimizationLevel.ORT_ENABLE_ALL;

	/**
	The mode in which the model will execute
	*/
	public ExecutionMode ExecutionMode = OnnxRuntime.Native.ExecutionMode.ORT_PARALLEL;

	/**
	Number of threads the interOp has
	*/
	public int32 InterOpNumThreads = 0;

	/**
	Number of threads the InteraOp has
	*/
	public int32 IntraOpNumThreads = 0;

	/**
	Enables CPU bound memory
	*/
	public bool EnableCpuMemArena = false;

	/**
	Enables memory pattern recognition
	*/
	public bool EnableMemoryPattern = false;

	/**
	Device ID passed down to the providers
	*/
	public int32 DeviceId = 0;
	
	/**
	Desired ORT API Version
	*/
	public const int32 ORT_API_VERSION = 24;

	/**
	Sets up the base needed session options
	*/
	public this(OrtLoggingLevel loggingLevel = OrtLoggingLevel.ORT_LOGGING_LEVEL_ERROR)
	{
		var apiBase = Imports.OrtGetApiBase();
		Ort = apiBase.GetApi(ORT_API_VERSION);

		Env = null;
		var status = Ort.CreateEnv(loggingLevel, "InferenceSession", &Env);
		Status.VerifySuccess(Ort, status);

		status = Ort.CreateSessionOptions(&(Options));
		Status.VerifySuccess(Ort, status);
	}

	/**
	Appends DirectML provider
	*/
	public OrtStatus* AppendExecutionProvider_DML(int32 deviceId = 0)
	{
		DeviceId = deviceId;
		return Imports.OrtSessionOptionsAppendExecutionProvider_DML(Options, DeviceId);
	}

	/**
	Appends CUDA provider
	*/
	public OrtStatus* AppendExecutionProvider_CUDA(int32 deviceId = 0)
	{
		DeviceId = deviceId;
		return Imports.OrtSessionOptionsAppendExecutionProvider_CUDA(Options, DeviceId);
	}

	/**
	Appends TensorRT provider
	*/
	public OrtStatus* AppendExecutionProvider_TensorRT(int32 deviceId = 0)
	{
		DeviceId = deviceId;
		return Imports.OrtSessionOptionsAppendExecutionProvider_Tensorrt(Options, DeviceId);
	}

	/**
	Appends ROCM provider
	*/
	public OrtStatus* AppendExecutionProvider_ROCM(int32 deviceId = 0)
	{
		DeviceId = deviceId;
		return Imports.OrtSessionOptionsAppendExecutionProvider_ROCM(Options, DeviceId);
	}

	/**
	Appends MIGraphX provider
	*/
	public OrtStatus* AppendExecutionProvider_MIGraphX(int32 deviceId = 0)
	{
		DeviceId = deviceId;
		return Imports.OrtSessionOptionsAppendExecutionProvider_MIGraphX(Options, DeviceId);
	}

	/**
	Appends Dnnl provider
	*/
	public OrtStatus* AppendExecutionProvider_Dnnl(int32 deviceId = 0)
	{
		DeviceId = deviceId;
		return Imports.OrtSessionOptionsAppendExecutionProvider_Dnnl(Options, DeviceId);
	}

	/**
	Setups the settings on load of a model
	*/
	public void Setup()
	{
		if (EnableCpuMemArena) Status.VerifySuccess(Ort, Ort.EnableCpuMemArena(Options));
		else Status.VerifySuccess(Ort, Ort.DisableCpuMemArena(Options));

		if (EnableMemoryPattern) Status.VerifySuccess(Ort, Ort.EnableMemPattern(Options));
		else Status.VerifySuccess(Ort, Ort.DisableMemPattern(Options));

		Status.VerifySuccess(Ort, Ort.SetSessionGraphOptimizationLevel(Options, GraphOptimizationLevel));
		Status.VerifySuccess(Ort, Ort.SetSessionExecutionMode(Options, ExecutionMode));

		if (InterOpNumThreads > 0) Status.VerifySuccess(Ort, Ort.SetInterOpNumThreads(Options, InterOpNumThreads));
		if (IntraOpNumThreads > 0) Status.VerifySuccess(Ort, Ort.SetIntraOpNumThreads(Options, IntraOpNumThreads));
	}

	/**
	Cleans up the session options on deconstruction
	*/
	public ~this()
	{
		if (Options != null) Ort.ReleaseSessionOptions(Options);
	}
}