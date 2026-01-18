using System;
using OnnxRuntime.Classes.Native.Structs;
using OnnxRuntime.Classes.Native.Enums;

namespace OnnxRuntime.Classes.Native;

typealias OrtEnv = void;
typealias OrtSession = void;
typealias OrtSessionOptions = void;
typealias OrtRunOptions = void;
typealias OrtValue = void;
typealias OrtMemoryInfo = void;
typealias OrtStatus = void;

public static class OrtRuntime
{
	[Import("onnxruntime.dll"), CLink]
	public static extern OrtApiBase* OrtGetApiBase();

	const int32 ORT_API_VERSION = 16;

    public static OrtApi* Api;
	public static OrtApiBase* BaseApi;

    public static void Init()
    {
        BaseApi = OrtGetApiBase();
        Api = BaseApi.GetApi(ORT_API_VERSION);
    }

    public static void Check(OrtStatus* status)
    {
        if (status == null) return;
		char8* msg = Api.GetErrorMessage(status);
		Runtime.FatalError(scope String(msg));
    }
}