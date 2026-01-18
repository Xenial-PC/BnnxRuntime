using System;
using OnnxRuntime.Classes.Native.Structs;
using OnnxRuntime.Classes.Native.Enums;

namespace OnnxRuntime.Classes.Native;

public class OrtSessionWrapper
{
    OrtEnv* _env;
    OrtSession* _session;
    OrtSessionOptions* _options;
    OrtMemoryInfo* _cpuMem;

    public this(String modelPath)
    {
        OrtRuntime.Init();

        OrtRuntime.Check(
            OrtRuntime.Api.CreateEnv(
                OrtLoggingLevel.Warning,
                "beef",
                &_env));

        OrtRuntime.Check(
            OrtRuntime.Api.CreateSessionOptions(&_options));

        OrtRuntime.Check(
            OrtRuntime.Api.CreateSession(
                _env,
                modelPath.CStr(),
                _options,
                &_session));

        OrtRuntime.Check(
            OrtRuntime.Api.CreateCpuMemoryInfo(
                OrtAllocatorType.Arena,
                OrtMemType.Default,
                &_cpuMem));
    }

    public OrtValue* CreateTensor<T>(
        T* data,
        uint64 count,
        int64* shape,
        uint64 shapeLen,
        int32 elementType)
    {
        OrtValue* value = null;

        OrtRuntime.Check(
            OrtRuntime.Api.CreateTensorWithDataAsOrtValue(
                _cpuMem,
                data,
                (uint64)sizeof(T) * (uint64)count,
                shape,
                shapeLen,
                elementType,
                &value));

        return value;
    }

   	public OrtValue* Run(
	    char8* inputName,
	    OrtValue* input,
	    char8* outputName)
	{
	    OrtValue* output = null;

	    char8*[1] inNames;
	    inNames[0] = inputName;

	    OrtValue*[1] inVals;
	    inVals[0] = input;

	    char8*[1] outNames;
	    outNames[0] = outputName;

	    OrtRuntime.Check(
	        OrtRuntime.Api.Run(
	            _session,
	            null,
	            &inNames[0],
	            &inVals[0],
	            1,
	            &outNames[0],
	            1,
	            &output));

	    return output;
	}

    public ~this()
    {
        if (_session != null) OrtRuntime.Api.ReleaseSession(_session);
        if (_options != null) OrtRuntime.Api.ReleaseSessionOptions(_options);
        if (_env != null) OrtRuntime.Api.ReleaseEnv(_env);
    }
}