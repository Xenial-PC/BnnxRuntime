using System;
using OnnxRuntime.Classes.Native.Structs;
using OnnxRuntime.Classes.Native.Enums;
using OnnxRuntime.Classes.Native;

namespace OnnxRuntime.Classes;

public class OnnxApi
{
	// Access to the run-time API
	public OrtApi* Runtime;

	// Constructs and initializes the base API
	public this()
	{
		OrtRuntime.Init();
		Runtime = OrtRuntime.Api;
	}

	// Gets the onnx version
	public String GetVersionString()
	{
		return new String(OrtRuntime.BaseApi.GetVersionString()) ;
	}

	// Creates the inference session environment
	public void CreateEnv(OrtLoggingLevel logLevel, char8* logId, void** outEnv)
	{
		Runtime.CreateEnv(logLevel, logId, outEnv);
	}
}