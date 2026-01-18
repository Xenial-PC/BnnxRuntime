using System;
using OnnxRuntime.Classes.Native.Enums;
using OnnxRuntime.Classes.Native;

namespace OnnxRuntime.Classes.Native.Structs;

[CRepr]
public struct OrtApi
{
    public delegate OrtStatus* CreateEnvFn(
        OrtLoggingLevel logLevel,
        char8* logId,
        OrtEnv** outEnv);

    public delegate OrtStatus* CreateSessionOptionsFn(
        OrtSessionOptions** outOptions);

    public delegate OrtStatus* CreateSessionFn(
        OrtEnv* env,
        char8* modelPath,
        OrtSessionOptions* options,
        OrtSession** outSession);

    public delegate void ReleaseEnvFn(OrtEnv* env);
    public delegate void ReleaseSessionFn(OrtSession* session);
    public delegate void ReleaseSessionOptionsFn(OrtSessionOptions* options);

    public delegate OrtStatus* CreateCpuMemoryInfoFn(
        OrtAllocatorType type,
        OrtMemType memType,
        OrtMemoryInfo** outInfo);

    public delegate OrtStatus* CreateTensorWithDataAsOrtValueFn(
        OrtMemoryInfo* memInfo,
        void* data,
        uint64 dataSize,
        int64* shape,
        uint64 shapeLen,
        int32 elementType,
        OrtValue** outValue);

    public delegate OrtStatus* RunFn(
        OrtSession* session,
        OrtRunOptions* runOptions,
        char8** inputNames,
        OrtValue** inputValues,
        uint64 inputCount,
        char8** outputNames,
        uint64 outputCount,
        OrtValue** outputValues);

    public delegate char8* GetErrorMessageFn(OrtStatus* status);
    public delegate void ReleaseStatusFn(OrtStatus* status);

    public CreateEnvFn CreateEnv;
    public CreateSessionOptionsFn CreateSessionOptions;
    public CreateSessionFn CreateSession;

    public ReleaseEnvFn ReleaseEnv;
    public ReleaseSessionFn ReleaseSession;
    public ReleaseSessionOptionsFn ReleaseSessionOptions;

    public CreateCpuMemoryInfoFn CreateCpuMemoryInfo;
    public CreateTensorWithDataAsOrtValueFn CreateTensorWithDataAsOrtValue;

    public RunFn Run;

    public GetErrorMessageFn GetErrorMessage;
    public ReleaseStatusFn ReleaseStatus;
}