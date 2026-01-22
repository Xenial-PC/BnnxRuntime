using System;
using System.Interop;

namespace OnnxRuntime.Native;

public static class Imports
{
	[CLink, Import("onnxruntime.dll"), CallingConvention(.Stdcall)]
	public static extern OrtApiBase* OrtGetApiBase();

	[CLink, Import("onnxruntime.dll"), CallingConvention(.Stdcall)]
	public static extern OrtStatus* OrtSessionOptionsAppendExecutionProvider_CUDA(OrtSessionOptions* options, int32 deviceId);

	[CLink, Import("onnxruntime.dll"), CallingConvention(.Stdcall)]
	public static extern OrtStatus* OrtSessionOptionsAppendExecutionProvider_ROCM(OrtSessionOptions* options, int32 deviceId);

	[CLink, Import("onnxruntime.dll"), CallingConvention(.Stdcall)]
	public static extern OrtStatus* OrtSessionOptionsAppendExecutionProvider_MIGraphX(OrtSessionOptions* options, int32 deviceId);

	[CLink, Import("onnxruntime.dll"), CallingConvention(.Stdcall)]
	public static extern OrtStatus* OrtSessionOptionsAppendExecutionProvider_Dnnl(OrtSessionOptions* options, int32 useArena);

	[CLink, Import("onnxruntime.dll"), CallingConvention(.Stdcall)]
	public static extern OrtStatus* OrtSessionOptionsAppendExecutionProvider_Tensorrt(OrtSessionOptions* options, int32 deviceId);

	[CLink, Import("onnxruntime.dll"), CallingConvention(.Stdcall)]
	public static extern OrtStatus* OrtSessionOptionsAppendExecutionProvider_DML(OrtSessionOptions* options, int32 deviceId);
}