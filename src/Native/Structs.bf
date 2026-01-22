using System;
using System.Interop;

namespace OnnxRuntime.Native;

#if BF_64_BIT
typealias size_t = uint64;
#else
typealias size_t = uint;
#endif

[CRepr]
public struct OrtEnv
{
	public this()
	{
	}
}

[CRepr]
public struct OrtStatus
{
	public this()
	{
	}
}

[CRepr]
public struct OrtMemoryInfo
{
	public this()
	{
	}
}

[CRepr]
public struct OrtIoBinding
{
	public this()
	{
	}
}

[CRepr]
public struct OrtSession
{
	public this()
	{
	}
}

[CRepr]
public struct OrtValue
{
	public this()
	{
	}
}

[CRepr]
public struct OrtRunOptions
{
	public this()
	{
	}
}

[CRepr]
public struct OrtTypeInfo
{
	public this()
	{
	}
}

[CRepr]
public struct OrtTensorTypeAndShapeInfo
{
	public this()
	{
	}
}

[CRepr]
public struct OrtMapTypeInfo
{
	public this()
	{
	}
}

[CRepr]
public struct OrtSequenceTypeInfo
{
	public this()
	{
	}
}

[CRepr]
public struct OrtOptionalTypeInfo
{
	public this()
	{
	}
}

[CRepr]
public struct OrtSessionOptions
{
	public this()
	{
	}
}

[CRepr]
public struct OrtCustomOpDomain
{
	public this()
	{
	}
}

[CRepr]
public struct OrtModelMetadata
{
	public this()
	{
	}
}

[CRepr]
public struct OrtThreadPoolParams
{
	public this()
	{
	}
}

[CRepr]
public struct OrtThreadingOptions
{
	public this()
	{
	}
}

[CRepr]
public struct OrtArenaCfg
{
	public this()
	{
	}
}

[CRepr]
public struct OrtPrepackedWeightsContainer
{
	public this()
	{
	}
}

[CRepr]
public struct OrtTensorRTProviderOptionsV2
{
	public this()
	{
	}
}

[CRepr]
public struct OrtNvTensorRtRtxProviderOptions
{
	public this()
	{
	}
}

[CRepr]
public struct OrtCUDAProviderOptionsV2
{
	public this()
	{
	}
}

[CRepr]
public struct OrtCANNProviderOptions
{
	public this()
	{
	}
}

[CRepr]
public struct OrtDnnlProviderOptions
{
	public this()
	{
	}
}

[CRepr]
public struct OrtOp
{
	public this()
	{
	}
}

[CRepr]
public struct OrtOpAttr
{
	public this()
	{
	}
}

[CRepr]
public struct OrtLogger
{
	public this()
	{
	}
}

[CRepr]
public struct OrtShapeInferContext
{
	public this()
	{
	}
}

[CRepr]
public struct OrtLoraAdapter
{
	public this()
	{
	}
}

[CRepr]
public struct OrtValueInfo
{
	public this()
	{
	}
}

[CRepr]
public struct OrtNode
{
	public this()
	{
	}
}

[CRepr]
public struct OrtGraph
{
	public this()
	{
	}
}

[CRepr]
public struct OrtModel
{
	public this()
	{
	}
}

[CRepr]
public struct OrtModelCompilationOptions
{
	public this()
	{
	}
}

[CRepr]
public struct OrtHardwareDevice
{
	public this()
	{
	}
}

[CRepr]
public struct OrtEpDevice
{
	public this()
	{
	}
}

[CRepr]
public struct OrtKeyValuePairs
{
	public this()
	{
	}
}

[CRepr]
public struct OrtSyncStream
{
	public this()
	{
	}
}

[CRepr]
public struct OrtExternalInitializerInfo
{
	public this()
	{
	}
}

[CRepr]
public struct OrtExternalResourceImporter
{
	public this()
	{
	}
}

[CRepr]
public struct OrtDeviceEpIncompatibilityDetails
{
	public this()
	{
	}
}

[CRepr]
public struct OrtEpAssignedSubgraph
{
	public this()
	{
	}
}

[CRepr]
public struct OrtEpAssignedNode
{
	public this()
	{
	}
}

[CRepr]
public struct OrtAllocator
{
	public uint32 Version;

	public AllocFn Alloc;

	public FreeFn Free;

	public InfoFn Info;

	public ReserveFn Reserve;

	public GetStatsFn GetStats;

	public AllocOnStreamFn AllocOnStream;

	public this(uint32 version, AllocFn Alloc, FreeFn Free, InfoFn Info, ReserveFn Reserve, GetStatsFn GetStats, AllocOnStreamFn AllocOnStream)
	{
		this.Version = version;
		this.Alloc = Alloc;
		this.Free = Free;
		this.Info = Info;
		this.Reserve = Reserve;
		this.GetStats = GetStats;
		this.AllocOnStream = AllocOnStream;
	}
}

[CRepr]
public struct OrtKernelInfo
{
	public this()
	{
	}
}

[CRepr]
public struct OrtKernelContext
{
	public this()
	{
	}
}

[CRepr]
public struct OrtTrainingApi
{
	public this()
	{
	}
}

[CRepr]
public struct OrtCUDAProviderOptions
{
	public int32 DeviceId;

	public OrtCudnnConvAlgoSearch CudnnConvAlgoSearch;

	public uint64 GpuMemLimit;

	public int32 ArenaExtendStrategy;

	public int32 DoCopyInDefaultStream;

	public int32 HasUserComputeStream;

	public void UserComputeStream;

	public OrtArenaCfg DefaultMemoryArenaCfg;

	public int32 TunableOpEnable;

	public int32 TunableOpTuningEnable;

	public int32 TunableOpMaxTuningDurationMs;

	public this(int32 deviceId, OrtCudnnConvAlgoSearch cudnnConvAlgoSearch, uint64 gpuMemLimit, int32 arenaExtendStrategy, int32 doCopyInDefaultStream, int32 hasUserComputeStream, void userComputeStream, OrtArenaCfg defaultMemoryArenaCfg, int32 tunableOpEnable, int32 tunableOpTuningEnable, int32 tunableOpMaxTuningDurationMs)
	{
		this.DeviceId = deviceId;
		this.CudnnConvAlgoSearch = cudnnConvAlgoSearch;
		this.GpuMemLimit = gpuMemLimit;
		this.ArenaExtendStrategy = arenaExtendStrategy;
		this.DoCopyInDefaultStream = doCopyInDefaultStream;
		this.HasUserComputeStream = hasUserComputeStream;
		this.UserComputeStream = userComputeStream;
		this.DefaultMemoryArenaCfg = defaultMemoryArenaCfg;
		this.TunableOpEnable = tunableOpEnable;
		this.TunableOpTuningEnable = tunableOpTuningEnable;
		this.TunableOpMaxTuningDurationMs = tunableOpMaxTuningDurationMs;
	}
}

[CRepr]
public struct OrtROCMProviderOptions
{
	public int32 DeviceId;

	public int32 MiopenConvExhaustiveSearch;

	public uint64 GpuMemLimit;

	public int32 ArenaExtendStrategy;

	public int32 DoCopyInDefaultStream;

	public int32 HasUserComputeStream;

	public void UserComputeStream;

	public OrtArenaCfg DefaultMemoryArenaCfg;

	public int32 EnableHipGraph;

	public int32 TunableOpEnable;

	public int32 TunableOpTuningEnable;

	public int32 TunableOpMaxTuningDurationMs;

	public this(int32 deviceId, int32 miopenConvExhaustiveSearch, uint64 gpuMemLimit, int32 arenaExtendStrategy, int32 doCopyInDefaultStream, int32 hasUserComputeStream, void userComputeStream, OrtArenaCfg defaultMemoryArenaCfg, int32 enableHipGraph, int32 tunableOpEnable, int32 tunableOpTuningEnable, int32 tunableOpMaxTuningDurationMs)
	{
		this.DeviceId = deviceId;
		this.MiopenConvExhaustiveSearch = miopenConvExhaustiveSearch;
		this.GpuMemLimit = gpuMemLimit;
		this.ArenaExtendStrategy = arenaExtendStrategy;
		this.DoCopyInDefaultStream = doCopyInDefaultStream;
		this.HasUserComputeStream = hasUserComputeStream;
		this.UserComputeStream = userComputeStream;
		this.DefaultMemoryArenaCfg = defaultMemoryArenaCfg;
		this.EnableHipGraph = enableHipGraph;
		this.TunableOpEnable = tunableOpEnable;
		this.TunableOpTuningEnable = tunableOpTuningEnable;
		this.TunableOpMaxTuningDurationMs = tunableOpMaxTuningDurationMs;
	}
}

[CRepr]
public struct OrtTensorRTProviderOptions
{
	public int32 DeviceId;

	public int32 HasUserComputeStream;

	public void UserComputeStream;

	public int32 TrtMaxPartitionIterations;

	public int32 TrtMinSubgraphSize;

	public uint64 TrtMaxWorkspaceSize;

	public int32 TrtFp16Enable;

	public int32 TrtInt8Enable;

	public char8 TrtInt8CalibrationTableName;

	public int32 TrtInt8UseNativeCalibrationTable;

	public int32 TrtDlaEnable;

	public int32 TrtDlaCore;

	public int32 TrtDumpSubgraphs;

	public int32 TrtEngineCacheEnable;

	public char8 TrtEngineCachePath;

	public int32 TrtEngineDecryptionEnable;

	public char8 TrtEngineDecryptionLibPath;

	public int32 TrtForceSequentialEngineBuild;

	public this(int32 deviceId, int32 hasUserComputeStream, void userComputeStream, int32 trtMaxPartitionIterations, int32 trtMinSubgraphSize, uint64 trtMaxWorkspaceSize, int32 trtFp16Enable, int32 trtInt8Enable, char8 trtInt8CalibrationTableName, int32 trtInt8UseNativeCalibrationTable, int32 trtDlaEnable, int32 trtDlaCore, int32 trtDumpSubgraphs, int32 trtEngineCacheEnable, char8 trtEngineCachePath, int32 trtEngineDecryptionEnable, char8 trtEngineDecryptionLibPath, int32 trtForceSequentialEngineBuild)
	{
		this.DeviceId = deviceId;
		this.HasUserComputeStream = hasUserComputeStream;
		this.UserComputeStream = userComputeStream;
		this.TrtMaxPartitionIterations = trtMaxPartitionIterations;
		this.TrtMinSubgraphSize = trtMinSubgraphSize;
		this.TrtMaxWorkspaceSize = trtMaxWorkspaceSize;
		this.TrtFp16Enable = trtFp16Enable;
		this.TrtInt8Enable = trtInt8Enable;
		this.TrtInt8CalibrationTableName = trtInt8CalibrationTableName;
		this.TrtInt8UseNativeCalibrationTable = trtInt8UseNativeCalibrationTable;
		this.TrtDlaEnable = trtDlaEnable;
		this.TrtDlaCore = trtDlaCore;
		this.TrtDumpSubgraphs = trtDumpSubgraphs;
		this.TrtEngineCacheEnable = trtEngineCacheEnable;
		this.TrtEngineCachePath = trtEngineCachePath;
		this.TrtEngineDecryptionEnable = trtEngineDecryptionEnable;
		this.TrtEngineDecryptionLibPath = trtEngineDecryptionLibPath;
		this.TrtForceSequentialEngineBuild = trtForceSequentialEngineBuild;
	}
}

[CRepr]
public struct OrtMIGraphXProviderOptions
{
	public int32 DeviceId;

	public int32 MigraphxFp16Enable;

	public int32 MigraphxFp8Enable;

	public int32 MigraphxInt8Enable;

	public int32 MigraphxUseNativeCalibrationTable;

	public char8 MigraphxInt8CalibrationTableName;

	public int32 MigraphxSaveCompiledModel;

	public char8 MigraphxSaveModelPath;

	public int32 MigraphxLoadCompiledModel;

	public char8 MigraphxLoadModelPath;

	public bool MigraphxExhaustiveTune;

	public uint64 MigraphxMemLimit;

	public int32 MigraphxArenaExtendStrategy;

	public this(int32 deviceId, int32 migraphxFp16Enable, int32 migraphxFp8Enable, int32 migraphxInt8Enable, int32 migraphxUseNativeCalibrationTable, char8 migraphxInt8CalibrationTableName, int32 migraphxSaveCompiledModel, char8 migraphxSaveModelPath, int32 migraphxLoadCompiledModel, char8 migraphxLoadModelPath, bool migraphxExhaustiveTune, uint64 migraphxMemLimit, int32 migraphxArenaExtendStrategy)
	{
		this.DeviceId = deviceId;
		this.MigraphxFp16Enable = migraphxFp16Enable;
		this.MigraphxFp8Enable = migraphxFp8Enable;
		this.MigraphxInt8Enable = migraphxInt8Enable;
		this.MigraphxUseNativeCalibrationTable = migraphxUseNativeCalibrationTable;
		this.MigraphxInt8CalibrationTableName = migraphxInt8CalibrationTableName;
		this.MigraphxSaveCompiledModel = migraphxSaveCompiledModel;
		this.MigraphxSaveModelPath = migraphxSaveModelPath;
		this.MigraphxLoadCompiledModel = migraphxLoadCompiledModel;
		this.MigraphxLoadModelPath = migraphxLoadModelPath;
		this.MigraphxExhaustiveTune = migraphxExhaustiveTune;
		this.MigraphxMemLimit = migraphxMemLimit;
		this.MigraphxArenaExtendStrategy = migraphxArenaExtendStrategy;
	}
}

[CRepr]
public struct OrtOpenVINOProviderOptions
{
	public char8 DeviceType;

	public uint8 EnableNpuFastCompile;

	public char8 DeviceId;

	public uint64 NumOfThreads;

	public char8 CacheDir;

	public void Context;

	public uint8 EnableOpenclThrottling;

	public uint8 EnableDynamicShapes;

	public this(char8 deviceType, uint8 enableNpuFastCompile, char8 deviceId, uint64 numOfThreads, char8 cacheDir, void context, uint8 enableOpenclThrottling, uint8 enableDynamicShapes)
	{
		this.DeviceType = deviceType;
		this.EnableNpuFastCompile = enableNpuFastCompile;
		this.DeviceId = deviceId;
		this.NumOfThreads = numOfThreads;
		this.CacheDir = cacheDir;
		this.Context = context;
		this.EnableOpenclThrottling = enableOpenclThrottling;
		this.EnableDynamicShapes = enableDynamicShapes;
	}
}

[CRepr]
public struct OrtApiBase
{
	public GetApiFn GetApi;

	public GetVersionStringFn GetVersionString;

	public this(GetApiFn GetApi, GetVersionStringFn GetVersionString)
	{
		this.GetApi = GetApi;
		this.GetVersionString = GetVersionString;
	}
}

[CRepr]
public struct OrtCustomHandleType
{
	public char8 PlaceHolder;

	public this(char8 PlaceHolder)
	{
		this.PlaceHolder = PlaceHolder;
	}
}

[CRepr]
public struct OrtExternalMemoryDescriptor
{
	public uint32 Version;

	public OrtExternalMemoryHandleType HandleType;

	public void NativeHandle;

	public uint64 SizeBytes;

	public uint64 OffsetBytes;

	public this(uint32 version, OrtExternalMemoryHandleType handleType, void nativeHandle, uint64 sizeBytes, uint64 offsetBytes)
	{
		this.Version = version;
		this.HandleType = handleType;
		this.NativeHandle = nativeHandle;
		this.SizeBytes = sizeBytes;
		this.OffsetBytes = offsetBytes;
	}
}

[CRepr]
public struct OrtExternalSemaphoreDescriptor
{
	public uint32 Version;

	public OrtExternalSemaphoreType Type;

	public void NativeHandle;

	public this(uint32 version, OrtExternalSemaphoreType type, void nativeHandle)
	{
		this.Version = version;
		this.Type = type;
		this.NativeHandle = nativeHandle;
	}
}

[CRepr]
public struct OrtExternalTensorDescriptor
{
	public uint32 Version;

	public ONNXTensorElementDataType ElementType;

	public int64 Shape;

	public uint64 Rank;

	public uint64 OffsetBytes;

	public this(uint32 version, ONNXTensorElementDataType elementType, int64 shape, uint64 rank, uint64 offsetBytes)
	{
		this.Version = version;
		this.ElementType = elementType;
		this.Shape = shape;
		this.Rank = rank;
		this.OffsetBytes = offsetBytes;
	}
}

[CRepr]
public struct OrtEnvCreationOptions
{
	public uint32 Version;

	public int32 LoggingSeverityLevel;

	public char8 LogId;

	public CustomLoggingFunctionFn CustomLoggingFunction;

	public void CustomLoggingParam;

	public OrtThreadingOptions ThreadingOptions;

	public OrtKeyValuePairs ConfigEntries;

	public this(uint32 version, int32 loggingSeverityLevel, char8 logId, CustomLoggingFunctionFn customLoggingFunction, void customLoggingParam, OrtThreadingOptions threadingOptions, OrtKeyValuePairs configEntries)
	{
		this.Version = version;
		this.LoggingSeverityLevel = loggingSeverityLevel;
		this.LogId = logId;
		this.CustomLoggingFunction = customLoggingFunction;
		this.CustomLoggingParam = customLoggingParam;
		this.ThreadingOptions = threadingOptions;
		this.ConfigEntries = configEntries;
	}
}

[CRepr]
public struct OrtApi
{
	public CreateStatusFn CreateStatus;

	public GetErrorCodeFn GetErrorCode;

	public GetErrorMessageFn GetErrorMessage;

	public CreateEnvFn CreateEnv;

	public CreateEnvWithCustomLoggerFn CreateEnvWithCustomLogger;

	public EnableTelemetryEventsFn EnableTelemetryEvents;

	public DisableTelemetryEventsFn DisableTelemetryEvents;

	public CreateSessionFn CreateSession;

	public CreateSessionFromArrayFn CreateSessionFromArray;

	public RunFn Run;

	public CreateSessionOptionsFn CreateSessionOptions;

	public SetOptimizedModelFilePathFn SetOptimizedModelFilePath;

	public CloneSessionOptionsFn CloneSessionOptions;

	public SetSessionExecutionModeFn SetSessionExecutionMode;

	public EnableProfilingFn EnableProfiling;

	public DisableProfilingFn DisableProfiling;

	public EnableMemPatternFn EnableMemPattern;

	public DisableMemPatternFn DisableMemPattern;

	public EnableCpuMemArenaFn EnableCpuMemArena;

	public DisableCpuMemArenaFn DisableCpuMemArena;

	public SetSessionLogIdFn SetSessionLogId;

	public SetSessionLogVerbosityLevelFn SetSessionLogVerbosityLevel;

	public SetSessionLogSeverityLevelFn SetSessionLogSeverityLevel;

	public SetSessionGraphOptimizationLevelFn SetSessionGraphOptimizationLevel;

	public SetIntraOpNumThreadsFn SetIntraOpNumThreads;

	public SetInterOpNumThreadsFn SetInterOpNumThreads;

	public CreateCustomOpDomainFn CreateCustomOpDomain;

	public CustomOpDomainAddFn CustomOpDomainAdd;

	public AddCustomOpDomainFn AddCustomOpDomain;

	public RegisterCustomOpsLibraryFn RegisterCustomOpsLibrary;

	public SessionGetInputCountFn SessionGetInputCount;

	public SessionGetOutputCountFn SessionGetOutputCount;

	public SessionGetOverridableInitializerCountFn SessionGetOverridableInitializerCount;

	public SessionGetInputTypeInfoFn SessionGetInputTypeInfo;

	public SessionGetOutputTypeInfoFn SessionGetOutputTypeInfo;

	public SessionGetOverridableInitializerTypeInfoFn SessionGetOverridableInitializerTypeInfo;

	public SessionGetInputNameFn SessionGetInputName;

	public SessionGetOutputNameFn SessionGetOutputName;

	public SessionGetOverridableInitializerNameFn SessionGetOverridableInitializerName;

	public CreateRunOptionsFn CreateRunOptions;

	public RunOptionsSetRunLogVerbosityLevelFn RunOptionsSetRunLogVerbosityLevel;

	public RunOptionsSetRunLogSeverityLevelFn RunOptionsSetRunLogSeverityLevel;

	public RunOptionsSetRunTagFn RunOptionsSetRunTag;

	public RunOptionsGetRunLogVerbosityLevelFn RunOptionsGetRunLogVerbosityLevel;

	public RunOptionsGetRunLogSeverityLevelFn RunOptionsGetRunLogSeverityLevel;

	public RunOptionsGetRunTagFn RunOptionsGetRunTag;

	public RunOptionsSetTerminateFn RunOptionsSetTerminate;

	public RunOptionsUnsetTerminateFn RunOptionsUnsetTerminate;

	public CreateTensorAsOrtValueFn CreateTensorAsOrtValue;

	public CreateTensorWithDataAsOrtValueFn CreateTensorWithDataAsOrtValue;

	public IsTensorFn IsTensor;

	public GetTensorMutableDataFn GetTensorMutableData;

	public FillStringTensorFn FillStringTensor;

	public GetStringTensorDataLengthFn GetStringTensorDataLength;

	public GetStringTensorContentFn GetStringTensorContent;

	public CastTypeInfoToTensorInfoFn CastTypeInfoToTensorInfo;

	public GetOnnxTypeFromTypeInfoFn GetOnnxTypeFromTypeInfo;

	public CreateTensorTypeAndShapeInfoFn CreateTensorTypeAndShapeInfo;

	public SetTensorElementTypeFn SetTensorElementType;

	public SetDimensionsFn SetDimensions;

	public GetTensorElementTypeFn GetTensorElementType;

	public GetDimensionsCountFn GetDimensionsCount;

	public GetDimensionsFn GetDimensions;

	public GetSymbolicDimensionsFn GetSymbolicDimensions;

	public GetTensorShapeElementCountFn GetTensorShapeElementCount;

	public GetTensorTypeAndShapeFn GetTensorTypeAndShape;

	public GetTypeInfoFn GetTypeInfo;

	public GetValueTypeFn GetValueType;

	public CreateMemoryInfoFn CreateMemoryInfo;

	public CreateCpuMemoryInfoFn CreateCpuMemoryInfo;

	public CompareMemoryInfoFn CompareMemoryInfo;

	public MemoryInfoGetNameFn MemoryInfoGetName;

	public MemoryInfoGetIdFn MemoryInfoGetId;

	public MemoryInfoGetMemTypeFn MemoryInfoGetMemType;

	public MemoryInfoGetTypeFn MemoryInfoGetType;

	public AllocatorAllocFn AllocatorAlloc;

	public AllocatorFreeFn AllocatorFree;

	public AllocatorGetInfoFn AllocatorGetInfo;

	public GetAllocatorWithDefaultOptionsFn GetAllocatorWithDefaultOptions;

	public AddFreeDimensionOverrideFn AddFreeDimensionOverride;

	public GetValueFn GetValue;

	public GetValueCountFn GetValueCount;

	public CreateValueFn CreateValue;

	public CreateOpaqueValueFn CreateOpaqueValue;

	public GetOpaqueValueFn GetOpaqueValue;

	public KernelInfoGetAttributeFloatFn KernelInfoGetAttributeFloat;

	public KernelInfoGetAttributeInt64Fn KernelInfoGetAttributeInt64;

	public KernelInfoGetAttributeStringFn KernelInfoGetAttributeString;

	public KernelContextGetInputCountFn KernelContextGetInputCount;

	public KernelContextGetOutputCountFn KernelContextGetOutputCount;

	public KernelContextGetInputFn KernelContextGetInput;

	public KernelContextGetOutputFn KernelContextGetOutput;

	public ReleaseEnvFn ReleaseEnv;

	public ReleaseStatusFn ReleaseStatus;

	public ReleaseMemoryInfoFn ReleaseMemoryInfo;

	public ReleaseSessionFn ReleaseSession;

	public ReleaseValueFn ReleaseValue;

	public ReleaseRunOptionsFn ReleaseRunOptions;

	public ReleaseTypeInfoFn ReleaseTypeInfo;

	public ReleaseTensorTypeAndShapeInfoFn ReleaseTensorTypeAndShapeInfo;

	public ReleaseSessionOptionsFn ReleaseSessionOptions;

	public ReleaseCustomOpDomainFn ReleaseCustomOpDomain;

	public GetDenotationFromTypeInfoFn GetDenotationFromTypeInfo;

	public CastTypeInfoToMapTypeInfoFn CastTypeInfoToMapTypeInfo;

	public CastTypeInfoToSequenceTypeInfoFn CastTypeInfoToSequenceTypeInfo;

	public GetMapKeyTypeFn GetMapKeyType;

	public GetMapValueTypeFn GetMapValueType;

	public GetSequenceElementTypeFn GetSequenceElementType;

	public ReleaseMapTypeInfoFn ReleaseMapTypeInfo;

	public ReleaseSequenceTypeInfoFn ReleaseSequenceTypeInfo;

	public SessionEndProfilingFn SessionEndProfiling;

	public SessionGetModelMetadataFn SessionGetModelMetadata;

	public ModelMetadataGetProducerNameFn ModelMetadataGetProducerName;

	public ModelMetadataGetGraphNameFn ModelMetadataGetGraphName;

	public ModelMetadataGetDomainFn ModelMetadataGetDomain;

	public ModelMetadataGetDescriptionFn ModelMetadataGetDescription;

	public ModelMetadataLookupCustomMetadataMapFn ModelMetadataLookupCustomMetadataMap;

	public ModelMetadataGetVersionFn ModelMetadataGetVersion;

	public ReleaseModelMetadataFn ReleaseModelMetadata;

	public CreateEnvWithGlobalThreadPoolsFn CreateEnvWithGlobalThreadPools;

	public DisablePerSessionThreadsFn DisablePerSessionThreads;

	public CreateThreadingOptionsFn CreateThreadingOptions;

	public ReleaseThreadingOptionsFn ReleaseThreadingOptions;

	public ModelMetadataGetCustomMetadataMapKeysFn ModelMetadataGetCustomMetadataMapKeys;

	public AddFreeDimensionOverrideByNameFn AddFreeDimensionOverrideByName;

	public GetAvailableProvidersFn GetAvailableProviders;

	public ReleaseAvailableProvidersFn ReleaseAvailableProviders;

	public GetStringTensorElementLengthFn GetStringTensorElementLength;

	public GetStringTensorElementFn GetStringTensorElement;

	public FillStringTensorElementFn FillStringTensorElement;

	public AddSessionConfigEntryFn AddSessionConfigEntry;

	public CreateAllocatorFn CreateAllocator;

	public ReleaseAllocatorFn ReleaseAllocator;

	public RunWithBindingFn RunWithBinding;

	public CreateIoBindingFn CreateIoBinding;

	public ReleaseIoBindingFn ReleaseIoBinding;

	public BindInputFn BindInput;

	public BindOutputFn BindOutput;

	public BindOutputToDeviceFn BindOutputToDevice;

	public GetBoundOutputNamesFn GetBoundOutputNames;

	public GetBoundOutputValuesFn GetBoundOutputValues;

	public ClearBoundInputsFn ClearBoundInputs;

	public ClearBoundOutputsFn ClearBoundOutputs;

	public TensorAtFn TensorAt;

	public CreateAndRegisterAllocatorFn CreateAndRegisterAllocator;

	public SetLanguageProjectionFn SetLanguageProjection;

	public SessionGetProfilingStartTimeNsFn SessionGetProfilingStartTimeNs;

	public SetGlobalIntraOpNumThreadsFn SetGlobalIntraOpNumThreads;

	public SetGlobalInterOpNumThreadsFn SetGlobalInterOpNumThreads;

	public SetGlobalSpinControlFn SetGlobalSpinControl;

	public AddInitializerFn AddInitializer;

	public CreateEnvWithCustomLoggerAndGlobalThreadPoolsFn CreateEnvWithCustomLoggerAndGlobalThreadPools;

	public SessionOptionsAppendExecutionProviderCUDAFn SessionOptionsAppendExecutionProviderCUDA;

	public SessionOptionsAppendExecutionProviderROCMFn SessionOptionsAppendExecutionProviderROCM;

	public SessionOptionsAppendExecutionProviderOpenVINOFn SessionOptionsAppendExecutionProviderOpenVINO;

	public SetGlobalDenormalAsZeroFn SetGlobalDenormalAsZero;

	public CreateArenaCfgFn CreateArenaCfg;

	public ReleaseArenaCfgFn ReleaseArenaCfg;

	public ModelMetadataGetGraphDescriptionFn ModelMetadataGetGraphDescription;

	public SessionOptionsAppendExecutionProviderTensorRTFn SessionOptionsAppendExecutionProviderTensorRT;

	public SetCurrentGpuDeviceIdFn SetCurrentGpuDeviceId;

	public GetCurrentGpuDeviceIdFn GetCurrentGpuDeviceId;

	public KernelInfoGetAttributeArrayFloatFn KernelInfoGetAttributeArrayFloat;

	public KernelInfoGetAttributeArrayInt64Fn KernelInfoGetAttributeArrayInt64;

	public CreateArenaCfgV2Fn CreateArenaCfgV2;

	public AddRunConfigEntryFn AddRunConfigEntry;

	public CreatePrepackedWeightsContainerFn CreatePrepackedWeightsContainer;

	public ReleasePrepackedWeightsContainerFn ReleasePrepackedWeightsContainer;

	public CreateSessionWithPrepackedWeightsContainerFn CreateSessionWithPrepackedWeightsContainer;

	public CreateSessionFromArrayWithPrepackedWeightsContainerFn CreateSessionFromArrayWithPrepackedWeightsContainer;

	public SessionOptionsAppendExecutionProviderTensorRTV2Fn SessionOptionsAppendExecutionProviderTensorRTV2;

	public CreateTensorRTProviderOptionsFn CreateTensorRTProviderOptions;

	public UpdateTensorRTProviderOptionsFn UpdateTensorRTProviderOptions;

	public GetTensorRTProviderOptionsAsStringFn GetTensorRTProviderOptionsAsString;

	public ReleaseTensorRTProviderOptionsFn ReleaseTensorRTProviderOptions;

	public EnableOrtCustomOpsFn EnableOrtCustomOps;

	public RegisterAllocatorFn RegisterAllocator;

	public UnregisterAllocatorFn UnregisterAllocator;

	public IsSparseTensorFn IsSparseTensor;

	public CreateSparseTensorAsOrtValueFn CreateSparseTensorAsOrtValue;

	public FillSparseTensorCooFn FillSparseTensorCoo;

	public FillSparseTensorCsrFn FillSparseTensorCsr;

	public FillSparseTensorBlockSparseFn FillSparseTensorBlockSparse;

	public CreateSparseTensorWithValuesAsOrtValueFn CreateSparseTensorWithValuesAsOrtValue;

	public UseCooIndicesFn UseCooIndices;

	public UseCsrIndicesFn UseCsrIndices;

	public UseBlockSparseIndicesFn UseBlockSparseIndices;

	public GetSparseTensorFormatFn GetSparseTensorFormat;

	public GetSparseTensorValuesTypeAndShapeFn GetSparseTensorValuesTypeAndShape;

	public GetSparseTensorValuesFn GetSparseTensorValues;

	public GetSparseTensorIndicesTypeShapeFn GetSparseTensorIndicesTypeShape;

	public GetSparseTensorIndicesFn GetSparseTensorIndices;

	public HasValueFn HasValue;

	public KernelContextGetGPUComputeStreamFn KernelContextGetGPUComputeStream;

	public GetTensorMemoryInfoFn GetTensorMemoryInfo;

	public GetExecutionProviderApiFn GetExecutionProviderApi;

	public SessionOptionsSetCustomCreateThreadFnFn SessionOptionsSetCustomCreateThreadFn;

	public SessionOptionsSetCustomThreadCreationOptionsFn SessionOptionsSetCustomThreadCreationOptions;

	public SessionOptionsSetCustomJoinThreadFnFn SessionOptionsSetCustomJoinThreadFn;

	public SetGlobalCustomCreateThreadFnFn SetGlobalCustomCreateThreadFn;

	public SetGlobalCustomThreadCreationOptionsFn SetGlobalCustomThreadCreationOptions;

	public SetGlobalCustomJoinThreadFnFn SetGlobalCustomJoinThreadFn;

	public SynchronizeBoundInputsFn SynchronizeBoundInputs;

	public SynchronizeBoundOutputsFn SynchronizeBoundOutputs;

	public SessionOptionsAppendExecutionProviderCUDAV2Fn SessionOptionsAppendExecutionProviderCUDAV2;

	public CreateCUDAProviderOptionsFn CreateCUDAProviderOptions;

	public UpdateCUDAProviderOptionsFn UpdateCUDAProviderOptions;

	public GetCUDAProviderOptionsAsStringFn GetCUDAProviderOptionsAsString;

	public ReleaseCUDAProviderOptionsFn ReleaseCUDAProviderOptions;

	public SessionOptionsAppendExecutionProviderMIGraphXFn SessionOptionsAppendExecutionProviderMIGraphX;

	public AddExternalInitializersFn AddExternalInitializers;

	public CreateOpAttrFn CreateOpAttr;

	public ReleaseOpAttrFn ReleaseOpAttr;

	public CreateOpFn CreateOp;

	public InvokeOpFn InvokeOp;

	public ReleaseOpFn ReleaseOp;

	public SessionOptionsAppendExecutionProviderFn SessionOptionsAppendExecutionProvider;

	public CopyKernelInfoFn CopyKernelInfo;

	public ReleaseKernelInfoFn ReleaseKernelInfo;

	public GetTrainingApiFn GetTrainingApi;

	public SessionOptionsAppendExecutionProviderCANNFn SessionOptionsAppendExecutionProviderCANN;

	public CreateCANNProviderOptionsFn CreateCANNProviderOptions;

	public UpdateCANNProviderOptionsFn UpdateCANNProviderOptions;

	public GetCANNProviderOptionsAsStringFn GetCANNProviderOptionsAsString;

	public ReleaseCANNProviderOptionsFn ReleaseCANNProviderOptions;

	public MemoryInfoGetDeviceTypeFn MemoryInfoGetDeviceType;

	public UpdateEnvWithCustomLogLevelFn UpdateEnvWithCustomLogLevel;

	public SetGlobalIntraOpThreadAffinityFn SetGlobalIntraOpThreadAffinity;

	public RegisterCustomOpsLibraryV2Fn RegisterCustomOpsLibraryV2;

	public RegisterCustomOpsUsingFunctionFn RegisterCustomOpsUsingFunction;

	public KernelInfoGetInputCountFn KernelInfoGetInputCount;

	public KernelInfoGetOutputCountFn KernelInfoGetOutputCount;

	public KernelInfoGetInputNameFn KernelInfoGetInputName;

	public KernelInfoGetOutputNameFn KernelInfoGetOutputName;

	public KernelInfoGetInputTypeInfoFn KernelInfoGetInputTypeInfo;

	public KernelInfoGetOutputTypeInfoFn KernelInfoGetOutputTypeInfo;

	public KernelInfoGetAttributeTensorFn KernelInfoGetAttributeTensor;

	public HasSessionConfigEntryFn HasSessionConfigEntry;

	public GetSessionConfigEntryFn GetSessionConfigEntry;

	public SessionOptionsAppendExecutionProviderDnnlFn SessionOptionsAppendExecutionProviderDnnl;

	public CreateDnnlProviderOptionsFn CreateDnnlProviderOptions;

	public UpdateDnnlProviderOptionsFn UpdateDnnlProviderOptions;

	public GetDnnlProviderOptionsAsStringFn GetDnnlProviderOptionsAsString;

	public ReleaseDnnlProviderOptionsFn ReleaseDnnlProviderOptions;

	public KernelInfoGetNodeNameFn KernelInfoGetNodeName;

	public KernelInfoGetLoggerFn KernelInfoGetLogger;

	public KernelContextGetLoggerFn KernelContextGetLogger;

	public LoggerLogMessageFn LoggerLogMessage;

	public LoggerGetLoggingSeverityLevelFn LoggerGetLoggingSeverityLevel;

	public KernelInfoGetConstantInputTensorFn KernelInfoGetConstantInputTensor;

	public CastTypeInfoToOptionalTypeInfoFn CastTypeInfoToOptionalTypeInfo;

	public GetOptionalContainedTypeInfoFn GetOptionalContainedTypeInfo;

	public GetResizedStringTensorElementBufferFn GetResizedStringTensorElementBuffer;

	public KernelContextGetAllocatorFn KernelContextGetAllocator;

	public GetBuildInfoStringFn GetBuildInfoString;

	public CreateROCMProviderOptionsFn CreateROCMProviderOptions;

	public UpdateROCMProviderOptionsFn UpdateROCMProviderOptions;

	public GetROCMProviderOptionsAsStringFn GetROCMProviderOptionsAsString;

	public ReleaseROCMProviderOptionsFn ReleaseROCMProviderOptions;

	public CreateAndRegisterAllocatorV2Fn CreateAndRegisterAllocatorV2;

	public RunAsyncFn RunAsync;

	public UpdateTensorRTProviderOptionsWithValueFn UpdateTensorRTProviderOptionsWithValue;

	public GetTensorRTProviderOptionsByNameFn GetTensorRTProviderOptionsByName;

	public UpdateCUDAProviderOptionsWithValueFn UpdateCUDAProviderOptionsWithValue;

	public GetCUDAProviderOptionsByNameFn GetCUDAProviderOptionsByName;

	public KernelContextGetResourceFn KernelContextGetResource;

	public SetUserLoggingFunctionFn SetUserLoggingFunction;

	public ShapeInferContextGetInputCountFn ShapeInferContextGetInputCount;

	public ShapeInferContextGetInputTypeShapeFn ShapeInferContextGetInputTypeShape;

	public ShapeInferContextGetAttributeFn ShapeInferContextGetAttribute;

	public ShapeInferContextSetOutputTypeShapeFn ShapeInferContextSetOutputTypeShape;

	public SetSymbolicDimensionsFn SetSymbolicDimensions;

	public ReadOpAttrFn ReadOpAttr;

	public SetDeterministicComputeFn SetDeterministicCompute;

	public KernelContextParallelForFn KernelContextParallelFor;

	public SessionOptionsAppendExecutionProviderOpenVINOV2Fn SessionOptionsAppendExecutionProviderOpenVINOV2;

	public SessionOptionsAppendExecutionProviderVitisAIFn SessionOptionsAppendExecutionProviderVitisAI;

	public KernelContextGetScratchBufferFn KernelContextGetScratchBuffer;

	public KernelInfoGetAllocatorFn KernelInfoGetAllocator;

	public AddExternalInitializersFromFilesInMemoryFn AddExternalInitializersFromFilesInMemory;

	public CreateLoraAdapterFn CreateLoraAdapter;

	public CreateLoraAdapterFromArrayFn CreateLoraAdapterFromArray;

	public ReleaseLoraAdapterFn ReleaseLoraAdapter;

	public RunOptionsAddActiveLoraAdapterFn RunOptionsAddActiveLoraAdapter;

	public SetEpDynamicOptionsFn SetEpDynamicOptions;

	public ReleaseValueInfoFn ReleaseValueInfo;

	public ReleaseNodeFn ReleaseNode;

	public ReleaseGraphFn ReleaseGraph;

	public ReleaseModelFn ReleaseModel;

	public GetValueInfoNameFn GetValueInfoName;

	public GetValueInfoTypeInfoFn GetValueInfoTypeInfo;

	public GetModelEditorApiFn GetModelEditorApi;

	public CreateTensorWithDataAndDeleterAsOrtValueFn CreateTensorWithDataAndDeleterAsOrtValue;

	public SessionOptionsSetLoadCancellationFlagFn SessionOptionsSetLoadCancellationFlag;

	public GetCompileApiFn GetCompileApi;

	public CreateKeyValuePairsFn CreateKeyValuePairs;

	public AddKeyValuePairFn AddKeyValuePair;

	public GetKeyValueFn GetKeyValue;

	public GetKeyValuePairsFn GetKeyValuePairs;

	public RemoveKeyValuePairFn RemoveKeyValuePair;

	public ReleaseKeyValuePairsFn ReleaseKeyValuePairs;

	public RegisterExecutionProviderLibraryFn RegisterExecutionProviderLibrary;

	public UnregisterExecutionProviderLibraryFn UnregisterExecutionProviderLibrary;

	public GetEpDevicesFn GetEpDevices;

	public SessionOptionsAppendExecutionProviderV2Fn SessionOptionsAppendExecutionProviderV2;

	public SessionOptionsSetEpSelectionPolicyFn SessionOptionsSetEpSelectionPolicy;

	public SessionOptionsSetEpSelectionPolicyDelegateFn SessionOptionsSetEpSelectionPolicyDelegate;

	public HardwareDeviceTypeFn HardwareDeviceType;

	public HardwareDeviceVendorIdFn HardwareDeviceVendorId;

	public HardwareDeviceVendorFn HardwareDeviceVendor;

	public HardwareDeviceDeviceIdFn HardwareDeviceDeviceId;

	public HardwareDeviceMetadataFn HardwareDeviceMetadata;

	public EpDeviceEpNameFn EpDeviceEpName;

	public EpDeviceEpVendorFn EpDeviceEpVendor;

	public EpDeviceEpMetadataFn EpDeviceEpMetadata;

	public EpDeviceEpOptionsFn EpDeviceEpOptions;

	public EpDeviceDeviceFn EpDeviceDevice;

	public GetEpApiFn GetEpApi;

	public GetTensorSizeInBytesFn GetTensorSizeInBytes;

	public AllocatorGetStatsFn AllocatorGetStats;

	public CreateMemoryInfoV2Fn CreateMemoryInfoV2;

	public MemoryInfoGetDeviceMemTypeFn MemoryInfoGetDeviceMemType;

	public MemoryInfoGetVendorIdFn MemoryInfoGetVendorId;

	public ValueInfoGetValueProducerFn ValueInfoGetValueProducer;

	public ValueInfoGetValueNumConsumersFn ValueInfoGetValueNumConsumers;

	public ValueInfoGetValueConsumersFn ValueInfoGetValueConsumers;

	public ValueInfoGetInitializerValueFn ValueInfoGetInitializerValue;

	public ValueInfoGetExternalInitializerInfoFn ValueInfoGetExternalInitializerInfo;

	public ValueInfoIsRequiredGraphInputFn ValueInfoIsRequiredGraphInput;

	public ValueInfoIsOptionalGraphInputFn ValueInfoIsOptionalGraphInput;

	public ValueInfoIsGraphOutputFn ValueInfoIsGraphOutput;

	public ValueInfoIsConstantInitializerFn ValueInfoIsConstantInitializer;

	public ValueInfoIsFromOuterScopeFn ValueInfoIsFromOuterScope;

	public GraphGetNameFn GraphGetName;

	public GraphGetModelPathFn GraphGetModelPath;

	public GraphGetOnnxIRVersionFn GraphGetOnnxIRVersion;

	public GraphGetNumOperatorSetsFn GraphGetNumOperatorSets;

	public GraphGetOperatorSetsFn GraphGetOperatorSets;

	public GraphGetNumInputsFn GraphGetNumInputs;

	public GraphGetInputsFn GraphGetInputs;

	public GraphGetNumOutputsFn GraphGetNumOutputs;

	public GraphGetOutputsFn GraphGetOutputs;

	public GraphGetNumInitializersFn GraphGetNumInitializers;

	public GraphGetInitializersFn GraphGetInitializers;

	public GraphGetNumNodesFn GraphGetNumNodes;

	public GraphGetNodesFn GraphGetNodes;

	public GraphGetParentNodeFn GraphGetParentNode;

	public GraphGetGraphViewFn GraphGetGraphView;

	public NodeGetIdFn NodeGetId;

	public NodeGetNameFn NodeGetName;

	public NodeGetOperatorTypeFn NodeGetOperatorType;

	public NodeGetDomainFn NodeGetDomain;

	public NodeGetSinceVersionFn NodeGetSinceVersion;

	public NodeGetNumInputsFn NodeGetNumInputs;

	public NodeGetInputsFn NodeGetInputs;

	public NodeGetNumOutputsFn NodeGetNumOutputs;

	public NodeGetOutputsFn NodeGetOutputs;

	public NodeGetNumImplicitInputsFn NodeGetNumImplicitInputs;

	public NodeGetImplicitInputsFn NodeGetImplicitInputs;

	public NodeGetNumAttributesFn NodeGetNumAttributes;

	public NodeGetAttributesFn NodeGetAttributes;

	public NodeGetAttributeByNameFn NodeGetAttributeByName;

	public OpAttrGetTensorAttributeAsOrtValueFn OpAttrGetTensorAttributeAsOrtValue;

	public OpAttrGetTypeFn OpAttrGetType;

	public OpAttrGetNameFn OpAttrGetName;

	public NodeGetNumSubgraphsFn NodeGetNumSubgraphs;

	public NodeGetSubgraphsFn NodeGetSubgraphs;

	public NodeGetGraphFn NodeGetGraph;

	public NodeGetEpNameFn NodeGetEpName;

	public ReleaseExternalInitializerInfoFn ReleaseExternalInitializerInfo;

	public ExternalInitializerInfoGetFilePathFn ExternalInitializerInfoGetFilePath;

	public ExternalInitializerInfoGetFileOffsetFn ExternalInitializerInfoGetFileOffset;

	public ExternalInitializerInfoGetByteSizeFn ExternalInitializerInfoGetByteSize;

	public GetRunConfigEntryFn GetRunConfigEntry;

	public EpDeviceMemoryInfoFn EpDeviceMemoryInfo;

	public CreateSharedAllocatorFn CreateSharedAllocator;

	public GetSharedAllocatorFn GetSharedAllocator;

	public ReleaseSharedAllocatorFn ReleaseSharedAllocator;

	public GetTensorDataFn GetTensorData;

	public GetSessionOptionsConfigEntriesFn GetSessionOptionsConfigEntries;

	public SessionGetMemoryInfoForInputsFn SessionGetMemoryInfoForInputs;

	public SessionGetMemoryInfoForOutputsFn SessionGetMemoryInfoForOutputs;

	public SessionGetEpDeviceForInputsFn SessionGetEpDeviceForInputs;

	public CreateSyncStreamForEpDeviceFn CreateSyncStreamForEpDevice;

	public SyncStreamGetHandleFn SyncStreamGetHandle;

	public ReleaseSyncStreamFn ReleaseSyncStream;

	public CopyTensorsFn CopyTensors;

	public GraphGetModelMetadataFn GraphGetModelMetadata;

	public GetModelCompatibilityForEpDevicesFn GetModelCompatibilityForEpDevices;

	public CreateExternalInitializerInfoFn CreateExternalInitializerInfo;

	public TensorTypeAndShapeHasShapeFn TensorTypeAndShapeHasShape;

	public KernelInfoGetConfigEntriesFn KernelInfoGetConfigEntries;

	public KernelInfoGetOperatorDomainFn KernelInfoGetOperatorDomain;

	public KernelInfoGetOperatorTypeFn KernelInfoGetOperatorType;

	public KernelInfoGetOperatorSinceVersionFn KernelInfoGetOperatorSinceVersion;

	public GetInteropApiFn GetInteropApi;

	public SessionGetEpDeviceForOutputsFn SessionGetEpDeviceForOutputs;

	public GetNumHardwareDevicesFn GetNumHardwareDevices;

	public GetHardwareDevicesFn GetHardwareDevices;

	public GetHardwareDeviceEpIncompatibilityDetailsFn GetHardwareDeviceEpIncompatibilityDetails;

	public DeviceEpIncompatibilityDetailsGetReasonsBitmaskFn DeviceEpIncompatibilityDetailsGetReasonsBitmask;

	public DeviceEpIncompatibilityDetailsGetNotesFn DeviceEpIncompatibilityDetailsGetNotes;

	public DeviceEpIncompatibilityDetailsGetErrorCodeFn DeviceEpIncompatibilityDetailsGetErrorCode;

	public ReleaseDeviceEpIncompatibilityDetailsFn ReleaseDeviceEpIncompatibilityDetails;

	public CreateEnvWithOptionsFn CreateEnvWithOptions;

	public SessionGetEpGraphAssignmentInfoFn SessionGetEpGraphAssignmentInfo;

	public EpAssignedSubgraphGetEpNameFn EpAssignedSubgraphGetEpName;

	public EpAssignedSubgraphGetNodesFn EpAssignedSubgraphGetNodes;

	public EpAssignedNodeGetNameFn EpAssignedNodeGetName;

	public EpAssignedNodeGetDomainFn EpAssignedNodeGetDomain;

	public EpAssignedNodeGetOperatorTypeFn EpAssignedNodeGetOperatorType;

	public RunOptionsSetSyncStreamFn RunOptionsSetSyncStream;

	public this(CreateStatusFn CreateStatus, GetErrorCodeFn GetErrorCode, GetErrorMessageFn GetErrorMessage, CreateEnvFn CreateEnv, CreateEnvWithCustomLoggerFn CreateEnvWithCustomLogger, EnableTelemetryEventsFn EnableTelemetryEvents, DisableTelemetryEventsFn DisableTelemetryEvents, CreateSessionFn CreateSession, CreateSessionFromArrayFn CreateSessionFromArray, RunFn Run, CreateSessionOptionsFn CreateSessionOptions, SetOptimizedModelFilePathFn SetOptimizedModelFilePath, CloneSessionOptionsFn CloneSessionOptions, SetSessionExecutionModeFn SetSessionExecutionMode, EnableProfilingFn EnableProfiling, DisableProfilingFn DisableProfiling, EnableMemPatternFn EnableMemPattern, DisableMemPatternFn DisableMemPattern, EnableCpuMemArenaFn EnableCpuMemArena, DisableCpuMemArenaFn DisableCpuMemArena, SetSessionLogIdFn SetSessionLogId, SetSessionLogVerbosityLevelFn SetSessionLogVerbosityLevel, SetSessionLogSeverityLevelFn SetSessionLogSeverityLevel, SetSessionGraphOptimizationLevelFn SetSessionGraphOptimizationLevel, SetIntraOpNumThreadsFn SetIntraOpNumThreads, SetInterOpNumThreadsFn SetInterOpNumThreads, CreateCustomOpDomainFn CreateCustomOpDomain, CustomOpDomainAddFn CustomOpDomainAdd, AddCustomOpDomainFn AddCustomOpDomain, RegisterCustomOpsLibraryFn RegisterCustomOpsLibrary, SessionGetInputCountFn SessionGetInputCount, SessionGetOutputCountFn SessionGetOutputCount, SessionGetOverridableInitializerCountFn SessionGetOverridableInitializerCount, SessionGetInputTypeInfoFn SessionGetInputTypeInfo, SessionGetOutputTypeInfoFn SessionGetOutputTypeInfo, SessionGetOverridableInitializerTypeInfoFn SessionGetOverridableInitializerTypeInfo, SessionGetInputNameFn SessionGetInputName, SessionGetOutputNameFn SessionGetOutputName, SessionGetOverridableInitializerNameFn SessionGetOverridableInitializerName, CreateRunOptionsFn CreateRunOptions, RunOptionsSetRunLogVerbosityLevelFn RunOptionsSetRunLogVerbosityLevel, RunOptionsSetRunLogSeverityLevelFn RunOptionsSetRunLogSeverityLevel, RunOptionsSetRunTagFn RunOptionsSetRunTag, RunOptionsGetRunLogVerbosityLevelFn RunOptionsGetRunLogVerbosityLevel, RunOptionsGetRunLogSeverityLevelFn RunOptionsGetRunLogSeverityLevel, RunOptionsGetRunTagFn RunOptionsGetRunTag, RunOptionsSetTerminateFn RunOptionsSetTerminate, RunOptionsUnsetTerminateFn RunOptionsUnsetTerminate, CreateTensorAsOrtValueFn CreateTensorAsOrtValue, CreateTensorWithDataAsOrtValueFn CreateTensorWithDataAsOrtValue, IsTensorFn IsTensor, GetTensorMutableDataFn GetTensorMutableData, FillStringTensorFn FillStringTensor, GetStringTensorDataLengthFn GetStringTensorDataLength, GetStringTensorContentFn GetStringTensorContent, CastTypeInfoToTensorInfoFn CastTypeInfoToTensorInfo, GetOnnxTypeFromTypeInfoFn GetOnnxTypeFromTypeInfo, CreateTensorTypeAndShapeInfoFn CreateTensorTypeAndShapeInfo, SetTensorElementTypeFn SetTensorElementType, SetDimensionsFn SetDimensions, GetTensorElementTypeFn GetTensorElementType, GetDimensionsCountFn GetDimensionsCount, GetDimensionsFn GetDimensions, GetSymbolicDimensionsFn GetSymbolicDimensions, GetTensorShapeElementCountFn GetTensorShapeElementCount, GetTensorTypeAndShapeFn GetTensorTypeAndShape, GetTypeInfoFn GetTypeInfo, GetValueTypeFn GetValueType, CreateMemoryInfoFn CreateMemoryInfo, CreateCpuMemoryInfoFn CreateCpuMemoryInfo, CompareMemoryInfoFn CompareMemoryInfo, MemoryInfoGetNameFn MemoryInfoGetName, MemoryInfoGetIdFn MemoryInfoGetId, MemoryInfoGetMemTypeFn MemoryInfoGetMemType, MemoryInfoGetTypeFn MemoryInfoGetType, AllocatorAllocFn AllocatorAlloc, AllocatorFreeFn AllocatorFree, AllocatorGetInfoFn AllocatorGetInfo, GetAllocatorWithDefaultOptionsFn GetAllocatorWithDefaultOptions, AddFreeDimensionOverrideFn AddFreeDimensionOverride, GetValueFn GetValue, GetValueCountFn GetValueCount, CreateValueFn CreateValue, CreateOpaqueValueFn CreateOpaqueValue, GetOpaqueValueFn GetOpaqueValue, KernelInfoGetAttributeFloatFn KernelInfoGetAttributeFloat, KernelInfoGetAttributeInt64Fn KernelInfoGetAttributeInt64, KernelInfoGetAttributeStringFn KernelInfoGetAttributeString, KernelContextGetInputCountFn KernelContextGetInputCount, KernelContextGetOutputCountFn KernelContextGetOutputCount, KernelContextGetInputFn KernelContextGetInput, KernelContextGetOutputFn KernelContextGetOutput, ReleaseEnvFn ReleaseEnv, ReleaseStatusFn ReleaseStatus, ReleaseMemoryInfoFn ReleaseMemoryInfo, ReleaseSessionFn ReleaseSession, ReleaseValueFn ReleaseValue, ReleaseRunOptionsFn ReleaseRunOptions, ReleaseTypeInfoFn ReleaseTypeInfo, ReleaseTensorTypeAndShapeInfoFn ReleaseTensorTypeAndShapeInfo, ReleaseSessionOptionsFn ReleaseSessionOptions, ReleaseCustomOpDomainFn ReleaseCustomOpDomain, GetDenotationFromTypeInfoFn GetDenotationFromTypeInfo, CastTypeInfoToMapTypeInfoFn CastTypeInfoToMapTypeInfo, CastTypeInfoToSequenceTypeInfoFn CastTypeInfoToSequenceTypeInfo, GetMapKeyTypeFn GetMapKeyType, GetMapValueTypeFn GetMapValueType, GetSequenceElementTypeFn GetSequenceElementType, ReleaseMapTypeInfoFn ReleaseMapTypeInfo, ReleaseSequenceTypeInfoFn ReleaseSequenceTypeInfo, SessionEndProfilingFn SessionEndProfiling, SessionGetModelMetadataFn SessionGetModelMetadata, ModelMetadataGetProducerNameFn ModelMetadataGetProducerName, ModelMetadataGetGraphNameFn ModelMetadataGetGraphName, ModelMetadataGetDomainFn ModelMetadataGetDomain, ModelMetadataGetDescriptionFn ModelMetadataGetDescription, ModelMetadataLookupCustomMetadataMapFn ModelMetadataLookupCustomMetadataMap, ModelMetadataGetVersionFn ModelMetadataGetVersion, ReleaseModelMetadataFn ReleaseModelMetadata, CreateEnvWithGlobalThreadPoolsFn CreateEnvWithGlobalThreadPools, DisablePerSessionThreadsFn DisablePerSessionThreads, CreateThreadingOptionsFn CreateThreadingOptions, ReleaseThreadingOptionsFn ReleaseThreadingOptions, ModelMetadataGetCustomMetadataMapKeysFn ModelMetadataGetCustomMetadataMapKeys, AddFreeDimensionOverrideByNameFn AddFreeDimensionOverrideByName, GetAvailableProvidersFn GetAvailableProviders, ReleaseAvailableProvidersFn ReleaseAvailableProviders, GetStringTensorElementLengthFn GetStringTensorElementLength, GetStringTensorElementFn GetStringTensorElement, FillStringTensorElementFn FillStringTensorElement, AddSessionConfigEntryFn AddSessionConfigEntry, CreateAllocatorFn CreateAllocator, ReleaseAllocatorFn ReleaseAllocator, RunWithBindingFn RunWithBinding, CreateIoBindingFn CreateIoBinding, ReleaseIoBindingFn ReleaseIoBinding, BindInputFn BindInput, BindOutputFn BindOutput, BindOutputToDeviceFn BindOutputToDevice, GetBoundOutputNamesFn GetBoundOutputNames, GetBoundOutputValuesFn GetBoundOutputValues, ClearBoundInputsFn ClearBoundInputs, ClearBoundOutputsFn ClearBoundOutputs, TensorAtFn TensorAt, CreateAndRegisterAllocatorFn CreateAndRegisterAllocator, SetLanguageProjectionFn SetLanguageProjection, SessionGetProfilingStartTimeNsFn SessionGetProfilingStartTimeNs, SetGlobalIntraOpNumThreadsFn SetGlobalIntraOpNumThreads, SetGlobalInterOpNumThreadsFn SetGlobalInterOpNumThreads, SetGlobalSpinControlFn SetGlobalSpinControl, AddInitializerFn AddInitializer, CreateEnvWithCustomLoggerAndGlobalThreadPoolsFn CreateEnvWithCustomLoggerAndGlobalThreadPools, SessionOptionsAppendExecutionProviderCUDAFn SessionOptionsAppendExecutionProviderCUDA, SessionOptionsAppendExecutionProviderROCMFn SessionOptionsAppendExecutionProviderROCM, SessionOptionsAppendExecutionProviderOpenVINOFn SessionOptionsAppendExecutionProviderOpenVINO, SetGlobalDenormalAsZeroFn SetGlobalDenormalAsZero, CreateArenaCfgFn CreateArenaCfg, ReleaseArenaCfgFn ReleaseArenaCfg, ModelMetadataGetGraphDescriptionFn ModelMetadataGetGraphDescription, SessionOptionsAppendExecutionProviderTensorRTFn SessionOptionsAppendExecutionProviderTensorRT, SetCurrentGpuDeviceIdFn SetCurrentGpuDeviceId, GetCurrentGpuDeviceIdFn GetCurrentGpuDeviceId, KernelInfoGetAttributeArrayFloatFn KernelInfoGetAttributeArrayFloat, KernelInfoGetAttributeArrayInt64Fn KernelInfoGetAttributeArrayInt64, CreateArenaCfgV2Fn CreateArenaCfgV2, AddRunConfigEntryFn AddRunConfigEntry, CreatePrepackedWeightsContainerFn CreatePrepackedWeightsContainer, ReleasePrepackedWeightsContainerFn ReleasePrepackedWeightsContainer, CreateSessionWithPrepackedWeightsContainerFn CreateSessionWithPrepackedWeightsContainer, CreateSessionFromArrayWithPrepackedWeightsContainerFn CreateSessionFromArrayWithPrepackedWeightsContainer, SessionOptionsAppendExecutionProviderTensorRTV2Fn SessionOptionsAppendExecutionProviderTensorRTV2, CreateTensorRTProviderOptionsFn CreateTensorRTProviderOptions, UpdateTensorRTProviderOptionsFn UpdateTensorRTProviderOptions, GetTensorRTProviderOptionsAsStringFn GetTensorRTProviderOptionsAsString, ReleaseTensorRTProviderOptionsFn ReleaseTensorRTProviderOptions, EnableOrtCustomOpsFn EnableOrtCustomOps, RegisterAllocatorFn RegisterAllocator, UnregisterAllocatorFn UnregisterAllocator, IsSparseTensorFn IsSparseTensor, CreateSparseTensorAsOrtValueFn CreateSparseTensorAsOrtValue, FillSparseTensorCooFn FillSparseTensorCoo, FillSparseTensorCsrFn FillSparseTensorCsr, FillSparseTensorBlockSparseFn FillSparseTensorBlockSparse, CreateSparseTensorWithValuesAsOrtValueFn CreateSparseTensorWithValuesAsOrtValue, UseCooIndicesFn UseCooIndices, UseCsrIndicesFn UseCsrIndices, UseBlockSparseIndicesFn UseBlockSparseIndices, GetSparseTensorFormatFn GetSparseTensorFormat, GetSparseTensorValuesTypeAndShapeFn GetSparseTensorValuesTypeAndShape, GetSparseTensorValuesFn GetSparseTensorValues, GetSparseTensorIndicesTypeShapeFn GetSparseTensorIndicesTypeShape, GetSparseTensorIndicesFn GetSparseTensorIndices, HasValueFn HasValue, KernelContextGetGPUComputeStreamFn KernelContextGetGPUComputeStream, GetTensorMemoryInfoFn GetTensorMemoryInfo, GetExecutionProviderApiFn GetExecutionProviderApi, SessionOptionsSetCustomCreateThreadFnFn SessionOptionsSetCustomCreateThreadFn, SessionOptionsSetCustomThreadCreationOptionsFn SessionOptionsSetCustomThreadCreationOptions, SessionOptionsSetCustomJoinThreadFnFn SessionOptionsSetCustomJoinThreadFn, SetGlobalCustomCreateThreadFnFn SetGlobalCustomCreateThreadFn, SetGlobalCustomThreadCreationOptionsFn SetGlobalCustomThreadCreationOptions, SetGlobalCustomJoinThreadFnFn SetGlobalCustomJoinThreadFn, SynchronizeBoundInputsFn SynchronizeBoundInputs, SynchronizeBoundOutputsFn SynchronizeBoundOutputs, SessionOptionsAppendExecutionProviderCUDAV2Fn SessionOptionsAppendExecutionProviderCUDAV2, CreateCUDAProviderOptionsFn CreateCUDAProviderOptions, UpdateCUDAProviderOptionsFn UpdateCUDAProviderOptions, GetCUDAProviderOptionsAsStringFn GetCUDAProviderOptionsAsString, ReleaseCUDAProviderOptionsFn ReleaseCUDAProviderOptions, SessionOptionsAppendExecutionProviderMIGraphXFn SessionOptionsAppendExecutionProviderMIGraphX, AddExternalInitializersFn AddExternalInitializers, CreateOpAttrFn CreateOpAttr, ReleaseOpAttrFn ReleaseOpAttr, CreateOpFn CreateOp, InvokeOpFn InvokeOp, ReleaseOpFn ReleaseOp, SessionOptionsAppendExecutionProviderFn SessionOptionsAppendExecutionProvider, CopyKernelInfoFn CopyKernelInfo, ReleaseKernelInfoFn ReleaseKernelInfo, GetTrainingApiFn GetTrainingApi, SessionOptionsAppendExecutionProviderCANNFn SessionOptionsAppendExecutionProviderCANN, CreateCANNProviderOptionsFn CreateCANNProviderOptions, UpdateCANNProviderOptionsFn UpdateCANNProviderOptions, GetCANNProviderOptionsAsStringFn GetCANNProviderOptionsAsString, ReleaseCANNProviderOptionsFn ReleaseCANNProviderOptions, MemoryInfoGetDeviceTypeFn MemoryInfoGetDeviceType, UpdateEnvWithCustomLogLevelFn UpdateEnvWithCustomLogLevel, SetGlobalIntraOpThreadAffinityFn SetGlobalIntraOpThreadAffinity, RegisterCustomOpsLibraryV2Fn RegisterCustomOpsLibraryV2, RegisterCustomOpsUsingFunctionFn RegisterCustomOpsUsingFunction, KernelInfoGetInputCountFn KernelInfoGetInputCount, KernelInfoGetOutputCountFn KernelInfoGetOutputCount, KernelInfoGetInputNameFn KernelInfoGetInputName, KernelInfoGetOutputNameFn KernelInfoGetOutputName, KernelInfoGetInputTypeInfoFn KernelInfoGetInputTypeInfo, KernelInfoGetOutputTypeInfoFn KernelInfoGetOutputTypeInfo, KernelInfoGetAttributeTensorFn KernelInfoGetAttributeTensor, HasSessionConfigEntryFn HasSessionConfigEntry, GetSessionConfigEntryFn GetSessionConfigEntry, SessionOptionsAppendExecutionProviderDnnlFn SessionOptionsAppendExecutionProviderDnnl, CreateDnnlProviderOptionsFn CreateDnnlProviderOptions, UpdateDnnlProviderOptionsFn UpdateDnnlProviderOptions, GetDnnlProviderOptionsAsStringFn GetDnnlProviderOptionsAsString, ReleaseDnnlProviderOptionsFn ReleaseDnnlProviderOptions, KernelInfoGetNodeNameFn KernelInfoGetNodeName, KernelInfoGetLoggerFn KernelInfoGetLogger, KernelContextGetLoggerFn KernelContextGetLogger, LoggerLogMessageFn LoggerLogMessage, LoggerGetLoggingSeverityLevelFn LoggerGetLoggingSeverityLevel, KernelInfoGetConstantInputTensorFn KernelInfoGetConstantInputTensor, CastTypeInfoToOptionalTypeInfoFn CastTypeInfoToOptionalTypeInfo, GetOptionalContainedTypeInfoFn GetOptionalContainedTypeInfo, GetResizedStringTensorElementBufferFn GetResizedStringTensorElementBuffer, KernelContextGetAllocatorFn KernelContextGetAllocator, GetBuildInfoStringFn GetBuildInfoString, CreateROCMProviderOptionsFn CreateROCMProviderOptions, UpdateROCMProviderOptionsFn UpdateROCMProviderOptions, GetROCMProviderOptionsAsStringFn GetROCMProviderOptionsAsString, ReleaseROCMProviderOptionsFn ReleaseROCMProviderOptions, CreateAndRegisterAllocatorV2Fn CreateAndRegisterAllocatorV2, RunAsyncFn RunAsync, UpdateTensorRTProviderOptionsWithValueFn UpdateTensorRTProviderOptionsWithValue, GetTensorRTProviderOptionsByNameFn GetTensorRTProviderOptionsByName, UpdateCUDAProviderOptionsWithValueFn UpdateCUDAProviderOptionsWithValue, GetCUDAProviderOptionsByNameFn GetCUDAProviderOptionsByName, KernelContextGetResourceFn KernelContextGetResource, SetUserLoggingFunctionFn SetUserLoggingFunction, ShapeInferContextGetInputCountFn ShapeInferContextGetInputCount, ShapeInferContextGetInputTypeShapeFn ShapeInferContextGetInputTypeShape, ShapeInferContextGetAttributeFn ShapeInferContextGetAttribute, ShapeInferContextSetOutputTypeShapeFn ShapeInferContextSetOutputTypeShape, SetSymbolicDimensionsFn SetSymbolicDimensions, ReadOpAttrFn ReadOpAttr, SetDeterministicComputeFn SetDeterministicCompute, KernelContextParallelForFn KernelContextParallelFor, SessionOptionsAppendExecutionProviderOpenVINOV2Fn SessionOptionsAppendExecutionProviderOpenVINOV2, SessionOptionsAppendExecutionProviderVitisAIFn SessionOptionsAppendExecutionProviderVitisAI, KernelContextGetScratchBufferFn KernelContextGetScratchBuffer, KernelInfoGetAllocatorFn KernelInfoGetAllocator, AddExternalInitializersFromFilesInMemoryFn AddExternalInitializersFromFilesInMemory, CreateLoraAdapterFn CreateLoraAdapter, CreateLoraAdapterFromArrayFn CreateLoraAdapterFromArray, ReleaseLoraAdapterFn ReleaseLoraAdapter, RunOptionsAddActiveLoraAdapterFn RunOptionsAddActiveLoraAdapter, SetEpDynamicOptionsFn SetEpDynamicOptions, ReleaseValueInfoFn ReleaseValueInfo, ReleaseNodeFn ReleaseNode, ReleaseGraphFn ReleaseGraph, ReleaseModelFn ReleaseModel, GetValueInfoNameFn GetValueInfoName, GetValueInfoTypeInfoFn GetValueInfoTypeInfo, GetModelEditorApiFn GetModelEditorApi, CreateTensorWithDataAndDeleterAsOrtValueFn CreateTensorWithDataAndDeleterAsOrtValue, SessionOptionsSetLoadCancellationFlagFn SessionOptionsSetLoadCancellationFlag, GetCompileApiFn GetCompileApi, CreateKeyValuePairsFn CreateKeyValuePairs, AddKeyValuePairFn AddKeyValuePair, GetKeyValueFn GetKeyValue, GetKeyValuePairsFn GetKeyValuePairs, RemoveKeyValuePairFn RemoveKeyValuePair, ReleaseKeyValuePairsFn ReleaseKeyValuePairs, RegisterExecutionProviderLibraryFn RegisterExecutionProviderLibrary, UnregisterExecutionProviderLibraryFn UnregisterExecutionProviderLibrary, GetEpDevicesFn GetEpDevices, SessionOptionsAppendExecutionProviderV2Fn SessionOptionsAppendExecutionProviderV2, SessionOptionsSetEpSelectionPolicyFn SessionOptionsSetEpSelectionPolicy, SessionOptionsSetEpSelectionPolicyDelegateFn SessionOptionsSetEpSelectionPolicyDelegate, HardwareDeviceTypeFn HardwareDeviceType, HardwareDeviceVendorIdFn HardwareDeviceVendorId, HardwareDeviceVendorFn HardwareDeviceVendor, HardwareDeviceDeviceIdFn HardwareDeviceDeviceId, HardwareDeviceMetadataFn HardwareDeviceMetadata, EpDeviceEpNameFn EpDeviceEpName, EpDeviceEpVendorFn EpDeviceEpVendor, EpDeviceEpMetadataFn EpDeviceEpMetadata, EpDeviceEpOptionsFn EpDeviceEpOptions, EpDeviceDeviceFn EpDeviceDevice, GetEpApiFn GetEpApi, GetTensorSizeInBytesFn GetTensorSizeInBytes, AllocatorGetStatsFn AllocatorGetStats, CreateMemoryInfoV2Fn CreateMemoryInfoV2, MemoryInfoGetDeviceMemTypeFn MemoryInfoGetDeviceMemType, MemoryInfoGetVendorIdFn MemoryInfoGetVendorId, ValueInfoGetValueProducerFn ValueInfoGetValueProducer, ValueInfoGetValueNumConsumersFn ValueInfoGetValueNumConsumers, ValueInfoGetValueConsumersFn ValueInfoGetValueConsumers, ValueInfoGetInitializerValueFn ValueInfoGetInitializerValue, ValueInfoGetExternalInitializerInfoFn ValueInfoGetExternalInitializerInfo, ValueInfoIsRequiredGraphInputFn ValueInfoIsRequiredGraphInput, ValueInfoIsOptionalGraphInputFn ValueInfoIsOptionalGraphInput, ValueInfoIsGraphOutputFn ValueInfoIsGraphOutput, ValueInfoIsConstantInitializerFn ValueInfoIsConstantInitializer, ValueInfoIsFromOuterScopeFn ValueInfoIsFromOuterScope, GraphGetNameFn GraphGetName, GraphGetModelPathFn GraphGetModelPath, GraphGetOnnxIRVersionFn GraphGetOnnxIRVersion, GraphGetNumOperatorSetsFn GraphGetNumOperatorSets, GraphGetOperatorSetsFn GraphGetOperatorSets, GraphGetNumInputsFn GraphGetNumInputs, GraphGetInputsFn GraphGetInputs, GraphGetNumOutputsFn GraphGetNumOutputs, GraphGetOutputsFn GraphGetOutputs, GraphGetNumInitializersFn GraphGetNumInitializers, GraphGetInitializersFn GraphGetInitializers, GraphGetNumNodesFn GraphGetNumNodes, GraphGetNodesFn GraphGetNodes, GraphGetParentNodeFn GraphGetParentNode, GraphGetGraphViewFn GraphGetGraphView, NodeGetIdFn NodeGetId, NodeGetNameFn NodeGetName, NodeGetOperatorTypeFn NodeGetOperatorType, NodeGetDomainFn NodeGetDomain, NodeGetSinceVersionFn NodeGetSinceVersion, NodeGetNumInputsFn NodeGetNumInputs, NodeGetInputsFn NodeGetInputs, NodeGetNumOutputsFn NodeGetNumOutputs, NodeGetOutputsFn NodeGetOutputs, NodeGetNumImplicitInputsFn NodeGetNumImplicitInputs, NodeGetImplicitInputsFn NodeGetImplicitInputs, NodeGetNumAttributesFn NodeGetNumAttributes, NodeGetAttributesFn NodeGetAttributes, NodeGetAttributeByNameFn NodeGetAttributeByName, OpAttrGetTensorAttributeAsOrtValueFn OpAttrGetTensorAttributeAsOrtValue, OpAttrGetTypeFn OpAttrGetType, OpAttrGetNameFn OpAttrGetName, NodeGetNumSubgraphsFn NodeGetNumSubgraphs, NodeGetSubgraphsFn NodeGetSubgraphs, NodeGetGraphFn NodeGetGraph, NodeGetEpNameFn NodeGetEpName, ReleaseExternalInitializerInfoFn ReleaseExternalInitializerInfo, ExternalInitializerInfoGetFilePathFn ExternalInitializerInfoGetFilePath, ExternalInitializerInfoGetFileOffsetFn ExternalInitializerInfoGetFileOffset, ExternalInitializerInfoGetByteSizeFn ExternalInitializerInfoGetByteSize, GetRunConfigEntryFn GetRunConfigEntry, EpDeviceMemoryInfoFn EpDeviceMemoryInfo, CreateSharedAllocatorFn CreateSharedAllocator, GetSharedAllocatorFn GetSharedAllocator, ReleaseSharedAllocatorFn ReleaseSharedAllocator, GetTensorDataFn GetTensorData, GetSessionOptionsConfigEntriesFn GetSessionOptionsConfigEntries, SessionGetMemoryInfoForInputsFn SessionGetMemoryInfoForInputs, SessionGetMemoryInfoForOutputsFn SessionGetMemoryInfoForOutputs, SessionGetEpDeviceForInputsFn SessionGetEpDeviceForInputs, CreateSyncStreamForEpDeviceFn CreateSyncStreamForEpDevice, SyncStreamGetHandleFn SyncStreamGetHandle, ReleaseSyncStreamFn ReleaseSyncStream, CopyTensorsFn CopyTensors, GraphGetModelMetadataFn GraphGetModelMetadata, GetModelCompatibilityForEpDevicesFn GetModelCompatibilityForEpDevices, CreateExternalInitializerInfoFn CreateExternalInitializerInfo, TensorTypeAndShapeHasShapeFn TensorTypeAndShapeHasShape, KernelInfoGetConfigEntriesFn KernelInfoGetConfigEntries, KernelInfoGetOperatorDomainFn KernelInfoGetOperatorDomain, KernelInfoGetOperatorTypeFn KernelInfoGetOperatorType, KernelInfoGetOperatorSinceVersionFn KernelInfoGetOperatorSinceVersion, GetInteropApiFn GetInteropApi, SessionGetEpDeviceForOutputsFn SessionGetEpDeviceForOutputs, GetNumHardwareDevicesFn GetNumHardwareDevices, GetHardwareDevicesFn GetHardwareDevices, GetHardwareDeviceEpIncompatibilityDetailsFn GetHardwareDeviceEpIncompatibilityDetails, DeviceEpIncompatibilityDetailsGetReasonsBitmaskFn DeviceEpIncompatibilityDetailsGetReasonsBitmask, DeviceEpIncompatibilityDetailsGetNotesFn DeviceEpIncompatibilityDetailsGetNotes, DeviceEpIncompatibilityDetailsGetErrorCodeFn DeviceEpIncompatibilityDetailsGetErrorCode, ReleaseDeviceEpIncompatibilityDetailsFn ReleaseDeviceEpIncompatibilityDetails, CreateEnvWithOptionsFn CreateEnvWithOptions, SessionGetEpGraphAssignmentInfoFn SessionGetEpGraphAssignmentInfo, EpAssignedSubgraphGetEpNameFn EpAssignedSubgraphGetEpName, EpAssignedSubgraphGetNodesFn EpAssignedSubgraphGetNodes, EpAssignedNodeGetNameFn EpAssignedNodeGetName, EpAssignedNodeGetDomainFn EpAssignedNodeGetDomain, EpAssignedNodeGetOperatorTypeFn EpAssignedNodeGetOperatorType, RunOptionsSetSyncStreamFn RunOptionsSetSyncStream)
	{
		this.CreateStatus = CreateStatus;
		this.GetErrorCode = GetErrorCode;
		this.GetErrorMessage = GetErrorMessage;
		this.CreateEnv = CreateEnv;
		this.CreateEnvWithCustomLogger = CreateEnvWithCustomLogger;
		this.EnableTelemetryEvents = EnableTelemetryEvents;
		this.DisableTelemetryEvents = DisableTelemetryEvents;
		this.CreateSession = CreateSession;
		this.CreateSessionFromArray = CreateSessionFromArray;
		this.Run = Run;
		this.CreateSessionOptions = CreateSessionOptions;
		this.SetOptimizedModelFilePath = SetOptimizedModelFilePath;
		this.CloneSessionOptions = CloneSessionOptions;
		this.SetSessionExecutionMode = SetSessionExecutionMode;
		this.EnableProfiling = EnableProfiling;
		this.DisableProfiling = DisableProfiling;
		this.EnableMemPattern = EnableMemPattern;
		this.DisableMemPattern = DisableMemPattern;
		this.EnableCpuMemArena = EnableCpuMemArena;
		this.DisableCpuMemArena = DisableCpuMemArena;
		this.SetSessionLogId = SetSessionLogId;
		this.SetSessionLogVerbosityLevel = SetSessionLogVerbosityLevel;
		this.SetSessionLogSeverityLevel = SetSessionLogSeverityLevel;
		this.SetSessionGraphOptimizationLevel = SetSessionGraphOptimizationLevel;
		this.SetIntraOpNumThreads = SetIntraOpNumThreads;
		this.SetInterOpNumThreads = SetInterOpNumThreads;
		this.CreateCustomOpDomain = CreateCustomOpDomain;
		this.CustomOpDomainAdd = CustomOpDomainAdd;
		this.AddCustomOpDomain = AddCustomOpDomain;
		this.RegisterCustomOpsLibrary = RegisterCustomOpsLibrary;
		this.SessionGetInputCount = SessionGetInputCount;
		this.SessionGetOutputCount = SessionGetOutputCount;
		this.SessionGetOverridableInitializerCount = SessionGetOverridableInitializerCount;
		this.SessionGetInputTypeInfo = SessionGetInputTypeInfo;
		this.SessionGetOutputTypeInfo = SessionGetOutputTypeInfo;
		this.SessionGetOverridableInitializerTypeInfo = SessionGetOverridableInitializerTypeInfo;
		this.SessionGetInputName = SessionGetInputName;
		this.SessionGetOutputName = SessionGetOutputName;
		this.SessionGetOverridableInitializerName = SessionGetOverridableInitializerName;
		this.CreateRunOptions = CreateRunOptions;
		this.RunOptionsSetRunLogVerbosityLevel = RunOptionsSetRunLogVerbosityLevel;
		this.RunOptionsSetRunLogSeverityLevel = RunOptionsSetRunLogSeverityLevel;
		this.RunOptionsSetRunTag = RunOptionsSetRunTag;
		this.RunOptionsGetRunLogVerbosityLevel = RunOptionsGetRunLogVerbosityLevel;
		this.RunOptionsGetRunLogSeverityLevel = RunOptionsGetRunLogSeverityLevel;
		this.RunOptionsGetRunTag = RunOptionsGetRunTag;
		this.RunOptionsSetTerminate = RunOptionsSetTerminate;
		this.RunOptionsUnsetTerminate = RunOptionsUnsetTerminate;
		this.CreateTensorAsOrtValue = CreateTensorAsOrtValue;
		this.CreateTensorWithDataAsOrtValue = CreateTensorWithDataAsOrtValue;
		this.IsTensor = IsTensor;
		this.GetTensorMutableData = GetTensorMutableData;
		this.FillStringTensor = FillStringTensor;
		this.GetStringTensorDataLength = GetStringTensorDataLength;
		this.GetStringTensorContent = GetStringTensorContent;
		this.CastTypeInfoToTensorInfo = CastTypeInfoToTensorInfo;
		this.GetOnnxTypeFromTypeInfo = GetOnnxTypeFromTypeInfo;
		this.CreateTensorTypeAndShapeInfo = CreateTensorTypeAndShapeInfo;
		this.SetTensorElementType = SetTensorElementType;
		this.SetDimensions = SetDimensions;
		this.GetTensorElementType = GetTensorElementType;
		this.GetDimensionsCount = GetDimensionsCount;
		this.GetDimensions = GetDimensions;
		this.GetSymbolicDimensions = GetSymbolicDimensions;
		this.GetTensorShapeElementCount = GetTensorShapeElementCount;
		this.GetTensorTypeAndShape = GetTensorTypeAndShape;
		this.GetTypeInfo = GetTypeInfo;
		this.GetValueType = GetValueType;
		this.CreateMemoryInfo = CreateMemoryInfo;
		this.CreateCpuMemoryInfo = CreateCpuMemoryInfo;
		this.CompareMemoryInfo = CompareMemoryInfo;
		this.MemoryInfoGetName = MemoryInfoGetName;
		this.MemoryInfoGetId = MemoryInfoGetId;
		this.MemoryInfoGetMemType = MemoryInfoGetMemType;
		this.MemoryInfoGetType = MemoryInfoGetType;
		this.AllocatorAlloc = AllocatorAlloc;
		this.AllocatorFree = AllocatorFree;
		this.AllocatorGetInfo = AllocatorGetInfo;
		this.GetAllocatorWithDefaultOptions = GetAllocatorWithDefaultOptions;
		this.AddFreeDimensionOverride = AddFreeDimensionOverride;
		this.GetValue = GetValue;
		this.GetValueCount = GetValueCount;
		this.CreateValue = CreateValue;
		this.CreateOpaqueValue = CreateOpaqueValue;
		this.GetOpaqueValue = GetOpaqueValue;
		this.KernelInfoGetAttributeFloat = KernelInfoGetAttributeFloat;
		this.KernelInfoGetAttributeInt64 = KernelInfoGetAttributeInt64;
		this.KernelInfoGetAttributeString = KernelInfoGetAttributeString;
		this.KernelContextGetInputCount = KernelContextGetInputCount;
		this.KernelContextGetOutputCount = KernelContextGetOutputCount;
		this.KernelContextGetInput = KernelContextGetInput;
		this.KernelContextGetOutput = KernelContextGetOutput;
		this.ReleaseEnv = ReleaseEnv;
		this.ReleaseStatus = ReleaseStatus;
		this.ReleaseMemoryInfo = ReleaseMemoryInfo;
		this.ReleaseSession = ReleaseSession;
		this.ReleaseValue = ReleaseValue;
		this.ReleaseRunOptions = ReleaseRunOptions;
		this.ReleaseTypeInfo = ReleaseTypeInfo;
		this.ReleaseTensorTypeAndShapeInfo = ReleaseTensorTypeAndShapeInfo;
		this.ReleaseSessionOptions = ReleaseSessionOptions;
		this.ReleaseCustomOpDomain = ReleaseCustomOpDomain;
		this.GetDenotationFromTypeInfo = GetDenotationFromTypeInfo;
		this.CastTypeInfoToMapTypeInfo = CastTypeInfoToMapTypeInfo;
		this.CastTypeInfoToSequenceTypeInfo = CastTypeInfoToSequenceTypeInfo;
		this.GetMapKeyType = GetMapKeyType;
		this.GetMapValueType = GetMapValueType;
		this.GetSequenceElementType = GetSequenceElementType;
		this.ReleaseMapTypeInfo = ReleaseMapTypeInfo;
		this.ReleaseSequenceTypeInfo = ReleaseSequenceTypeInfo;
		this.SessionEndProfiling = SessionEndProfiling;
		this.SessionGetModelMetadata = SessionGetModelMetadata;
		this.ModelMetadataGetProducerName = ModelMetadataGetProducerName;
		this.ModelMetadataGetGraphName = ModelMetadataGetGraphName;
		this.ModelMetadataGetDomain = ModelMetadataGetDomain;
		this.ModelMetadataGetDescription = ModelMetadataGetDescription;
		this.ModelMetadataLookupCustomMetadataMap = ModelMetadataLookupCustomMetadataMap;
		this.ModelMetadataGetVersion = ModelMetadataGetVersion;
		this.ReleaseModelMetadata = ReleaseModelMetadata;
		this.CreateEnvWithGlobalThreadPools = CreateEnvWithGlobalThreadPools;
		this.DisablePerSessionThreads = DisablePerSessionThreads;
		this.CreateThreadingOptions = CreateThreadingOptions;
		this.ReleaseThreadingOptions = ReleaseThreadingOptions;
		this.ModelMetadataGetCustomMetadataMapKeys = ModelMetadataGetCustomMetadataMapKeys;
		this.AddFreeDimensionOverrideByName = AddFreeDimensionOverrideByName;
		this.GetAvailableProviders = GetAvailableProviders;
		this.ReleaseAvailableProviders = ReleaseAvailableProviders;
		this.GetStringTensorElementLength = GetStringTensorElementLength;
		this.GetStringTensorElement = GetStringTensorElement;
		this.FillStringTensorElement = FillStringTensorElement;
		this.AddSessionConfigEntry = AddSessionConfigEntry;
		this.CreateAllocator = CreateAllocator;
		this.ReleaseAllocator = ReleaseAllocator;
		this.RunWithBinding = RunWithBinding;
		this.CreateIoBinding = CreateIoBinding;
		this.ReleaseIoBinding = ReleaseIoBinding;
		this.BindInput = BindInput;
		this.BindOutput = BindOutput;
		this.BindOutputToDevice = BindOutputToDevice;
		this.GetBoundOutputNames = GetBoundOutputNames;
		this.GetBoundOutputValues = GetBoundOutputValues;
		this.ClearBoundInputs = ClearBoundInputs;
		this.ClearBoundOutputs = ClearBoundOutputs;
		this.TensorAt = TensorAt;
		this.CreateAndRegisterAllocator = CreateAndRegisterAllocator;
		this.SetLanguageProjection = SetLanguageProjection;
		this.SessionGetProfilingStartTimeNs = SessionGetProfilingStartTimeNs;
		this.SetGlobalIntraOpNumThreads = SetGlobalIntraOpNumThreads;
		this.SetGlobalInterOpNumThreads = SetGlobalInterOpNumThreads;
		this.SetGlobalSpinControl = SetGlobalSpinControl;
		this.AddInitializer = AddInitializer;
		this.CreateEnvWithCustomLoggerAndGlobalThreadPools = CreateEnvWithCustomLoggerAndGlobalThreadPools;
		this.SessionOptionsAppendExecutionProviderCUDA = SessionOptionsAppendExecutionProviderCUDA;
		this.SessionOptionsAppendExecutionProviderROCM = SessionOptionsAppendExecutionProviderROCM;
		this.SessionOptionsAppendExecutionProviderOpenVINO = SessionOptionsAppendExecutionProviderOpenVINO;
		this.SetGlobalDenormalAsZero = SetGlobalDenormalAsZero;
		this.CreateArenaCfg = CreateArenaCfg;
		this.ReleaseArenaCfg = ReleaseArenaCfg;
		this.ModelMetadataGetGraphDescription = ModelMetadataGetGraphDescription;
		this.SessionOptionsAppendExecutionProviderTensorRT = SessionOptionsAppendExecutionProviderTensorRT;
		this.SetCurrentGpuDeviceId = SetCurrentGpuDeviceId;
		this.GetCurrentGpuDeviceId = GetCurrentGpuDeviceId;
		this.KernelInfoGetAttributeArrayFloat = KernelInfoGetAttributeArrayFloat;
		this.KernelInfoGetAttributeArrayInt64 = KernelInfoGetAttributeArrayInt64;
		this.CreateArenaCfgV2 = CreateArenaCfgV2;
		this.AddRunConfigEntry = AddRunConfigEntry;
		this.CreatePrepackedWeightsContainer = CreatePrepackedWeightsContainer;
		this.ReleasePrepackedWeightsContainer = ReleasePrepackedWeightsContainer;
		this.CreateSessionWithPrepackedWeightsContainer = CreateSessionWithPrepackedWeightsContainer;
		this.CreateSessionFromArrayWithPrepackedWeightsContainer = CreateSessionFromArrayWithPrepackedWeightsContainer;
		this.SessionOptionsAppendExecutionProviderTensorRTV2 = SessionOptionsAppendExecutionProviderTensorRTV2;
		this.CreateTensorRTProviderOptions = CreateTensorRTProviderOptions;
		this.UpdateTensorRTProviderOptions = UpdateTensorRTProviderOptions;
		this.GetTensorRTProviderOptionsAsString = GetTensorRTProviderOptionsAsString;
		this.ReleaseTensorRTProviderOptions = ReleaseTensorRTProviderOptions;
		this.EnableOrtCustomOps = EnableOrtCustomOps;
		this.RegisterAllocator = RegisterAllocator;
		this.UnregisterAllocator = UnregisterAllocator;
		this.IsSparseTensor = IsSparseTensor;
		this.CreateSparseTensorAsOrtValue = CreateSparseTensorAsOrtValue;
		this.FillSparseTensorCoo = FillSparseTensorCoo;
		this.FillSparseTensorCsr = FillSparseTensorCsr;
		this.FillSparseTensorBlockSparse = FillSparseTensorBlockSparse;
		this.CreateSparseTensorWithValuesAsOrtValue = CreateSparseTensorWithValuesAsOrtValue;
		this.UseCooIndices = UseCooIndices;
		this.UseCsrIndices = UseCsrIndices;
		this.UseBlockSparseIndices = UseBlockSparseIndices;
		this.GetSparseTensorFormat = GetSparseTensorFormat;
		this.GetSparseTensorValuesTypeAndShape = GetSparseTensorValuesTypeAndShape;
		this.GetSparseTensorValues = GetSparseTensorValues;
		this.GetSparseTensorIndicesTypeShape = GetSparseTensorIndicesTypeShape;
		this.GetSparseTensorIndices = GetSparseTensorIndices;
		this.HasValue = HasValue;
		this.KernelContextGetGPUComputeStream = KernelContextGetGPUComputeStream;
		this.GetTensorMemoryInfo = GetTensorMemoryInfo;
		this.GetExecutionProviderApi = GetExecutionProviderApi;
		this.SessionOptionsSetCustomCreateThreadFn = SessionOptionsSetCustomCreateThreadFn;
		this.SessionOptionsSetCustomThreadCreationOptions = SessionOptionsSetCustomThreadCreationOptions;
		this.SessionOptionsSetCustomJoinThreadFn = SessionOptionsSetCustomJoinThreadFn;
		this.SetGlobalCustomCreateThreadFn = SetGlobalCustomCreateThreadFn;
		this.SetGlobalCustomThreadCreationOptions = SetGlobalCustomThreadCreationOptions;
		this.SetGlobalCustomJoinThreadFn = SetGlobalCustomJoinThreadFn;
		this.SynchronizeBoundInputs = SynchronizeBoundInputs;
		this.SynchronizeBoundOutputs = SynchronizeBoundOutputs;
		this.SessionOptionsAppendExecutionProviderCUDAV2 = SessionOptionsAppendExecutionProviderCUDAV2;
		this.CreateCUDAProviderOptions = CreateCUDAProviderOptions;
		this.UpdateCUDAProviderOptions = UpdateCUDAProviderOptions;
		this.GetCUDAProviderOptionsAsString = GetCUDAProviderOptionsAsString;
		this.ReleaseCUDAProviderOptions = ReleaseCUDAProviderOptions;
		this.SessionOptionsAppendExecutionProviderMIGraphX = SessionOptionsAppendExecutionProviderMIGraphX;
		this.AddExternalInitializers = AddExternalInitializers;
		this.CreateOpAttr = CreateOpAttr;
		this.ReleaseOpAttr = ReleaseOpAttr;
		this.CreateOp = CreateOp;
		this.InvokeOp = InvokeOp;
		this.ReleaseOp = ReleaseOp;
		this.SessionOptionsAppendExecutionProvider = SessionOptionsAppendExecutionProvider;
		this.CopyKernelInfo = CopyKernelInfo;
		this.ReleaseKernelInfo = ReleaseKernelInfo;
		this.GetTrainingApi = GetTrainingApi;
		this.SessionOptionsAppendExecutionProviderCANN = SessionOptionsAppendExecutionProviderCANN;
		this.CreateCANNProviderOptions = CreateCANNProviderOptions;
		this.UpdateCANNProviderOptions = UpdateCANNProviderOptions;
		this.GetCANNProviderOptionsAsString = GetCANNProviderOptionsAsString;
		this.ReleaseCANNProviderOptions = ReleaseCANNProviderOptions;
		this.MemoryInfoGetDeviceType = MemoryInfoGetDeviceType;
		this.UpdateEnvWithCustomLogLevel = UpdateEnvWithCustomLogLevel;
		this.SetGlobalIntraOpThreadAffinity = SetGlobalIntraOpThreadAffinity;
		this.RegisterCustomOpsLibraryV2 = RegisterCustomOpsLibraryV2;
		this.RegisterCustomOpsUsingFunction = RegisterCustomOpsUsingFunction;
		this.KernelInfoGetInputCount = KernelInfoGetInputCount;
		this.KernelInfoGetOutputCount = KernelInfoGetOutputCount;
		this.KernelInfoGetInputName = KernelInfoGetInputName;
		this.KernelInfoGetOutputName = KernelInfoGetOutputName;
		this.KernelInfoGetInputTypeInfo = KernelInfoGetInputTypeInfo;
		this.KernelInfoGetOutputTypeInfo = KernelInfoGetOutputTypeInfo;
		this.KernelInfoGetAttributeTensor = KernelInfoGetAttributeTensor;
		this.HasSessionConfigEntry = HasSessionConfigEntry;
		this.GetSessionConfigEntry = GetSessionConfigEntry;
		this.SessionOptionsAppendExecutionProviderDnnl = SessionOptionsAppendExecutionProviderDnnl;
		this.CreateDnnlProviderOptions = CreateDnnlProviderOptions;
		this.UpdateDnnlProviderOptions = UpdateDnnlProviderOptions;
		this.GetDnnlProviderOptionsAsString = GetDnnlProviderOptionsAsString;
		this.ReleaseDnnlProviderOptions = ReleaseDnnlProviderOptions;
		this.KernelInfoGetNodeName = KernelInfoGetNodeName;
		this.KernelInfoGetLogger = KernelInfoGetLogger;
		this.KernelContextGetLogger = KernelContextGetLogger;
		this.LoggerLogMessage = LoggerLogMessage;
		this.LoggerGetLoggingSeverityLevel = LoggerGetLoggingSeverityLevel;
		this.KernelInfoGetConstantInputTensor = KernelInfoGetConstantInputTensor;
		this.CastTypeInfoToOptionalTypeInfo = CastTypeInfoToOptionalTypeInfo;
		this.GetOptionalContainedTypeInfo = GetOptionalContainedTypeInfo;
		this.GetResizedStringTensorElementBuffer = GetResizedStringTensorElementBuffer;
		this.KernelContextGetAllocator = KernelContextGetAllocator;
		this.GetBuildInfoString = GetBuildInfoString;
		this.CreateROCMProviderOptions = CreateROCMProviderOptions;
		this.UpdateROCMProviderOptions = UpdateROCMProviderOptions;
		this.GetROCMProviderOptionsAsString = GetROCMProviderOptionsAsString;
		this.ReleaseROCMProviderOptions = ReleaseROCMProviderOptions;
		this.CreateAndRegisterAllocatorV2 = CreateAndRegisterAllocatorV2;
		this.RunAsync = RunAsync;
		this.UpdateTensorRTProviderOptionsWithValue = UpdateTensorRTProviderOptionsWithValue;
		this.GetTensorRTProviderOptionsByName = GetTensorRTProviderOptionsByName;
		this.UpdateCUDAProviderOptionsWithValue = UpdateCUDAProviderOptionsWithValue;
		this.GetCUDAProviderOptionsByName = GetCUDAProviderOptionsByName;
		this.KernelContextGetResource = KernelContextGetResource;
		this.SetUserLoggingFunction = SetUserLoggingFunction;
		this.ShapeInferContextGetInputCount = ShapeInferContextGetInputCount;
		this.ShapeInferContextGetInputTypeShape = ShapeInferContextGetInputTypeShape;
		this.ShapeInferContextGetAttribute = ShapeInferContextGetAttribute;
		this.ShapeInferContextSetOutputTypeShape = ShapeInferContextSetOutputTypeShape;
		this.SetSymbolicDimensions = SetSymbolicDimensions;
		this.ReadOpAttr = ReadOpAttr;
		this.SetDeterministicCompute = SetDeterministicCompute;
		this.KernelContextParallelFor = KernelContextParallelFor;
		this.SessionOptionsAppendExecutionProviderOpenVINOV2 = SessionOptionsAppendExecutionProviderOpenVINOV2;
		this.SessionOptionsAppendExecutionProviderVitisAI = SessionOptionsAppendExecutionProviderVitisAI;
		this.KernelContextGetScratchBuffer = KernelContextGetScratchBuffer;
		this.KernelInfoGetAllocator = KernelInfoGetAllocator;
		this.AddExternalInitializersFromFilesInMemory = AddExternalInitializersFromFilesInMemory;
		this.CreateLoraAdapter = CreateLoraAdapter;
		this.CreateLoraAdapterFromArray = CreateLoraAdapterFromArray;
		this.ReleaseLoraAdapter = ReleaseLoraAdapter;
		this.RunOptionsAddActiveLoraAdapter = RunOptionsAddActiveLoraAdapter;
		this.SetEpDynamicOptions = SetEpDynamicOptions;
		this.ReleaseValueInfo = ReleaseValueInfo;
		this.ReleaseNode = ReleaseNode;
		this.ReleaseGraph = ReleaseGraph;
		this.ReleaseModel = ReleaseModel;
		this.GetValueInfoName = GetValueInfoName;
		this.GetValueInfoTypeInfo = GetValueInfoTypeInfo;
		this.GetModelEditorApi = GetModelEditorApi;
		this.CreateTensorWithDataAndDeleterAsOrtValue = CreateTensorWithDataAndDeleterAsOrtValue;
		this.SessionOptionsSetLoadCancellationFlag = SessionOptionsSetLoadCancellationFlag;
		this.GetCompileApi = GetCompileApi;
		this.CreateKeyValuePairs = CreateKeyValuePairs;
		this.AddKeyValuePair = AddKeyValuePair;
		this.GetKeyValue = GetKeyValue;
		this.GetKeyValuePairs = GetKeyValuePairs;
		this.RemoveKeyValuePair = RemoveKeyValuePair;
		this.ReleaseKeyValuePairs = ReleaseKeyValuePairs;
		this.RegisterExecutionProviderLibrary = RegisterExecutionProviderLibrary;
		this.UnregisterExecutionProviderLibrary = UnregisterExecutionProviderLibrary;
		this.GetEpDevices = GetEpDevices;
		this.SessionOptionsAppendExecutionProviderV2 = SessionOptionsAppendExecutionProviderV2;
		this.SessionOptionsSetEpSelectionPolicy = SessionOptionsSetEpSelectionPolicy;
		this.SessionOptionsSetEpSelectionPolicyDelegate = SessionOptionsSetEpSelectionPolicyDelegate;
		this.HardwareDeviceType = HardwareDeviceType;
		this.HardwareDeviceVendorId = HardwareDeviceVendorId;
		this.HardwareDeviceVendor = HardwareDeviceVendor;
		this.HardwareDeviceDeviceId = HardwareDeviceDeviceId;
		this.HardwareDeviceMetadata = HardwareDeviceMetadata;
		this.EpDeviceEpName = EpDeviceEpName;
		this.EpDeviceEpVendor = EpDeviceEpVendor;
		this.EpDeviceEpMetadata = EpDeviceEpMetadata;
		this.EpDeviceEpOptions = EpDeviceEpOptions;
		this.EpDeviceDevice = EpDeviceDevice;
		this.GetEpApi = GetEpApi;
		this.GetTensorSizeInBytes = GetTensorSizeInBytes;
		this.AllocatorGetStats = AllocatorGetStats;
		this.CreateMemoryInfoV2 = CreateMemoryInfoV2;
		this.MemoryInfoGetDeviceMemType = MemoryInfoGetDeviceMemType;
		this.MemoryInfoGetVendorId = MemoryInfoGetVendorId;
		this.ValueInfoGetValueProducer = ValueInfoGetValueProducer;
		this.ValueInfoGetValueNumConsumers = ValueInfoGetValueNumConsumers;
		this.ValueInfoGetValueConsumers = ValueInfoGetValueConsumers;
		this.ValueInfoGetInitializerValue = ValueInfoGetInitializerValue;
		this.ValueInfoGetExternalInitializerInfo = ValueInfoGetExternalInitializerInfo;
		this.ValueInfoIsRequiredGraphInput = ValueInfoIsRequiredGraphInput;
		this.ValueInfoIsOptionalGraphInput = ValueInfoIsOptionalGraphInput;
		this.ValueInfoIsGraphOutput = ValueInfoIsGraphOutput;
		this.ValueInfoIsConstantInitializer = ValueInfoIsConstantInitializer;
		this.ValueInfoIsFromOuterScope = ValueInfoIsFromOuterScope;
		this.GraphGetName = GraphGetName;
		this.GraphGetModelPath = GraphGetModelPath;
		this.GraphGetOnnxIRVersion = GraphGetOnnxIRVersion;
		this.GraphGetNumOperatorSets = GraphGetNumOperatorSets;
		this.GraphGetOperatorSets = GraphGetOperatorSets;
		this.GraphGetNumInputs = GraphGetNumInputs;
		this.GraphGetInputs = GraphGetInputs;
		this.GraphGetNumOutputs = GraphGetNumOutputs;
		this.GraphGetOutputs = GraphGetOutputs;
		this.GraphGetNumInitializers = GraphGetNumInitializers;
		this.GraphGetInitializers = GraphGetInitializers;
		this.GraphGetNumNodes = GraphGetNumNodes;
		this.GraphGetNodes = GraphGetNodes;
		this.GraphGetParentNode = GraphGetParentNode;
		this.GraphGetGraphView = GraphGetGraphView;
		this.NodeGetId = NodeGetId;
		this.NodeGetName = NodeGetName;
		this.NodeGetOperatorType = NodeGetOperatorType;
		this.NodeGetDomain = NodeGetDomain;
		this.NodeGetSinceVersion = NodeGetSinceVersion;
		this.NodeGetNumInputs = NodeGetNumInputs;
		this.NodeGetInputs = NodeGetInputs;
		this.NodeGetNumOutputs = NodeGetNumOutputs;
		this.NodeGetOutputs = NodeGetOutputs;
		this.NodeGetNumImplicitInputs = NodeGetNumImplicitInputs;
		this.NodeGetImplicitInputs = NodeGetImplicitInputs;
		this.NodeGetNumAttributes = NodeGetNumAttributes;
		this.NodeGetAttributes = NodeGetAttributes;
		this.NodeGetAttributeByName = NodeGetAttributeByName;
		this.OpAttrGetTensorAttributeAsOrtValue = OpAttrGetTensorAttributeAsOrtValue;
		this.OpAttrGetType = OpAttrGetType;
		this.OpAttrGetName = OpAttrGetName;
		this.NodeGetNumSubgraphs = NodeGetNumSubgraphs;
		this.NodeGetSubgraphs = NodeGetSubgraphs;
		this.NodeGetGraph = NodeGetGraph;
		this.NodeGetEpName = NodeGetEpName;
		this.ReleaseExternalInitializerInfo = ReleaseExternalInitializerInfo;
		this.ExternalInitializerInfoGetFilePath = ExternalInitializerInfoGetFilePath;
		this.ExternalInitializerInfoGetFileOffset = ExternalInitializerInfoGetFileOffset;
		this.ExternalInitializerInfoGetByteSize = ExternalInitializerInfoGetByteSize;
		this.GetRunConfigEntry = GetRunConfigEntry;
		this.EpDeviceMemoryInfo = EpDeviceMemoryInfo;
		this.CreateSharedAllocator = CreateSharedAllocator;
		this.GetSharedAllocator = GetSharedAllocator;
		this.ReleaseSharedAllocator = ReleaseSharedAllocator;
		this.GetTensorData = GetTensorData;
		this.GetSessionOptionsConfigEntries = GetSessionOptionsConfigEntries;
		this.SessionGetMemoryInfoForInputs = SessionGetMemoryInfoForInputs;
		this.SessionGetMemoryInfoForOutputs = SessionGetMemoryInfoForOutputs;
		this.SessionGetEpDeviceForInputs = SessionGetEpDeviceForInputs;
		this.CreateSyncStreamForEpDevice = CreateSyncStreamForEpDevice;
		this.SyncStreamGetHandle = SyncStreamGetHandle;
		this.ReleaseSyncStream = ReleaseSyncStream;
		this.CopyTensors = CopyTensors;
		this.GraphGetModelMetadata = GraphGetModelMetadata;
		this.GetModelCompatibilityForEpDevices = GetModelCompatibilityForEpDevices;
		this.CreateExternalInitializerInfo = CreateExternalInitializerInfo;
		this.TensorTypeAndShapeHasShape = TensorTypeAndShapeHasShape;
		this.KernelInfoGetConfigEntries = KernelInfoGetConfigEntries;
		this.KernelInfoGetOperatorDomain = KernelInfoGetOperatorDomain;
		this.KernelInfoGetOperatorType = KernelInfoGetOperatorType;
		this.KernelInfoGetOperatorSinceVersion = KernelInfoGetOperatorSinceVersion;
		this.GetInteropApi = GetInteropApi;
		this.SessionGetEpDeviceForOutputs = SessionGetEpDeviceForOutputs;
		this.GetNumHardwareDevices = GetNumHardwareDevices;
		this.GetHardwareDevices = GetHardwareDevices;
		this.GetHardwareDeviceEpIncompatibilityDetails = GetHardwareDeviceEpIncompatibilityDetails;
		this.DeviceEpIncompatibilityDetailsGetReasonsBitmask = DeviceEpIncompatibilityDetailsGetReasonsBitmask;
		this.DeviceEpIncompatibilityDetailsGetNotes = DeviceEpIncompatibilityDetailsGetNotes;
		this.DeviceEpIncompatibilityDetailsGetErrorCode = DeviceEpIncompatibilityDetailsGetErrorCode;
		this.ReleaseDeviceEpIncompatibilityDetails = ReleaseDeviceEpIncompatibilityDetails;
		this.CreateEnvWithOptions = CreateEnvWithOptions;
		this.SessionGetEpGraphAssignmentInfo = SessionGetEpGraphAssignmentInfo;
		this.EpAssignedSubgraphGetEpName = EpAssignedSubgraphGetEpName;
		this.EpAssignedSubgraphGetNodes = EpAssignedSubgraphGetNodes;
		this.EpAssignedNodeGetName = EpAssignedNodeGetName;
		this.EpAssignedNodeGetDomain = EpAssignedNodeGetDomain;
		this.EpAssignedNodeGetOperatorType = EpAssignedNodeGetOperatorType;
		this.RunOptionsSetSyncStream = RunOptionsSetSyncStream;
	}
}

[CRepr]
public struct OrtCustomOp
{
	public uint32 Version;

	public CreateKernelFn CreateKernel;

	public GetNameFn GetName;

	public GetExecutionProviderTypeFn GetExecutionProviderType;

	public GetInputTypeFn GetInputType;

	public GetInputTypeCountFn GetInputTypeCount;

	public GetOutputTypeFn GetOutputType;

	public GetOutputTypeCountFn GetOutputTypeCount;

	public KernelComputeFn KernelCompute;

	public KernelDestroyFn KernelDestroy;

	public GetInputCharacteristicFn GetInputCharacteristic;

	public GetOutputCharacteristicFn GetOutputCharacteristic;

	public GetInputMemoryTypeFn GetInputMemoryType;

	public GetVariadicInputMinArityFn GetVariadicInputMinArity;

	public GetVariadicInputHomogeneityFn GetVariadicInputHomogeneity;

	public GetVariadicOutputMinArityFn GetVariadicOutputMinArity;

	public GetVariadicOutputHomogeneityFn GetVariadicOutputHomogeneity;

	public CreateKernelV2Fn CreateKernelV2;

	public KernelComputeV2Fn KernelComputeV2;

	public InferOutputShapeFnFn InferOutputShapeFn;

	public GetStartVersionFn GetStartVersion;

	public GetEndVersionFn GetEndVersion;

	public GetMayInplaceFn GetMayInplace;

	public ReleaseMayInplaceFn ReleaseMayInplace;

	public GetAliasMapFn GetAliasMap;

	public ReleaseAliasMapFn ReleaseAliasMap;

	public this(uint32 version, CreateKernelFn CreateKernel, GetNameFn GetName, GetExecutionProviderTypeFn GetExecutionProviderType, GetInputTypeFn GetInputType, GetInputTypeCountFn GetInputTypeCount, GetOutputTypeFn GetOutputType, GetOutputTypeCountFn GetOutputTypeCount, KernelComputeFn KernelCompute, KernelDestroyFn KernelDestroy, GetInputCharacteristicFn GetInputCharacteristic, GetOutputCharacteristicFn GetOutputCharacteristic, GetInputMemoryTypeFn GetInputMemoryType, GetVariadicInputMinArityFn GetVariadicInputMinArity, GetVariadicInputHomogeneityFn GetVariadicInputHomogeneity, GetVariadicOutputMinArityFn GetVariadicOutputMinArity, GetVariadicOutputHomogeneityFn GetVariadicOutputHomogeneity, CreateKernelV2Fn CreateKernelV2, KernelComputeV2Fn KernelComputeV2, InferOutputShapeFnFn InferOutputShapeFn, GetStartVersionFn GetStartVersion, GetEndVersionFn GetEndVersion, GetMayInplaceFn GetMayInplace, ReleaseMayInplaceFn ReleaseMayInplace, GetAliasMapFn GetAliasMap, ReleaseAliasMapFn ReleaseAliasMap)
	{
		this.Version = version;
		this.CreateKernel = CreateKernel;
		this.GetName = GetName;
		this.GetExecutionProviderType = GetExecutionProviderType;
		this.GetInputType = GetInputType;
		this.GetInputTypeCount = GetInputTypeCount;
		this.GetOutputType = GetOutputType;
		this.GetOutputTypeCount = GetOutputTypeCount;
		this.KernelCompute = KernelCompute;
		this.KernelDestroy = KernelDestroy;
		this.GetInputCharacteristic = GetInputCharacteristic;
		this.GetOutputCharacteristic = GetOutputCharacteristic;
		this.GetInputMemoryType = GetInputMemoryType;
		this.GetVariadicInputMinArity = GetVariadicInputMinArity;
		this.GetVariadicInputHomogeneity = GetVariadicInputHomogeneity;
		this.GetVariadicOutputMinArity = GetVariadicOutputMinArity;
		this.GetVariadicOutputHomogeneity = GetVariadicOutputHomogeneity;
		this.CreateKernelV2 = CreateKernelV2;
		this.KernelComputeV2 = KernelComputeV2;
		this.InferOutputShapeFn = InferOutputShapeFn;
		this.GetStartVersion = GetStartVersion;
		this.GetEndVersion = GetEndVersion;
		this.GetMayInplace = GetMayInplace;
		this.ReleaseMayInplace = ReleaseMayInplace;
		this.GetAliasMap = GetAliasMap;
		this.ReleaseAliasMap = ReleaseAliasMap;
	}
}

[CRepr]
public struct OrtModelEditorApi
{
	public CreateTensorTypeInfoFn CreateTensorTypeInfo;

	public CreateSparseTensorTypeInfoFn CreateSparseTensorTypeInfo;

	public CreateMapTypeInfoFn CreateMapTypeInfo;

	public CreateSequenceTypeInfoFn CreateSequenceTypeInfo;

	public CreateOptionalTypeInfoFn CreateOptionalTypeInfo;

	public CreateValueInfoFn CreateValueInfo;

	public CreateNodeFn CreateNode;

	public CreateGraphFn CreateGraph;

	public SetGraphInputsFn SetGraphInputs;

	public SetGraphOutputsFn SetGraphOutputs;

	public AddInitializerToGraphFn AddInitializerToGraph;

	public AddNodeToGraphFn AddNodeToGraph;

	public CreateModelFn CreateModel;

	public AddGraphToModelFn AddGraphToModel;

	public CreateSessionFromModelFn CreateSessionFromModel;

	public CreateModelEditorSessionFn CreateModelEditorSession;

	public CreateModelEditorSessionFromArrayFn CreateModelEditorSessionFromArray;

	public SessionGetOpsetForDomainFn SessionGetOpsetForDomain;

	public ApplyModelToModelEditorSessionFn ApplyModelToModelEditorSession;

	public FinalizeModelEditorSessionFn FinalizeModelEditorSession;

	public this(CreateTensorTypeInfoFn CreateTensorTypeInfo, CreateSparseTensorTypeInfoFn CreateSparseTensorTypeInfo, CreateMapTypeInfoFn CreateMapTypeInfo, CreateSequenceTypeInfoFn CreateSequenceTypeInfo, CreateOptionalTypeInfoFn CreateOptionalTypeInfo, CreateValueInfoFn CreateValueInfo, CreateNodeFn CreateNode, CreateGraphFn CreateGraph, SetGraphInputsFn SetGraphInputs, SetGraphOutputsFn SetGraphOutputs, AddInitializerToGraphFn AddInitializerToGraph, AddNodeToGraphFn AddNodeToGraph, CreateModelFn CreateModel, AddGraphToModelFn AddGraphToModel, CreateSessionFromModelFn CreateSessionFromModel, CreateModelEditorSessionFn CreateModelEditorSession, CreateModelEditorSessionFromArrayFn CreateModelEditorSessionFromArray, SessionGetOpsetForDomainFn SessionGetOpsetForDomain, ApplyModelToModelEditorSessionFn ApplyModelToModelEditorSession, FinalizeModelEditorSessionFn FinalizeModelEditorSession)
	{
		this.CreateTensorTypeInfo = CreateTensorTypeInfo;
		this.CreateSparseTensorTypeInfo = CreateSparseTensorTypeInfo;
		this.CreateMapTypeInfo = CreateMapTypeInfo;
		this.CreateSequenceTypeInfo = CreateSequenceTypeInfo;
		this.CreateOptionalTypeInfo = CreateOptionalTypeInfo;
		this.CreateValueInfo = CreateValueInfo;
		this.CreateNode = CreateNode;
		this.CreateGraph = CreateGraph;
		this.SetGraphInputs = SetGraphInputs;
		this.SetGraphOutputs = SetGraphOutputs;
		this.AddInitializerToGraph = AddInitializerToGraph;
		this.AddNodeToGraph = AddNodeToGraph;
		this.CreateModel = CreateModel;
		this.AddGraphToModel = AddGraphToModel;
		this.CreateSessionFromModel = CreateSessionFromModel;
		this.CreateModelEditorSession = CreateModelEditorSession;
		this.CreateModelEditorSessionFromArray = CreateModelEditorSessionFromArray;
		this.SessionGetOpsetForDomain = SessionGetOpsetForDomain;
		this.ApplyModelToModelEditorSession = ApplyModelToModelEditorSession;
		this.FinalizeModelEditorSession = FinalizeModelEditorSession;
	}
}

[CRepr]
public struct OrtCompileApi
{
	public ReleaseModelCompilationOptionsFn ReleaseModelCompilationOptions;

	public CreateModelCompilationOptionsFromSessionOptionsFn CreateModelCompilationOptionsFromSessionOptions;

	public ModelCompilationOptionsSetInputModelPathFn ModelCompilationOptionsSetInputModelPath;

	public ModelCompilationOptionsSetInputModelFromBufferFn ModelCompilationOptionsSetInputModelFromBuffer;

	public ModelCompilationOptionsSetOutputModelPathFn ModelCompilationOptionsSetOutputModelPath;

	public ModelCompilationOptionsSetOutputModelExternalInitializersFileFn ModelCompilationOptionsSetOutputModelExternalInitializersFile;

	public ModelCompilationOptionsSetOutputModelBufferFn ModelCompilationOptionsSetOutputModelBuffer;

	public ModelCompilationOptionsSetEpContextEmbedModeFn ModelCompilationOptionsSetEpContextEmbedMode;

	public CompileModelFn CompileModel;

	public ModelCompilationOptionsSetFlagsFn ModelCompilationOptionsSetFlags;

	public ModelCompilationOptionsSetEpContextBinaryInformationFn ModelCompilationOptionsSetEpContextBinaryInformation;

	public ModelCompilationOptionsSetGraphOptimizationLevelFn ModelCompilationOptionsSetGraphOptimizationLevel;

	public ModelCompilationOptionsSetOutputModelWriteFuncFn ModelCompilationOptionsSetOutputModelWriteFunc;

	public ModelCompilationOptionsSetOutputModelGetInitializerLocationFuncFn ModelCompilationOptionsSetOutputModelGetInitializerLocationFunc;

	public this(ReleaseModelCompilationOptionsFn ReleaseModelCompilationOptions, CreateModelCompilationOptionsFromSessionOptionsFn CreateModelCompilationOptionsFromSessionOptions, ModelCompilationOptionsSetInputModelPathFn ModelCompilationOptionsSetInputModelPath, ModelCompilationOptionsSetInputModelFromBufferFn ModelCompilationOptionsSetInputModelFromBuffer, ModelCompilationOptionsSetOutputModelPathFn ModelCompilationOptionsSetOutputModelPath, ModelCompilationOptionsSetOutputModelExternalInitializersFileFn ModelCompilationOptionsSetOutputModelExternalInitializersFile, ModelCompilationOptionsSetOutputModelBufferFn ModelCompilationOptionsSetOutputModelBuffer, ModelCompilationOptionsSetEpContextEmbedModeFn ModelCompilationOptionsSetEpContextEmbedMode, CompileModelFn CompileModel, ModelCompilationOptionsSetFlagsFn ModelCompilationOptionsSetFlags, ModelCompilationOptionsSetEpContextBinaryInformationFn ModelCompilationOptionsSetEpContextBinaryInformation, ModelCompilationOptionsSetGraphOptimizationLevelFn ModelCompilationOptionsSetGraphOptimizationLevel, ModelCompilationOptionsSetOutputModelWriteFuncFn ModelCompilationOptionsSetOutputModelWriteFunc, ModelCompilationOptionsSetOutputModelGetInitializerLocationFuncFn ModelCompilationOptionsSetOutputModelGetInitializerLocationFunc)
	{
		this.ReleaseModelCompilationOptions = ReleaseModelCompilationOptions;
		this.CreateModelCompilationOptionsFromSessionOptions = CreateModelCompilationOptionsFromSessionOptions;
		this.ModelCompilationOptionsSetInputModelPath = ModelCompilationOptionsSetInputModelPath;
		this.ModelCompilationOptionsSetInputModelFromBuffer = ModelCompilationOptionsSetInputModelFromBuffer;
		this.ModelCompilationOptionsSetOutputModelPath = ModelCompilationOptionsSetOutputModelPath;
		this.ModelCompilationOptionsSetOutputModelExternalInitializersFile = ModelCompilationOptionsSetOutputModelExternalInitializersFile;
		this.ModelCompilationOptionsSetOutputModelBuffer = ModelCompilationOptionsSetOutputModelBuffer;
		this.ModelCompilationOptionsSetEpContextEmbedMode = ModelCompilationOptionsSetEpContextEmbedMode;
		this.CompileModel = CompileModel;
		this.ModelCompilationOptionsSetFlags = ModelCompilationOptionsSetFlags;
		this.ModelCompilationOptionsSetEpContextBinaryInformation = ModelCompilationOptionsSetEpContextBinaryInformation;
		this.ModelCompilationOptionsSetGraphOptimizationLevel = ModelCompilationOptionsSetGraphOptimizationLevel;
		this.ModelCompilationOptionsSetOutputModelWriteFunc = ModelCompilationOptionsSetOutputModelWriteFunc;
		this.ModelCompilationOptionsSetOutputModelGetInitializerLocationFunc = ModelCompilationOptionsSetOutputModelGetInitializerLocationFunc;
	}
}

[CRepr]
public struct OrtInteropApi
{
	public CreateExternalResourceImporterForDeviceFn CreateExternalResourceImporterForDevice;

	public ReleaseExternalResourceImporterFn ReleaseExternalResourceImporter;

	public CanImportMemoryFn CanImportMemory;

	public ImportMemoryFn ImportMemory;

	public ReleaseExternalMemoryHandleFn ReleaseExternalMemoryHandle;

	public CreateTensorFromMemoryFn CreateTensorFromMemory;

	public CanImportSemaphoreFn CanImportSemaphore;

	public ImportSemaphoreFn ImportSemaphore;

	public ReleaseExternalSemaphoreHandleFn ReleaseExternalSemaphoreHandle;

	public WaitSemaphoreFn WaitSemaphore;

	public SignalSemaphoreFn SignalSemaphore;

	public this(CreateExternalResourceImporterForDeviceFn CreateExternalResourceImporterForDevice, ReleaseExternalResourceImporterFn ReleaseExternalResourceImporter, CanImportMemoryFn CanImportMemory, ImportMemoryFn ImportMemory, ReleaseExternalMemoryHandleFn ReleaseExternalMemoryHandle, CreateTensorFromMemoryFn CreateTensorFromMemory, CanImportSemaphoreFn CanImportSemaphore, ImportSemaphoreFn ImportSemaphore, ReleaseExternalSemaphoreHandleFn ReleaseExternalSemaphoreHandle, WaitSemaphoreFn WaitSemaphore, SignalSemaphoreFn SignalSemaphore)
	{
		this.CreateExternalResourceImporterForDevice = CreateExternalResourceImporterForDevice;
		this.ReleaseExternalResourceImporter = ReleaseExternalResourceImporter;
		this.CanImportMemory = CanImportMemory;
		this.ImportMemory = ImportMemory;
		this.ReleaseExternalMemoryHandle = ReleaseExternalMemoryHandle;
		this.CreateTensorFromMemory = CreateTensorFromMemory;
		this.CanImportSemaphore = CanImportSemaphore;
		this.ImportSemaphore = ImportSemaphore;
		this.ReleaseExternalSemaphoreHandle = ReleaseExternalSemaphoreHandle;
		this.WaitSemaphore = WaitSemaphore;
		this.SignalSemaphore = SignalSemaphore;
	}
}

[CRepr]
public struct OrtEpGraphSupportInfo
{
	public this()
	{
	}
}

[CRepr]
public struct OrtNodeComputeContext
{
	public this()
	{
	}
}

[CRepr]
public struct OrtMemoryDevice
{
	public this()
	{
	}
}

[CRepr]
public struct OrtKernelRegistry
{
	public this()
	{
	}
}

[CRepr]
public struct OrtKernelDef
{
	public this()
	{
	}
}

[CRepr]
public struct OrtSharedPrePackedWeightCache
{
	public this()
	{
	}
}

[CRepr]
public struct OrtKernelDefBuilder
{
	public this()
	{
	}
}

[CRepr]
public struct OrtDataType
{
	public this()
	{
	}
}

[CRepr]
public struct OrtExternalMemoryHandle
{
	public uint32 Version;

	public OrtEpDevice EpDevice;

	public OrtExternalMemoryDescriptor Descriptor;

	public ReleaseFn Release;

	public this(uint32 version, OrtEpDevice epDevice, OrtExternalMemoryDescriptor descriptor, ReleaseFn Release)
	{
		this.Version = version;
		this.EpDevice = epDevice;
		this.Descriptor = descriptor;
		this.Release = Release;
	}
}

[CRepr]
public struct OrtExternalSemaphoreHandle
{
	public uint32 Version;

	public OrtEpDevice EpDevice;

	public OrtExternalSemaphoreDescriptor Descriptor;

	public ReleaseFn Release;

	public this(uint32 version, OrtEpDevice epDevice, OrtExternalSemaphoreDescriptor descriptor, ReleaseFn Release)
	{
		this.Version = version;
		this.EpDevice = epDevice;
		this.Descriptor = descriptor;
		this.Release = Release;
	}
}

[CRepr]
public struct OrtDataTransferImpl
{
	public uint32 OrtVersionSupported;

	public ReleaseFn Release;

	public CanCopyFn CanCopy;

	public CopyTensorsFn CopyTensors;

	public this(uint32 ortVersionSupported, ReleaseFn Release, CanCopyFn CanCopy, CopyTensorsFn CopyTensors)
	{
		this.OrtVersionSupported = ortVersionSupported;
		this.Release = Release;
		this.CanCopy = CanCopy;
		this.CopyTensors = CopyTensors;
	}
}

[CRepr]
public struct OrtSyncNotificationImpl
{
	public uint32 OrtVersionSupported;

	public ReleaseFn Release;

	public ActivateFn Activate;

	public WaitOnDeviceFn WaitOnDevice;

	public WaitOnHostFn WaitOnHost;

	public this(uint32 ortVersionSupported, ReleaseFn Release, ActivateFn Activate, WaitOnDeviceFn WaitOnDevice, WaitOnHostFn WaitOnHost)
	{
		this.OrtVersionSupported = ortVersionSupported;
		this.Release = Release;
		this.Activate = Activate;
		this.WaitOnDevice = WaitOnDevice;
		this.WaitOnHost = WaitOnHost;
	}
}

[CRepr]
public struct OrtSyncStreamImpl
{
	public uint32 OrtVersionSupported;

	public ReleaseFn Release;

	public GetHandleFn GetHandle;

	public CreateNotificationFn CreateNotification;

	public FlushFn Flush;

	public OnSessionRunEndFn OnSessionRunEnd;

	public this(uint32 ortVersionSupported, ReleaseFn Release, GetHandleFn GetHandle, CreateNotificationFn CreateNotification, FlushFn Flush, OnSessionRunEndFn OnSessionRunEnd)
	{
		this.OrtVersionSupported = ortVersionSupported;
		this.Release = Release;
		this.GetHandle = GetHandle;
		this.CreateNotification = CreateNotification;
		this.Flush = Flush;
		this.OnSessionRunEnd = OnSessionRunEnd;
	}
}

[CRepr]
public struct OrtExternalResourceImporterImpl
{
	public uint32 OrtVersionSupported;

	public CanImportMemoryFn CanImportMemory;

	public ImportMemoryFn ImportMemory;

	public ReleaseMemoryFn ReleaseMemory;

	public CreateTensorFromMemoryFn CreateTensorFromMemory;

	public CanImportSemaphoreFn CanImportSemaphore;

	public ImportSemaphoreFn ImportSemaphore;

	public ReleaseSemaphoreFn ReleaseSemaphore;

	public WaitSemaphoreFn WaitSemaphore;

	public SignalSemaphoreFn SignalSemaphore;

	public ReleaseFn Release;

	public this(uint32 ortVersionSupported, CanImportMemoryFn CanImportMemory, ImportMemoryFn ImportMemory, ReleaseMemoryFn ReleaseMemory, CreateTensorFromMemoryFn CreateTensorFromMemory, CanImportSemaphoreFn CanImportSemaphore, ImportSemaphoreFn ImportSemaphore, ReleaseSemaphoreFn ReleaseSemaphore, WaitSemaphoreFn WaitSemaphore, SignalSemaphoreFn SignalSemaphore, ReleaseFn Release)
	{
		this.OrtVersionSupported = ortVersionSupported;
		this.CanImportMemory = CanImportMemory;
		this.ImportMemory = ImportMemory;
		this.ReleaseMemory = ReleaseMemory;
		this.CreateTensorFromMemory = CreateTensorFromMemory;
		this.CanImportSemaphore = CanImportSemaphore;
		this.ImportSemaphore = ImportSemaphore;
		this.ReleaseSemaphore = ReleaseSemaphore;
		this.WaitSemaphore = WaitSemaphore;
		this.SignalSemaphore = SignalSemaphore;
		this.Release = Release;
	}
}

[CRepr]
public struct OrtNodeFusionOptions
{
	public uint32 OrtVersionSupported;

	public bool DropConstantInitializers;

	public this(uint32 ortVersionSupported, bool dropConstantInitializers)
	{
		this.OrtVersionSupported = ortVersionSupported;
		this.DropConstantInitializers = dropConstantInitializers;
	}
}

[CRepr]
public struct OrtNodeComputeInfo
{
	public uint32 OrtVersionSupported;

	public CreateStateFn CreateState;

	public ComputeFn Compute;

	public ReleaseStateFn ReleaseState;

	public this(uint32 ortVersionSupported, CreateStateFn CreateState, ComputeFn Compute, ReleaseStateFn ReleaseState)
	{
		this.OrtVersionSupported = ortVersionSupported;
		this.CreateState = CreateState;
		this.Compute = Compute;
		this.ReleaseState = ReleaseState;
	}
}

[CRepr]
public struct OrtKernelImpl
{
	public uint32 OrtVersionSupported;

	public uint32 Flags;

	public ComputeFn Compute;

	public ReleaseFn Release;

	public PrePackWeightFn PrePackWeight;

	public SetSharedPrePackedWeightFn SetSharedPrePackedWeight;

	public this(uint32 ortVersionSupported, uint32 flags, ComputeFn Compute, ReleaseFn Release, PrePackWeightFn PrePackWeight, SetSharedPrePackedWeightFn SetSharedPrePackedWeight)
	{
		this.OrtVersionSupported = ortVersionSupported;
		this.Flags = flags;
		this.Compute = Compute;
		this.Release = Release;
		this.PrePackWeight = PrePackWeight;
		this.SetSharedPrePackedWeight = SetSharedPrePackedWeight;
	}
}

[CRepr]
public struct OrtLoopKernelHelper
{
	public uint32 OrtVersionSupported;

	public ReleaseFn Release;

	public ConcatOutputFn ConcatOutput;

	public this(uint32 ortVersionSupported, ReleaseFn Release, ConcatOutputFn ConcatOutput)
	{
		this.OrtVersionSupported = ortVersionSupported;
		this.Release = Release;
		this.ConcatOutput = ConcatOutput;
	}
}

[CRepr]
public struct OrtScanKernelHelper
{
	public uint32 OrtVersionSupported;

	public ReleaseFn Release;

	public TransposeFn Transpose;

	public this(uint32 ortVersionSupported, ReleaseFn Release, TransposeFn Transpose)
	{
		this.OrtVersionSupported = ortVersionSupported;
		this.Release = Release;
		this.Transpose = Transpose;
	}
}

[CRepr]
public struct OrtEpApi
{
	public CreateEpDeviceFn CreateEpDevice;

	public ReleaseEpDeviceFn ReleaseEpDevice;

	public EpGraphSupportInfoAddNodesToFuseFn EpGraphSupportInfoAddNodesToFuse;

	public EpGraphSupportInfoAddSingleNodeFn EpGraphSupportInfoAddSingleNode;

	public NodeComputeContextNodeNameFn NodeComputeContextNodeName;

	public EpDeviceAddAllocatorInfoFn EpDeviceAddAllocatorInfo;

	public MemoryInfoGetMemoryDeviceFn MemoryInfoGetMemoryDevice;

	public ValueGetMemoryDeviceFn ValueGetMemoryDevice;

	public MemoryDeviceAreEqualFn MemoryDeviceAreEqual;

	public MemoryDeviceGetDeviceTypeFn MemoryDeviceGetDeviceType;

	public MemoryDeviceGetMemoryTypeFn MemoryDeviceGetMemoryType;

	public MemoryDeviceGetVendorIdFn MemoryDeviceGetVendorId;

	public MemoryDeviceGetDeviceIdFn MemoryDeviceGetDeviceId;

	public SyncStreamGetImplFn SyncStreamGetImpl;

	public SyncStreamGetSyncIdFn SyncStreamGetSyncId;

	public GetSyncIdForLastWaitOnSyncStreamFn GetSyncIdForLastWaitOnSyncStream;

	public CreateHardwareDeviceFn CreateHardwareDevice;

	public ReleaseHardwareDeviceFn ReleaseHardwareDevice;

	public CreateKernelRegistryFn CreateKernelRegistry;

	public ReleaseKernelRegistryFn ReleaseKernelRegistry;

	public KernelRegistryAddKernelFn KernelRegistryAddKernel;

	public CreateKernelDefBuilderFn CreateKernelDefBuilder;

	public ReleaseKernelDefBuilderFn ReleaseKernelDefBuilder;

	public KernelDefBuilderSetOperatorTypeFn KernelDefBuilderSetOperatorType;

	public KernelDefBuilderSetDomainFn KernelDefBuilderSetDomain;

	public KernelDefBuilderSetSinceVersionFn KernelDefBuilderSetSinceVersion;

	public KernelDefBuilderSetExecutionProviderFn KernelDefBuilderSetExecutionProvider;

	public KernelDefBuilderSetInputMemTypeFn KernelDefBuilderSetInputMemType;

	public KernelDefBuilderSetOutputMemTypeFn KernelDefBuilderSetOutputMemType;

	public KernelDefBuilderAddTypeConstraintFn KernelDefBuilderAddTypeConstraint;

	public KernelDefBuilderAddInputOutputAliasesFn KernelDefBuilderAddInputOutputAliases;

	public KernelDefBuilderAddInputOutputMutableAliasesFn KernelDefBuilderAddInputOutputMutableAliases;

	public KernelDefBuilderBuildFn KernelDefBuilderBuild;

	public ReleaseKernelDefFn ReleaseKernelDef;

	public KernelDefGetOperatorTypeFn KernelDefGetOperatorType;

	public KernelDefGetDomainFn KernelDefGetDomain;

	public KernelDefGetSinceVersionFn KernelDefGetSinceVersion;

	public KernelDefGetExecutionProviderFn KernelDefGetExecutionProvider;

	public KernelDefGetInputMemTypeFn KernelDefGetInputMemType;

	public KernelDefGetOutputMemTypeFn KernelDefGetOutputMemType;

	public GetTensorDataTypeFn GetTensorDataType;

	public EpGraphSupportInfoLookUpKernelFn EpGraphSupportInfoLookUpKernel;

	public SharedPrePackedWeightCacheStoreWeightDataFn SharedPrePackedWeightCacheStoreWeightData;

	public KernelInfoGetEpFn KernelInfoGetEp;

	public DeviceEpIncompatibilityDetailsSetDetailsFn DeviceEpIncompatibilityDetailsSetDetails;

	public CreateIfKernelFn CreateIfKernel;

	public CreateLoopKernelFn CreateLoopKernel;

	public CreateScanKernelFn CreateScanKernel;

	public ReleaseKernelImplFn ReleaseKernelImpl;

	public GetEnvConfigEntriesFn GetEnvConfigEntries;

	public this(CreateEpDeviceFn CreateEpDevice, ReleaseEpDeviceFn ReleaseEpDevice, EpGraphSupportInfoAddNodesToFuseFn EpGraphSupportInfoAddNodesToFuse, EpGraphSupportInfoAddSingleNodeFn EpGraphSupportInfoAddSingleNode, NodeComputeContextNodeNameFn NodeComputeContextNodeName, EpDeviceAddAllocatorInfoFn EpDeviceAddAllocatorInfo, MemoryInfoGetMemoryDeviceFn MemoryInfoGetMemoryDevice, ValueGetMemoryDeviceFn ValueGetMemoryDevice, MemoryDeviceAreEqualFn MemoryDeviceAreEqual, MemoryDeviceGetDeviceTypeFn MemoryDeviceGetDeviceType, MemoryDeviceGetMemoryTypeFn MemoryDeviceGetMemoryType, MemoryDeviceGetVendorIdFn MemoryDeviceGetVendorId, MemoryDeviceGetDeviceIdFn MemoryDeviceGetDeviceId, SyncStreamGetImplFn SyncStreamGetImpl, SyncStreamGetSyncIdFn SyncStreamGetSyncId, GetSyncIdForLastWaitOnSyncStreamFn GetSyncIdForLastWaitOnSyncStream, CreateHardwareDeviceFn CreateHardwareDevice, ReleaseHardwareDeviceFn ReleaseHardwareDevice, CreateKernelRegistryFn CreateKernelRegistry, ReleaseKernelRegistryFn ReleaseKernelRegistry, KernelRegistryAddKernelFn KernelRegistryAddKernel, CreateKernelDefBuilderFn CreateKernelDefBuilder, ReleaseKernelDefBuilderFn ReleaseKernelDefBuilder, KernelDefBuilderSetOperatorTypeFn KernelDefBuilderSetOperatorType, KernelDefBuilderSetDomainFn KernelDefBuilderSetDomain, KernelDefBuilderSetSinceVersionFn KernelDefBuilderSetSinceVersion, KernelDefBuilderSetExecutionProviderFn KernelDefBuilderSetExecutionProvider, KernelDefBuilderSetInputMemTypeFn KernelDefBuilderSetInputMemType, KernelDefBuilderSetOutputMemTypeFn KernelDefBuilderSetOutputMemType, KernelDefBuilderAddTypeConstraintFn KernelDefBuilderAddTypeConstraint, KernelDefBuilderAddInputOutputAliasesFn KernelDefBuilderAddInputOutputAliases, KernelDefBuilderAddInputOutputMutableAliasesFn KernelDefBuilderAddInputOutputMutableAliases, KernelDefBuilderBuildFn KernelDefBuilderBuild, ReleaseKernelDefFn ReleaseKernelDef, KernelDefGetOperatorTypeFn KernelDefGetOperatorType, KernelDefGetDomainFn KernelDefGetDomain, KernelDefGetSinceVersionFn KernelDefGetSinceVersion, KernelDefGetExecutionProviderFn KernelDefGetExecutionProvider, KernelDefGetInputMemTypeFn KernelDefGetInputMemType, KernelDefGetOutputMemTypeFn KernelDefGetOutputMemType, GetTensorDataTypeFn GetTensorDataType, EpGraphSupportInfoLookUpKernelFn EpGraphSupportInfoLookUpKernel, SharedPrePackedWeightCacheStoreWeightDataFn SharedPrePackedWeightCacheStoreWeightData, KernelInfoGetEpFn KernelInfoGetEp, DeviceEpIncompatibilityDetailsSetDetailsFn DeviceEpIncompatibilityDetailsSetDetails, CreateIfKernelFn CreateIfKernel, CreateLoopKernelFn CreateLoopKernel, CreateScanKernelFn CreateScanKernel, ReleaseKernelImplFn ReleaseKernelImpl, GetEnvConfigEntriesFn GetEnvConfigEntries)
	{
		this.CreateEpDevice = CreateEpDevice;
		this.ReleaseEpDevice = ReleaseEpDevice;
		this.EpGraphSupportInfoAddNodesToFuse = EpGraphSupportInfoAddNodesToFuse;
		this.EpGraphSupportInfoAddSingleNode = EpGraphSupportInfoAddSingleNode;
		this.NodeComputeContextNodeName = NodeComputeContextNodeName;
		this.EpDeviceAddAllocatorInfo = EpDeviceAddAllocatorInfo;
		this.MemoryInfoGetMemoryDevice = MemoryInfoGetMemoryDevice;
		this.ValueGetMemoryDevice = ValueGetMemoryDevice;
		this.MemoryDeviceAreEqual = MemoryDeviceAreEqual;
		this.MemoryDeviceGetDeviceType = MemoryDeviceGetDeviceType;
		this.MemoryDeviceGetMemoryType = MemoryDeviceGetMemoryType;
		this.MemoryDeviceGetVendorId = MemoryDeviceGetVendorId;
		this.MemoryDeviceGetDeviceId = MemoryDeviceGetDeviceId;
		this.SyncStreamGetImpl = SyncStreamGetImpl;
		this.SyncStreamGetSyncId = SyncStreamGetSyncId;
		this.GetSyncIdForLastWaitOnSyncStream = GetSyncIdForLastWaitOnSyncStream;
		this.CreateHardwareDevice = CreateHardwareDevice;
		this.ReleaseHardwareDevice = ReleaseHardwareDevice;
		this.CreateKernelRegistry = CreateKernelRegistry;
		this.ReleaseKernelRegistry = ReleaseKernelRegistry;
		this.KernelRegistryAddKernel = KernelRegistryAddKernel;
		this.CreateKernelDefBuilder = CreateKernelDefBuilder;
		this.ReleaseKernelDefBuilder = ReleaseKernelDefBuilder;
		this.KernelDefBuilderSetOperatorType = KernelDefBuilderSetOperatorType;
		this.KernelDefBuilderSetDomain = KernelDefBuilderSetDomain;
		this.KernelDefBuilderSetSinceVersion = KernelDefBuilderSetSinceVersion;
		this.KernelDefBuilderSetExecutionProvider = KernelDefBuilderSetExecutionProvider;
		this.KernelDefBuilderSetInputMemType = KernelDefBuilderSetInputMemType;
		this.KernelDefBuilderSetOutputMemType = KernelDefBuilderSetOutputMemType;
		this.KernelDefBuilderAddTypeConstraint = KernelDefBuilderAddTypeConstraint;
		this.KernelDefBuilderAddInputOutputAliases = KernelDefBuilderAddInputOutputAliases;
		this.KernelDefBuilderAddInputOutputMutableAliases = KernelDefBuilderAddInputOutputMutableAliases;
		this.KernelDefBuilderBuild = KernelDefBuilderBuild;
		this.ReleaseKernelDef = ReleaseKernelDef;
		this.KernelDefGetOperatorType = KernelDefGetOperatorType;
		this.KernelDefGetDomain = KernelDefGetDomain;
		this.KernelDefGetSinceVersion = KernelDefGetSinceVersion;
		this.KernelDefGetExecutionProvider = KernelDefGetExecutionProvider;
		this.KernelDefGetInputMemType = KernelDefGetInputMemType;
		this.KernelDefGetOutputMemType = KernelDefGetOutputMemType;
		this.GetTensorDataType = GetTensorDataType;
		this.EpGraphSupportInfoLookUpKernel = EpGraphSupportInfoLookUpKernel;
		this.SharedPrePackedWeightCacheStoreWeightData = SharedPrePackedWeightCacheStoreWeightData;
		this.KernelInfoGetEp = KernelInfoGetEp;
		this.DeviceEpIncompatibilityDetailsSetDetails = DeviceEpIncompatibilityDetailsSetDetails;
		this.CreateIfKernel = CreateIfKernel;
		this.CreateLoopKernel = CreateLoopKernel;
		this.CreateScanKernel = CreateScanKernel;
		this.ReleaseKernelImpl = ReleaseKernelImpl;
		this.GetEnvConfigEntries = GetEnvConfigEntries;
	}
}

[CRepr]
public struct OrtEp
{
	public uint32 OrtVersionSupported;

	public GetNameFn GetName;

	public GetCapabilityFn GetCapability;

	public CompileFn Compile;

	public ReleaseNodeComputeInfosFn ReleaseNodeComputeInfos;

	public GetPreferredDataLayoutFn GetPreferredDataLayout;

	public ShouldConvertDataLayoutForOpFn ShouldConvertDataLayoutForOp;

	public SetDynamicOptionsFn SetDynamicOptions;

	public OnRunStartFn OnRunStart;

	public OnRunEndFn OnRunEnd;

	public CreateAllocatorFn CreateAllocator;

	public CreateSyncStreamForDeviceFn CreateSyncStreamForDevice;

	public GetCompiledModelCompatibilityInfoFn GetCompiledModelCompatibilityInfo;

	public GetKernelRegistryFn GetKernelRegistry;

	public IsConcurrentRunSupportedFn IsConcurrentRunSupported;

	public this(uint32 ortVersionSupported, GetNameFn GetName, GetCapabilityFn GetCapability, CompileFn Compile, ReleaseNodeComputeInfosFn ReleaseNodeComputeInfos, GetPreferredDataLayoutFn GetPreferredDataLayout, ShouldConvertDataLayoutForOpFn ShouldConvertDataLayoutForOp, SetDynamicOptionsFn SetDynamicOptions, OnRunStartFn OnRunStart, OnRunEndFn OnRunEnd, CreateAllocatorFn CreateAllocator, CreateSyncStreamForDeviceFn CreateSyncStreamForDevice, GetCompiledModelCompatibilityInfoFn GetCompiledModelCompatibilityInfo, GetKernelRegistryFn GetKernelRegistry, IsConcurrentRunSupportedFn IsConcurrentRunSupported)
	{
		this.OrtVersionSupported = ortVersionSupported;
		this.GetName = GetName;
		this.GetCapability = GetCapability;
		this.Compile = Compile;
		this.ReleaseNodeComputeInfos = ReleaseNodeComputeInfos;
		this.GetPreferredDataLayout = GetPreferredDataLayout;
		this.ShouldConvertDataLayoutForOp = ShouldConvertDataLayoutForOp;
		this.SetDynamicOptions = SetDynamicOptions;
		this.OnRunStart = OnRunStart;
		this.OnRunEnd = OnRunEnd;
		this.CreateAllocator = CreateAllocator;
		this.CreateSyncStreamForDevice = CreateSyncStreamForDevice;
		this.GetCompiledModelCompatibilityInfo = GetCompiledModelCompatibilityInfo;
		this.GetKernelRegistry = GetKernelRegistry;
		this.IsConcurrentRunSupported = IsConcurrentRunSupported;
	}
}

[CRepr]
public struct OrtEpFactory
{
	public uint32 OrtVersionSupported;

	public GetNameFn GetName;

	public GetVendorFn GetVendor;

	public GetSupportedDevicesFn GetSupportedDevices;

	public CreateEpFn CreateEp;

	public ReleaseEpFn ReleaseEp;

	public GetVendorIdFn GetVendorId;

	public GetVersionFn GetVersion;

	public ValidateCompiledModelCompatibilityInfoFn ValidateCompiledModelCompatibilityInfo;

	public CreateAllocatorFn CreateAllocator;

	public ReleaseAllocatorFn ReleaseAllocator;

	public CreateDataTransferFn CreateDataTransfer;

	public IsStreamAwareFn IsStreamAware;

	public CreateSyncStreamForDeviceFn CreateSyncStreamForDevice;

	public GetHardwareDeviceIncompatibilityDetailsFn GetHardwareDeviceIncompatibilityDetails;

	public CreateExternalResourceImporterForDeviceFn CreateExternalResourceImporterForDevice;

	public this(uint32 ortVersionSupported, GetNameFn GetName, GetVendorFn GetVendor, GetSupportedDevicesFn GetSupportedDevices, CreateEpFn CreateEp, ReleaseEpFn ReleaseEp, GetVendorIdFn GetVendorId, GetVersionFn GetVersion, ValidateCompiledModelCompatibilityInfoFn ValidateCompiledModelCompatibilityInfo, CreateAllocatorFn CreateAllocator, ReleaseAllocatorFn ReleaseAllocator, CreateDataTransferFn CreateDataTransfer, IsStreamAwareFn IsStreamAware, CreateSyncStreamForDeviceFn CreateSyncStreamForDevice, GetHardwareDeviceIncompatibilityDetailsFn GetHardwareDeviceIncompatibilityDetails, CreateExternalResourceImporterForDeviceFn CreateExternalResourceImporterForDevice)
	{
		this.OrtVersionSupported = ortVersionSupported;
		this.GetName = GetName;
		this.GetVendor = GetVendor;
		this.GetSupportedDevices = GetSupportedDevices;
		this.CreateEp = CreateEp;
		this.ReleaseEp = ReleaseEp;
		this.GetVendorId = GetVendorId;
		this.GetVersion = GetVersion;
		this.ValidateCompiledModelCompatibilityInfo = ValidateCompiledModelCompatibilityInfo;
		this.CreateAllocator = CreateAllocator;
		this.ReleaseAllocator = ReleaseAllocator;
		this.CreateDataTransfer = CreateDataTransfer;
		this.IsStreamAware = IsStreamAware;
		this.CreateSyncStreamForDevice = CreateSyncStreamForDevice;
		this.GetHardwareDeviceIncompatibilityDetails = GetHardwareDeviceIncompatibilityDetails;
		this.CreateExternalResourceImporterForDevice = CreateExternalResourceImporterForDevice;
	}
}