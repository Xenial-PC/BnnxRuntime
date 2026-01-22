using System;
using System.Interop;

namespace OnnxRuntime.Native;

public function void* AllocFn(OrtAllocator* allocator, uint64 size);

public function void* FreeFn(OrtAllocator* allocator, void* p);

public function OrtMemoryInfo* InfoFn(OrtAllocator* allocator);

public function void* ReserveFn(OrtAllocator* allocator, uint64 size);

public function OrtStatus* GetStatsFn(OrtAllocator* allocator, OrtKeyValuePairs** outValue);

public function void* AllocOnStreamFn(OrtAllocator* allocator, uint64 size, OrtSyncStream* stream);

public function OrtApi* GetApiFn(int32 version);

public function char8* GetVersionStringFn();

public function void CustomLoggingFunctionFn(void* param, OrtLoggingLevel severity, char8* category, char8* logid, char8* codeLocation, char8* message);

public function OrtStatus* CreateStatusFn(OrtErrorCode code, char8* msg);

public function OrtErrorCode GetErrorCodeFn(OrtStatus* status);

public function char8* GetErrorMessageFn(OrtStatus* status);

public function OrtStatus* CreateEnvFn(OrtLoggingLevel logSeverityLevel, char8* logid, OrtEnv** outValue);

public function OrtStatus* CreateEnvWithCustomLoggerFn(CustomLoggingFunctionFn loggingFunction, void* loggerParam, OrtLoggingLevel logSeverityLevel, char8* logid, OrtEnv** outValue);

public function OrtStatus* EnableTelemetryEventsFn(OrtEnv* env);

public function OrtStatus* DisableTelemetryEventsFn(OrtEnv* env);

public function OrtStatus* CreateSessionFn(OrtEnv* env, char16* modelPath, OrtSessionOptions* options, OrtSession** outValue);

public function OrtStatus* CreateSessionFromArrayFn(OrtEnv* env, void* modelData, uint64 modelDataLength, OrtSessionOptions* options, OrtSession** outValue);

public function OrtStatus* RunFn(OrtSession* session, OrtRunOptions* runOptions, char8** inputNames, OrtValue** inputs, uint64 inputLen, char8** outputNames, uint64 outputNamesLen, OrtValue** outputs);

public function OrtStatus* CreateSessionOptionsFn(OrtSessionOptions** options);

public function OrtStatus* SetOptimizedModelFilePathFn(OrtSessionOptions* options, char16* optimizedModelFilepath);

public function OrtStatus* CloneSessionOptionsFn(OrtSessionOptions* inOptions, OrtSessionOptions** outOptions);

public function OrtStatus* SetSessionExecutionModeFn(OrtSessionOptions* options, ExecutionMode executionMode);

public function OrtStatus* EnableProfilingFn(OrtSessionOptions* options, char16* profileFilePrefix);

public function OrtStatus* DisableProfilingFn(OrtSessionOptions* options);

public function OrtStatus* EnableMemPatternFn(OrtSessionOptions* options);

public function OrtStatus* DisableMemPatternFn(OrtSessionOptions* options);

public function OrtStatus* EnableCpuMemArenaFn(OrtSessionOptions* options);

public function OrtStatus* DisableCpuMemArenaFn(OrtSessionOptions* options);

public function OrtStatus* SetSessionLogIdFn(OrtSessionOptions* options, char8* logid);

public function OrtStatus* SetSessionLogVerbosityLevelFn(OrtSessionOptions* options, int32 sessionLogVerbosityLevel);

public function OrtStatus* SetSessionLogSeverityLevelFn(OrtSessionOptions* options, int32 sessionLogSeverityLevel);

public function OrtStatus* SetSessionGraphOptimizationLevelFn(OrtSessionOptions* options, GraphOptimizationLevel graphOptimizationLevel);

public function OrtStatus* SetIntraOpNumThreadsFn(OrtSessionOptions* options, int32 intraOpNumThreads);

public function OrtStatus* SetInterOpNumThreadsFn(OrtSessionOptions* options, int32 interOpNumThreads);

public function OrtStatus* CreateCustomOpDomainFn(char8* domain, OrtCustomOpDomain** outValue);

public function OrtStatus* CustomOpDomainAddFn(OrtCustomOpDomain* customOpDomain, OrtCustomOp* op);

public function OrtStatus* AddCustomOpDomainFn(OrtSessionOptions* options, OrtCustomOpDomain* customOpDomain);

public function OrtStatus* RegisterCustomOpsLibraryFn(OrtSessionOptions* options, char8* libraryPath, void** libraryHandle);

public function OrtStatus* SessionGetInputCountFn(OrtSession* session, size_t* outValue);

public function OrtStatus* SessionGetOutputCountFn(OrtSession* session, size_t* outValue);

public function OrtStatus* SessionGetOverridableInitializerCountFn(OrtSession* session, uint64* outValue);

public function OrtStatus* SessionGetInputTypeInfoFn(OrtSession* session, uint64 index, OrtTypeInfo** typeInfo);

public function OrtStatus* SessionGetOutputTypeInfoFn(OrtSession* session, uint64 index, OrtTypeInfo** typeInfo);

public function OrtStatus* SessionGetOverridableInitializerTypeInfoFn(OrtSession* session, uint64 index, OrtTypeInfo** typeInfo);

public function OrtStatus* SessionGetInputNameFn(OrtSession* session, uint64 index, OrtAllocator* allocator, char8** value);

public function OrtStatus* SessionGetOutputNameFn(OrtSession* session, uint64 index, OrtAllocator* allocator, char8** value);

public function OrtStatus* SessionGetOverridableInitializerNameFn(OrtSession* session, uint64 index, OrtAllocator* allocator, char8** value);

public function OrtStatus* CreateRunOptionsFn(OrtRunOptions** outValue);

public function OrtStatus* RunOptionsSetRunLogVerbosityLevelFn(OrtRunOptions* options, int32 logVerbosityLevel);

public function OrtStatus* RunOptionsSetRunLogSeverityLevelFn(OrtRunOptions* options, int32 logSeverityLevel);

public function OrtStatus* RunOptionsSetRunTagFn(OrtRunOptions* options, char8* runTag);

public function OrtStatus* RunOptionsGetRunLogVerbosityLevelFn(OrtRunOptions* options, int32* logVerbosityLevel);

public function OrtStatus* RunOptionsGetRunLogSeverityLevelFn(OrtRunOptions* options, int32* logSeverityLevel);

public function OrtStatus* RunOptionsGetRunTagFn(OrtRunOptions* options, char8** runTag);

public function OrtStatus* RunOptionsSetTerminateFn(OrtRunOptions* options);

public function OrtStatus* RunOptionsUnsetTerminateFn(OrtRunOptions* options);

public function OrtStatus* CreateTensorAsOrtValueFn(OrtAllocator* allocator, int64* shape, uint64 shapeLen, ONNXTensorElementDataType type, OrtValue** outValue);

public function OrtStatus* CreateTensorWithDataAsOrtValueFn(OrtMemoryInfo* info, void* pData, uint64 pDataLen, int64* shape, uint64 shapeLen, ONNXTensorElementDataType type, OrtValue** outValue);

public function OrtStatus* IsTensorFn(OrtValue* value, int32* outValue);

public function OrtStatus* GetTensorMutableDataFn(OrtValue* value, void** outValue);

public function OrtStatus* FillStringTensorFn(OrtValue* value, char8** s, uint64 sLen);

public function OrtStatus* GetStringTensorDataLengthFn(OrtValue* value, uint64* len);

public function OrtStatus* GetStringTensorContentFn(OrtValue* value, void* s, uint64 sLen, uint64* offsets, uint64 offsetsLen);

public function OrtStatus* CastTypeInfoToTensorInfoFn(OrtTypeInfo* typeInfo, OrtTensorTypeAndShapeInfo** outValue);

public function OrtStatus* GetOnnxTypeFromTypeInfoFn(OrtTypeInfo* typeInfo, ONNXType* outValue);

public function OrtStatus* CreateTensorTypeAndShapeInfoFn(OrtTensorTypeAndShapeInfo** outValue);

public function OrtStatus* SetTensorElementTypeFn(OrtTensorTypeAndShapeInfo* info, ONNXTensorElementDataType type);

public function OrtStatus* SetDimensionsFn(OrtTensorTypeAndShapeInfo* info, int64* dimValues, uint64 dimCount);

public function OrtStatus* GetTensorElementTypeFn(OrtTensorTypeAndShapeInfo* info, ONNXTensorElementDataType* outValue);

public function OrtStatus* GetDimensionsCountFn(OrtTensorTypeAndShapeInfo* info, uint64* outValue);

public function OrtStatus* GetDimensionsFn(OrtTensorTypeAndShapeInfo* info, int64* dimValues, uint64 dimValuesLength);

public function OrtStatus* GetSymbolicDimensionsFn(OrtTensorTypeAndShapeInfo* info, char8 dimParams, uint64 dimParamsLength);

public function OrtStatus* GetTensorShapeElementCountFn(OrtTensorTypeAndShapeInfo* info, uint64* outValue);

public function OrtStatus* GetTensorTypeAndShapeFn(OrtValue* value, OrtTensorTypeAndShapeInfo** outValue);

public function OrtStatus* GetTypeInfoFn(OrtValue* value, OrtTypeInfo** outValue);

public function OrtStatus* GetValueTypeFn(OrtValue* value, ONNXType* outValue);

public function OrtStatus* CreateMemoryInfoFn(char8* name, OrtAllocatorType type, int32 id, OrtMemType memType, OrtMemoryInfo** outValue);

public function OrtStatus* CreateCpuMemoryInfoFn(OrtAllocatorType type, OrtMemType memType, OrtMemoryInfo** outValue);

public function OrtStatus* CompareMemoryInfoFn(OrtMemoryInfo* info1, OrtMemoryInfo* info2, int32* outValue);

public function OrtStatus* MemoryInfoGetNameFn(OrtMemoryInfo* ptr, char8** outValue);

public function OrtStatus* MemoryInfoGetIdFn(OrtMemoryInfo* ptr, int32* outValue);

public function OrtStatus* MemoryInfoGetMemTypeFn(OrtMemoryInfo* ptr, OrtMemType* outValue);

public function OrtStatus* MemoryInfoGetTypeFn(OrtMemoryInfo* ptr, OrtAllocatorType* outValue);

public function OrtStatus* AllocatorAllocFn(OrtAllocator* ortAllocator, uint64 size, void** outValue);

public function OrtStatus* AllocatorFreeFn(OrtAllocator* ortAllocator, void* p);

public function OrtStatus* AllocatorGetInfoFn(OrtAllocator* ortAllocator, OrtMemoryInfo** outValue);

public function OrtStatus* GetAllocatorWithDefaultOptionsFn(OrtAllocator** outValue);

public function OrtStatus* AddFreeDimensionOverrideFn(OrtSessionOptions* options, char8* dimDenotation, int64 dimValue);

public function OrtStatus* GetValueFn(OrtValue* value, int32 index, OrtAllocator* allocator, OrtValue** outValue);

public function OrtStatus* GetValueCountFn(OrtValue* value, uint64* outValue);

public function OrtStatus* CreateValueFn(OrtValue** inValue, uint64 numValues, ONNXType valueType, OrtValue** outValue);

public function OrtStatus* CreateOpaqueValueFn(char8* domainName, char8* typeName, void* dataContainer, uint64 dataContainerSize, OrtValue** outValue);

public function OrtStatus* GetOpaqueValueFn(char8* domainName, char8* typeName, OrtValue* inValue, void* dataContainer, uint64 dataContainerSize);

public function OrtStatus KernelInfoGetAttributeFloatFn(OrtKernelInfo* info, char8* name, Float* outValue);

public function OrtStatus* KernelInfoGetAttributeInt64Fn(OrtKernelInfo* info, char8* name, int64* outValue);

public function OrtStatus* KernelInfoGetAttributeStringFn(OrtKernelInfo* info, char8* name, char8* outValue, uint64* size);

public function OrtStatus* KernelContextGetInputCountFn(OrtKernelContext* context, uint64* outValue);

public function OrtStatus* KernelContextGetOutputCountFn(OrtKernelContext* context, uint64* outValue);

public function OrtStatus* KernelContextGetInputFn(OrtKernelContext* context, uint64 index, OrtValue** outValue);

public function OrtStatus* KernelContextGetOutputFn(OrtKernelContext* context, uint64 index, int64* dimValues, uint64 dimCount, OrtValue** outValue);

public function void ReleaseEnvFn(OrtEnv* input);

public function void ReleaseStatusFn(OrtStatus* input);

public function void ReleaseMemoryInfoFn(OrtMemoryInfo* input);

public function void ReleaseSessionFn(OrtSession* input);

public function void ReleaseValueFn(OrtValue* input);

public function void ReleaseRunOptionsFn(OrtRunOptions* input);

public function void ReleaseTypeInfoFn(OrtTypeInfo* input);

public function void ReleaseTensorTypeAndShapeInfoFn(OrtTensorTypeAndShapeInfo* input);

public function void ReleaseSessionOptionsFn(OrtSessionOptions* input);

public function void ReleaseCustomOpDomainFn(OrtCustomOpDomain* input);

public function OrtStatus* GetDenotationFromTypeInfoFn(OrtTypeInfo* typeInfo, char8** denotation, uint64* len);

public function OrtStatus* CastTypeInfoToMapTypeInfoFn(OrtTypeInfo* typeInfo, OrtMapTypeInfo** outValue);

public function OrtStatus* CastTypeInfoToSequenceTypeInfoFn(OrtTypeInfo* typeInfo, OrtSequenceTypeInfo** outValue);

public function OrtStatus* GetMapKeyTypeFn(OrtMapTypeInfo* mapTypeInfo, ONNXTensorElementDataType* outValue);

public function OrtStatus* GetMapValueTypeFn(OrtMapTypeInfo* mapTypeInfo, OrtTypeInfo** typeInfo);

public function OrtStatus* GetSequenceElementTypeFn(OrtSequenceTypeInfo* sequenceTypeInfo, OrtTypeInfo** typeInfo);

public function void ReleaseMapTypeInfoFn(OrtMapTypeInfo* input);

public function void ReleaseSequenceTypeInfoFn(OrtSequenceTypeInfo* input);

public function OrtStatus* SessionEndProfilingFn(OrtSession* session, OrtAllocator* allocator, char8** outValue);

public function OrtStatus* SessionGetModelMetadataFn(OrtSession* session, OrtModelMetadata** outValue);

public function OrtStatus* ModelMetadataGetProducerNameFn(OrtModelMetadata* modelMetadata, OrtAllocator* allocator, char8** value);

public function OrtStatus* ModelMetadataGetGraphNameFn(OrtModelMetadata* modelMetadata, OrtAllocator* allocator, char8** value);

public function OrtStatus* ModelMetadataGetDomainFn(OrtModelMetadata* modelMetadata, OrtAllocator* allocator, char8** value);

public function OrtStatus* ModelMetadataGetDescriptionFn(OrtModelMetadata* modelMetadata, OrtAllocator* allocator, char8** value);

public function OrtStatus* ModelMetadataLookupCustomMetadataMapFn(OrtModelMetadata* modelMetadata, OrtAllocator* allocator, char8* key, char8** value);

public function OrtStatus* ModelMetadataGetVersionFn(OrtModelMetadata* modelMetadata, int64* value);

public function void ReleaseModelMetadataFn(OrtModelMetadata* input);

public function OrtStatus* CreateEnvWithGlobalThreadPoolsFn(OrtLoggingLevel logSeverityLevel, char8* logid, OrtThreadingOptions* tpOptions, OrtEnv** outValue);

public function OrtStatus* DisablePerSessionThreadsFn(OrtSessionOptions* options);

public function OrtStatus* CreateThreadingOptionsFn(OrtThreadingOptions** outValue);

public function void ReleaseThreadingOptionsFn(OrtThreadingOptions* input);

public function OrtStatus* ModelMetadataGetCustomMetadataMapKeysFn(OrtModelMetadata* modelMetadata, OrtAllocator* allocator, char8*** keys, int64* numKeys);

public function OrtStatus* AddFreeDimensionOverrideByNameFn(OrtSessionOptions* options, char8* dimName, int64 dimValue);

public function OrtStatus* GetAvailableProvidersFn(char8*** outPtr, int32* providerLength);

public function OrtStatus* ReleaseAvailableProvidersFn(char8** ptr, int32 providersLength);

public function OrtStatus* GetStringTensorElementLengthFn(OrtValue* value, uint64 index, uint64* outValue);

public function OrtStatus* GetStringTensorElementFn(OrtValue* value, uint64 sLen, uint64 index, void* s);

public function OrtStatus* FillStringTensorElementFn(OrtValue* value, char8* s, uint64 index);

public function OrtStatus* AddSessionConfigEntryFn(OrtSessionOptions* options, char8* configKey, char8* configValue);

public function OrtStatus* CreateAllocatorFn(OrtSession* session, OrtMemoryInfo* memInfo, OrtAllocator** outValue);

public function void ReleaseAllocatorFn(OrtAllocator* input);

public function OrtStatus* RunWithBindingFn(OrtSession* session, OrtRunOptions* runOptions, OrtIoBinding* bindingPtr);

public function OrtStatus* CreateIoBindingFn(OrtSession* session, OrtIoBinding** outValue);

public function void ReleaseIoBindingFn(OrtIoBinding* input);

public function OrtStatus* BindInputFn(OrtIoBinding* bindingPtr, char8* name, OrtValue* valPtr);

public function OrtStatus* BindOutputFn(OrtIoBinding* bindingPtr, char8* name, OrtValue* valPtr);

public function OrtStatus* BindOutputToDeviceFn(OrtIoBinding* bindingPtr, char8* name, OrtMemoryInfo* memInfoPtr);

public function OrtStatus* GetBoundOutputNamesFn(OrtIoBinding* bindingPtr, OrtAllocator* allocator, char8** buffer, uint64** lengths, uint64* count);

public function OrtStatus* GetBoundOutputValuesFn(OrtIoBinding* bindingPtr, OrtAllocator* allocator, OrtValue*** output, uint64* outputCount);

public function void ClearBoundInputsFn(OrtIoBinding* bindingPtr);

public function void ClearBoundOutputsFn(OrtIoBinding* bindingPtr);

public function OrtStatus* TensorAtFn(OrtValue* value, int64* locationValues, uint64 locationValuesCount, void** outValue);

public function OrtStatus* CreateAndRegisterAllocatorFn(OrtEnv* env, OrtMemoryInfo* memInfo, OrtArenaCfg* arenaCfg);

public function OrtStatus* SetLanguageProjectionFn(OrtEnv* ortEnv, OrtLanguageProjection projection);

public function OrtStatus* SessionGetProfilingStartTimeNsFn(OrtSession* session, uint64* outValue);

public function OrtStatus* SetGlobalIntraOpNumThreadsFn(OrtThreadingOptions* tpOptions, int32 intraOpNumThreads);

public function OrtStatus* SetGlobalInterOpNumThreadsFn(OrtThreadingOptions* tpOptions, int32 interOpNumThreads);

public function OrtStatus* SetGlobalSpinControlFn(OrtThreadingOptions* tpOptions, int32 allowSpinning);

public function OrtStatus* AddInitializerFn(OrtSessionOptions* options, char8* name, OrtValue* val);

public function OrtStatus* CreateEnvWithCustomLoggerAndGlobalThreadPoolsFn(CustomLoggingFunctionFn loggingFunction, void* loggerParam, OrtLoggingLevel logSeverityLevel, char8* logid, OrtThreadingOptions* tpOptions, OrtEnv** outValue);

public function OrtStatus* SessionOptionsAppendExecutionProviderCUDAFn(OrtSessionOptions* options, OrtCUDAProviderOptions* cudaOptions);

public function OrtStatus* SessionOptionsAppendExecutionProviderROCMFn(OrtSessionOptions* options, OrtROCMProviderOptions* rocmOptions);

public function OrtStatus* SessionOptionsAppendExecutionProviderOpenVINOFn(OrtSessionOptions* options, OrtOpenVINOProviderOptions* providerOptions);

public function OrtStatus* SetGlobalDenormalAsZeroFn(OrtThreadingOptions* tpOptions);

public function OrtStatus* CreateArenaCfgFn(uint64 maxMem, int32 arenaExtendStrategy, int32 initialChunkSizeBytes, int32 maxDeadBytesPerChunk, OrtArenaCfg** outValue);

public function void ReleaseArenaCfgFn(OrtArenaCfg* input);

public function OrtStatus* ModelMetadataGetGraphDescriptionFn(OrtModelMetadata* modelMetadata, OrtAllocator* allocator, char8** value);

public function OrtStatus* SessionOptionsAppendExecutionProviderTensorRTFn(OrtSessionOptions* options, OrtTensorRTProviderOptions* tensorrtOptions);

public function OrtStatus* SetCurrentGpuDeviceIdFn(int32 deviceId);

public function OrtStatus* GetCurrentGpuDeviceIdFn(int32* deviceId);

public function OrtStatus* KernelInfoGetAttributeArrayFloatFn(OrtKernelInfo* info, char8* name, Float* outValue, uint64* size);

public function OrtStatus* KernelInfoGetAttributeArrayInt64Fn(OrtKernelInfo* info, char8* name, int64* outValue, uint64* size);

public function OrtStatus* CreateArenaCfgV2Fn(char8** arenaConfigKeys, uint64* arenaConfigValues, uint64 numKeys, OrtArenaCfg** outValue);

public function OrtStatus* AddRunConfigEntryFn(OrtRunOptions* options, char8* configKey, char8* configValue);

public function OrtStatus* CreatePrepackedWeightsContainerFn(OrtPrepackedWeightsContainer** outValue);

public function void ReleasePrepackedWeightsContainerFn(OrtPrepackedWeightsContainer* input);

public function OrtStatus* CreateSessionWithPrepackedWeightsContainerFn(OrtEnv* env, char16* modelPath, OrtSessionOptions* options, OrtPrepackedWeightsContainer* prepackedWeightsContainer, OrtSession** outValue);

public function OrtStatus* CreateSessionFromArrayWithPrepackedWeightsContainerFn(OrtEnv* env, void* modelData, uint64 modelDataLength, OrtSessionOptions* options, OrtPrepackedWeightsContainer* prepackedWeightsContainer, OrtSession** outValue);

public function OrtStatus* SessionOptionsAppendExecutionProviderTensorRTV2Fn(OrtSessionOptions* options, OrtTensorRTProviderOptionsV2* tensorrtOptions);

public function OrtStatus* CreateTensorRTProviderOptionsFn(OrtTensorRTProviderOptionsV2** outValue);

public function OrtStatus* UpdateTensorRTProviderOptionsFn(OrtTensorRTProviderOptionsV2* tensorrtOptions, char8** providerOptionsKeys, char8** providerOptionsValues, uint64 numKeys);

public function OrtStatus* GetTensorRTProviderOptionsAsStringFn(OrtTensorRTProviderOptionsV2* tensorrtOptions, OrtAllocator* allocator, char8** ptr);

public function void ReleaseTensorRTProviderOptionsFn(OrtTensorRTProviderOptionsV2* input);

public function OrtStatus* EnableOrtCustomOpsFn(OrtSessionOptions* options);

public function OrtStatus* RegisterAllocatorFn(OrtEnv* env, OrtAllocator* allocator);

public function OrtStatus* UnregisterAllocatorFn(OrtEnv* env, OrtMemoryInfo* memInfo);

public function OrtStatus* IsSparseTensorFn(OrtValue* value, int32* outValue);

public function OrtStatus* CreateSparseTensorAsOrtValueFn(OrtAllocator* allocator, int64* denseShape, uint64 denseShapeLen, ONNXTensorElementDataType type, OrtValue** outValue);

public function OrtStatus* FillSparseTensorCooFn(OrtValue* ortValue, OrtMemoryInfo* dataMemInfo, int64* valuesShape, uint64 valuesShapeLen, void* values, int64* indicesData, uint64 indicesNum);

public function OrtStatus* FillSparseTensorCsrFn(OrtValue* ortValue, OrtMemoryInfo* dataMemInfo, int64* valuesShape, uint64 valuesShapeLen, void* values, int64* innerIndicesData, uint64 innerIndicesNum, int64* outerIndicesData, uint64 outerIndicesNum);

public function OrtStatus* FillSparseTensorBlockSparseFn(OrtValue* ortValue, OrtMemoryInfo* dataMemInfo, int64* valuesShape, uint64 valuesShapeLen, void* values, int64* indicesShapeData, uint64 indicesShapeLen, int32* indicesData);

public function OrtStatus* CreateSparseTensorWithValuesAsOrtValueFn(OrtMemoryInfo* info, void* pData, int64* denseShape, uint64 denseShapeLen, int64* valuesShape, uint64 valuesShapeLen, ONNXTensorElementDataType type, OrtValue** outValue);

public function OrtStatus* UseCooIndicesFn(OrtValue* ortValue, int64* indicesData, uint64 indicesNum);

public function OrtStatus* UseCsrIndicesFn(OrtValue* ortValue, int64* innerData, uint64 innerNum, int64* outerData, uint64 outerNum);

public function OrtStatus* UseBlockSparseIndicesFn(OrtValue* ortValue, int64* indicesShape, uint64 indicesShapeLen, int32* indicesData);

public function OrtStatus* GetSparseTensorFormatFn(OrtValue* ortValue, OrtSparseFormat* outValue);

public function OrtStatus* GetSparseTensorValuesTypeAndShapeFn(OrtValue* ortValue, OrtTensorTypeAndShapeInfo** outValue);

public function OrtStatus* GetSparseTensorValuesFn(OrtValue* ortValue, void** outValue);

public function OrtStatus* GetSparseTensorIndicesTypeShapeFn(OrtValue* ortValue, OrtSparseIndicesFormat indicesFormat, OrtTensorTypeAndShapeInfo** outValue);

public function OrtStatus* GetSparseTensorIndicesFn(OrtValue* ortValue, OrtSparseIndicesFormat indicesFormat, uint64* numIndices, void** indices);

public function OrtStatus* HasValueFn(OrtValue* value, int32* outValue);

public function OrtStatus* KernelContextGetGPUComputeStreamFn(OrtKernelContext* context, void** outValue);

public function OrtStatus* GetTensorMemoryInfoFn(OrtValue* value, OrtMemoryInfo** memInfo);

public function OrtStatus* GetExecutionProviderApiFn(char8* providerName, uint32 version, void** providerApi);

public function OrtStatus* SessionOptionsSetCustomCreateThreadFnFn(OrtSessionOptions* options, OrtCustomCreateThreadFn ortCustomCreateThreadFn);

public function OrtStatus* SessionOptionsSetCustomThreadCreationOptionsFn(OrtSessionOptions* options, void* ortCustomThreadCreationOptions);

public function OrtStatus* SessionOptionsSetCustomJoinThreadFnFn(OrtSessionOptions* options, OrtCustomJoinThreadFn ortCustomJoinThreadFn);

public function OrtStatus* SetGlobalCustomCreateThreadFnFn(OrtThreadingOptions* tpOptions, OrtCustomCreateThreadFn ortCustomCreateThreadFn);

public function OrtStatus* SetGlobalCustomThreadCreationOptionsFn(OrtThreadingOptions* tpOptions, void* ortCustomThreadCreationOptions);

public function OrtStatus* SetGlobalCustomJoinThreadFnFn(OrtThreadingOptions* tpOptions, OrtCustomJoinThreadFn ortCustomJoinThreadFn);

public function OrtStatus* SynchronizeBoundInputsFn(OrtIoBinding* bindingPtr);

public function OrtStatus* SynchronizeBoundOutputsFn(OrtIoBinding* bindingPtr);

public function OrtStatus* SessionOptionsAppendExecutionProviderCUDAV2Fn(OrtSessionOptions* options, OrtCUDAProviderOptionsV2* cudaOptions);

public function OrtStatus* CreateCUDAProviderOptionsFn(OrtCUDAProviderOptionsV2** outValue);

public function OrtStatus* UpdateCUDAProviderOptionsFn(OrtCUDAProviderOptionsV2* cudaOptions, char8** providerOptionsKeys, char8** providerOptionsValues, uint64 numKeys);

public function OrtStatus* GetCUDAProviderOptionsAsStringFn(OrtCUDAProviderOptionsV2* cudaOptions, OrtAllocator* allocator, char8** ptr);

public function void ReleaseCUDAProviderOptionsFn(OrtCUDAProviderOptionsV2* input);

public function OrtStatus* SessionOptionsAppendExecutionProviderMIGraphXFn(OrtSessionOptions* options, OrtMIGraphXProviderOptions* migraphxOptions);

public function OrtStatus* AddExternalInitializersFn(OrtSessionOptions* options, char8** initializerNames, OrtValue** initializers, uint64 numInitializers);

public function OrtStatus* CreateOpAttrFn(char8* name, void* data, int32 len, OrtOpAttrType type, OrtOpAttr** opAttr);

public function void ReleaseOpAttrFn(OrtOpAttr* input);

public function OrtStatus* CreateOpFn(OrtKernelInfo* info, char8* opName, char8* domain, int32 version, char8** typeConstraintNames, ONNXTensorElementDataType* typeConstraintValues, int32 typeConstraintCount, OrtOpAttr** attrValues, int32 attrCount, int32 inputCount, int32 outputCount, OrtOp** ortOp);

public function OrtStatus* InvokeOpFn(OrtKernelContext* context, OrtOp* ortOp, OrtValue** inputValues, int32 inputCount, OrtValue** outputValues, int32 outputCount);

public function void ReleaseOpFn(OrtOp* input);

public function OrtStatus* SessionOptionsAppendExecutionProviderFn(OrtSessionOptions* options, char8* providerName, char8** providerOptionsKeys, char8** providerOptionsValues, uint64 numKeys);

public function OrtStatus* CopyKernelInfoFn(OrtKernelInfo* info, OrtKernelInfo** infoCopy);

public function void ReleaseKernelInfoFn(OrtKernelInfo* input);

public function OrtTrainingApi* GetTrainingApiFn(uint32 version);

public function OrtStatus* SessionOptionsAppendExecutionProviderCANNFn(OrtSessionOptions* options, OrtCANNProviderOptions* cannOptions);

public function OrtStatus* CreateCANNProviderOptionsFn(OrtCANNProviderOptions** outValue);

public function OrtStatus* UpdateCANNProviderOptionsFn(OrtCANNProviderOptions* cannOptions, char8** providerOptionsKeys, char8** providerOptionsValues, uint64 numKeys);

public function OrtStatus* GetCANNProviderOptionsAsStringFn(OrtCANNProviderOptions* cannOptions, OrtAllocator* allocator, char8** ptr);

public function void ReleaseCANNProviderOptionsFn(OrtCANNProviderOptions* input);

public function void MemoryInfoGetDeviceTypeFn(OrtMemoryInfo* ptr, OrtMemoryInfoDeviceType* outValue);

public function OrtStatus* UpdateEnvWithCustomLogLevelFn(OrtEnv* ortEnv, OrtLoggingLevel logSeverityLevel);

public function OrtStatus* SetGlobalIntraOpThreadAffinityFn(OrtThreadingOptions* tpOptions, char8* affinityString);

public function OrtStatus* RegisterCustomOpsLibraryV2Fn(OrtSessionOptions* options, char16* libraryName);

public function OrtStatus* RegisterCustomOpsUsingFunctionFn(OrtSessionOptions* options, char8* registrationFuncName);

public function OrtStatus* KernelInfoGetInputCountFn(OrtKernelInfo* info, uint64* outValue);

public function OrtStatus* KernelInfoGetOutputCountFn(OrtKernelInfo* info, uint64* outValue);

public function OrtStatus* KernelInfoGetInputNameFn(OrtKernelInfo* info, uint64 index, char8* outValue, uint64* size);

public function OrtStatus* KernelInfoGetOutputNameFn(OrtKernelInfo* info, uint64 index, char8* outValue, uint64* size);

public function OrtStatus* KernelInfoGetInputTypeInfoFn(OrtKernelInfo* info, uint64 index, OrtTypeInfo** typeInfo);

public function OrtStatus* KernelInfoGetOutputTypeInfoFn(OrtKernelInfo* info, uint64 index, OrtTypeInfo** typeInfo);

public function OrtStatus* KernelInfoGetAttributeTensorFn(OrtKernelInfo* info, char8* name, OrtAllocator* allocator, OrtValue** outValue);

public function OrtStatus* HasSessionConfigEntryFn(OrtSessionOptions* options, char8* configKey, int32* outValue);

public function OrtStatus* GetSessionConfigEntryFn(OrtSessionOptions* options, char8* configKey, char8* configValue, uint64* size);

public function OrtStatus* SessionOptionsAppendExecutionProviderDnnlFn(OrtSessionOptions* options, OrtDnnlProviderOptions* dnnlOptions);

public function OrtStatus* CreateDnnlProviderOptionsFn(OrtDnnlProviderOptions** outValue);

public function OrtStatus* UpdateDnnlProviderOptionsFn(OrtDnnlProviderOptions* dnnlOptions, char8** providerOptionsKeys, char8** providerOptionsValues, uint64 numKeys);

public function OrtStatus* GetDnnlProviderOptionsAsStringFn(OrtDnnlProviderOptions* dnnlOptions, OrtAllocator* allocator, char8** ptr);

public function void ReleaseDnnlProviderOptionsFn(OrtDnnlProviderOptions* input);

public function OrtStatus* KernelInfoGetNodeNameFn(OrtKernelInfo* info, char8* outValue, uint64* size);

public function OrtStatus* KernelInfoGetLoggerFn(OrtKernelInfo* info, OrtLogger** logger);

public function OrtStatus* KernelContextGetLoggerFn(OrtKernelContext* context, OrtLogger** logger);

public function OrtStatus* LoggerLogMessageFn(OrtLogger* logger, OrtLoggingLevel logSeverityLevel, char8* message, char16* filePath, int32 lineNumber, char8* funcName);

public function OrtStatus* LoggerGetLoggingSeverityLevelFn(OrtLogger* logger, OrtLoggingLevel* outValue);

public function OrtStatus* KernelInfoGetConstantInputTensorFn(OrtKernelInfo* info, uint64 index, int32* isConstant, OrtValue** outValue);

public function OrtStatus* CastTypeInfoToOptionalTypeInfoFn(OrtTypeInfo* typeInfo, OrtOptionalTypeInfo** outValue);

public function OrtStatus* GetOptionalContainedTypeInfoFn(OrtOptionalTypeInfo* optionalTypeInfo, OrtTypeInfo** outValue);

public function OrtStatus* GetResizedStringTensorElementBufferFn(OrtValue* value, uint64 index, uint64 lengthInBytes, char8** buffer);

public function OrtStatus* KernelContextGetAllocatorFn(OrtKernelContext* context, OrtMemoryInfo* memInfo, OrtAllocator** outValue);

public function char8* GetBuildInfoStringFn();

public function OrtStatus* CreateROCMProviderOptionsFn(OrtROCMProviderOptions** outValue);

public function OrtStatus* UpdateROCMProviderOptionsFn(OrtROCMProviderOptions* rocmOptions, char8** providerOptionsKeys, char8** providerOptionsValues, uint64 numKeys);

public function OrtStatus* GetROCMProviderOptionsAsStringFn(OrtROCMProviderOptions* rocmOptions, OrtAllocator* allocator, char8** ptr);

public function void ReleaseROCMProviderOptionsFn(OrtROCMProviderOptions* input);

public function OrtStatus* CreateAndRegisterAllocatorV2Fn(OrtEnv* env, char8* providerType, OrtMemoryInfo* memInfo, OrtArenaCfg* arenaCfg, char8** providerOptionsKeys, char8** providerOptionsValues, uint64 numKeys);

public function OrtStatus* RunAsyncFn(OrtSession* session, OrtRunOptions* runOptions, char8** inputNames, OrtValue** input, uint64 inputLen, char8** outputNames, uint64 outputNamesLen, OrtValue** output, RunAsyncCallbackFn runAsyncCallback, void* userData);

public function OrtStatus* UpdateTensorRTProviderOptionsWithValueFn(OrtTensorRTProviderOptionsV2* tensorrtOptions, char8* key, void* value);

public function OrtStatus* GetTensorRTProviderOptionsByNameFn(OrtTensorRTProviderOptionsV2* tensorrtOptions, char8* key, void** ptr);

public function OrtStatus* UpdateCUDAProviderOptionsWithValueFn(OrtCUDAProviderOptionsV2* cudaOptions, char8* key, void* value);

public function OrtStatus* GetCUDAProviderOptionsByNameFn(OrtCUDAProviderOptionsV2* cudaOptions, char8* key, void** ptr);

public function OrtStatus* KernelContextGetResourceFn(OrtKernelContext* context, int32 resourceVersion, int32 resourceId, void** resource);

public function OrtStatus* SetUserLoggingFunctionFn(OrtSessionOptions* options, CustomLoggingFunctionFn userLoggingFunction, void* userLoggingParam);

public function OrtStatus* ShapeInferContextGetInputCountFn(OrtShapeInferContext* context, uint64* outValue);

public function OrtStatus* ShapeInferContextGetInputTypeShapeFn(OrtShapeInferContext* context, uint64 index, OrtTensorTypeAndShapeInfo** info);

public function OrtStatus* ShapeInferContextGetAttributeFn(OrtShapeInferContext* context, char8* attrName, OrtOpAttr** attr);

public function OrtStatus* ShapeInferContextSetOutputTypeShapeFn(OrtShapeInferContext* context, uint64 index, OrtTensorTypeAndShapeInfo* info);

public function OrtStatus* SetSymbolicDimensionsFn(OrtTensorTypeAndShapeInfo* info, char8 dimParams, uint64 dimParamsLength);

public function OrtStatus* ReadOpAttrFn(OrtOpAttr* opAttr, OrtOpAttrType type, void* data, uint64 len, uint64* outValue);

public function OrtStatus* SetDeterministicComputeFn(OrtSessionOptions* options, bool value);

public function OrtStatus* KernelContextParallelForFn(OrtKernelContext* context, void** fn, uint64 total, uint64 numBatch, void* usrData);

public function OrtStatus* SessionOptionsAppendExecutionProviderOpenVINOV2Fn(OrtSessionOptions* options, char8** providerOptionsKeys, char8** providerOptionsValues, uint64 numKeys);

public function OrtStatus* SessionOptionsAppendExecutionProviderVitisAIFn(OrtSessionOptions* options, char8** providerOptionsKeys, char8** providerOptionsValues, uint64 numKeys);

public function OrtStatus* KernelContextGetScratchBufferFn(OrtKernelContext* context, OrtMemoryInfo* memInfo, uint64 countOrBytes, void** outValue);

public function OrtStatus* KernelInfoGetAllocatorFn(OrtKernelInfo* info, OrtMemType memType, OrtAllocator** outValue);

public function OrtStatus* AddExternalInitializersFromFilesInMemoryFn(OrtSessionOptions* options, char16** externalInitializerFileNames, char8** externalInitializerFileBufferArray, uint64* externalInitializerFileLengths, uint64 numExternalInitializerFiles);

public function OrtStatus* CreateLoraAdapterFn(char16* adapterFilePath, OrtAllocator* allocator, OrtLoraAdapter** outValue);

public function OrtStatus* CreateLoraAdapterFromArrayFn(void* bytes, uint64 numBytes, OrtAllocator* allocator, OrtLoraAdapter** outValue);

public function void ReleaseLoraAdapterFn(OrtLoraAdapter* input);

public function OrtStatus* RunOptionsAddActiveLoraAdapterFn(OrtRunOptions* options, OrtLoraAdapter* adapter);

public function OrtStatus* SetEpDynamicOptionsFn(OrtSession* sess, char8** keys, char8** values, uint64 kvLen);

public function void ReleaseValueInfoFn(OrtValueInfo* input);

public function void ReleaseNodeFn(OrtNode* input);

public function void ReleaseGraphFn(OrtGraph* input);

public function void ReleaseModelFn(OrtModel* input);

public function OrtStatus* GetValueInfoNameFn(OrtValueInfo* valueInfo, char8** name);

public function OrtStatus* GetValueInfoTypeInfoFn(OrtValueInfo* valueInfo, OrtTypeInfo** typeInfo);

public function OrtModelEditorApi* GetModelEditorApiFn();

public function OrtStatus* CreateTensorWithDataAndDeleterAsOrtValueFn(OrtAllocator* deleter, void* pData, uint64 pDataLen, int64* shape, uint64 shapeLen, ONNXTensorElementDataType type, OrtValue** outValue);

public function OrtStatus* SessionOptionsSetLoadCancellationFlagFn(OrtSessionOptions* options, bool cancel);

public function OrtCompileApi* GetCompileApiFn();

public function void CreateKeyValuePairsFn(OrtKeyValuePairs** outValue);

public function void AddKeyValuePairFn(OrtKeyValuePairs* kvps, char8* key, char8* value);

public function char8* GetKeyValueFn(OrtKeyValuePairs* kvps, char8* key);

public function void GetKeyValuePairsFn(OrtKeyValuePairs* kvps, char8*** keys, char8*** values, uint64* numEntries);

public function void RemoveKeyValuePairFn(OrtKeyValuePairs* kvps, char8* key);

public function void ReleaseKeyValuePairsFn(OrtKeyValuePairs* input);

public function OrtStatus* RegisterExecutionProviderLibraryFn(OrtEnv* env, char8* registrationName, char16* path);

public function OrtStatus* UnregisterExecutionProviderLibraryFn(OrtEnv* env, char8* registrationName);

public function OrtStatus* GetEpDevicesFn(OrtEnv* env, OrtEpDevice*** epDevices, uint64* numEpDevices);

public function OrtStatus* SessionOptionsAppendExecutionProviderV2Fn(OrtSessionOptions* sessionOptions, OrtEnv* env, OrtEpDevice** epDevices, uint64 numEpDevices, char8** epOptionKeys, char8** epOptionVals, uint64 numEpOptions);

public function OrtStatus* SessionOptionsSetEpSelectionPolicyFn(OrtSessionOptions* sessionOptions, OrtExecutionProviderDevicePolicy policy);

public function OrtStatus* SessionOptionsSetEpSelectionPolicyDelegateFn(OrtSessionOptions* sessionOptions, EpSelectionDelegate delegateValue, void* delegateState);

public function OrtHardwareDeviceType HardwareDeviceTypeFn(OrtHardwareDevice* device);

public function uint32 HardwareDeviceVendorIdFn(OrtHardwareDevice* device);

public function char8* HardwareDeviceVendorFn(OrtHardwareDevice* device);

public function uint32 HardwareDeviceDeviceIdFn(OrtHardwareDevice* device);

public function OrtKeyValuePairs* HardwareDeviceMetadataFn(OrtHardwareDevice* device);

public function char8* EpDeviceEpNameFn(OrtEpDevice* epDevice);

public function char8* EpDeviceEpVendorFn(OrtEpDevice* epDevice);

public function OrtKeyValuePairs* EpDeviceEpMetadataFn(OrtEpDevice* epDevice);

public function OrtKeyValuePairs* EpDeviceEpOptionsFn(OrtEpDevice* epDevice);

public function OrtHardwareDevice* EpDeviceDeviceFn(OrtEpDevice* epDevice);

public function OrtEpApi* GetEpApiFn();

public function OrtStatus* GetTensorSizeInBytesFn(OrtValue* ortValue, uint64* size);

public function OrtStatus* AllocatorGetStatsFn(OrtAllocator* ortAllocator, OrtKeyValuePairs** outValue);

public function OrtStatus* CreateMemoryInfoV2Fn(char8* name, OrtMemoryInfoDeviceType deviceType, uint32 vendorId, int32 deviceId, OrtDeviceMemoryType memType, uint64 alignment, OrtAllocatorType allocatorType, OrtMemoryInfo** outValue);

public function OrtDeviceMemoryType MemoryInfoGetDeviceMemTypeFn(OrtMemoryInfo* ptr);

public function uint32 MemoryInfoGetVendorIdFn(OrtMemoryInfo* ptr);

public function OrtStatus* ValueInfoGetValueProducerFn(OrtValueInfo* valueInfo, OrtNode** producerNode, uint64* producerOutputIndex);

public function OrtStatus* ValueInfoGetValueNumConsumersFn(OrtValueInfo* valueInfo, uint64* numConsumers);

public function OrtStatus* ValueInfoGetValueConsumersFn(OrtValueInfo* valueInfo, OrtNode** nodes, int64* inputIndices, uint64 numConsumers);

public function OrtStatus* ValueInfoGetInitializerValueFn(OrtValueInfo* valueInfo, OrtValue** initializerValue);

public function OrtStatus* ValueInfoGetExternalInitializerInfoFn(OrtValueInfo* valueInfo, OrtExternalInitializerInfo** info);

public function OrtStatus* ValueInfoIsRequiredGraphInputFn(OrtValueInfo* valueInfo, bool* isRequiredGraphInput);

public function OrtStatus* ValueInfoIsOptionalGraphInputFn(OrtValueInfo* valueInfo, bool* isOptionalGraphInput);

public function OrtStatus* ValueInfoIsGraphOutputFn(OrtValueInfo* valueInfo, bool* isGraphOutput);

public function OrtStatus* ValueInfoIsConstantInitializerFn(OrtValueInfo* valueInfo, bool* isConstantInitializer);

public function OrtStatus* ValueInfoIsFromOuterScopeFn(OrtValueInfo* valueInfo, bool* isFromOuterScope);

public function OrtStatus* GraphGetNameFn(OrtGraph* graph, char8** graphName);

public function OrtStatus* GraphGetModelPathFn(OrtGraph* graph, char16** modelPath);

public function OrtStatus* GraphGetOnnxIRVersionFn(OrtGraph* graph, int64* onnxIrVersion);

public function OrtStatus* GraphGetNumOperatorSetsFn(OrtGraph* graph, uint64* numOperatorSets);

public function OrtStatus* GraphGetOperatorSetsFn(OrtGraph* graph, char8** domains, int64* opsetVersions, uint64 numOperatorSets);

public function OrtStatus* GraphGetNumInputsFn(OrtGraph* graph, uint64* numInputs);

public function OrtStatus* GraphGetInputsFn(OrtGraph* graph, OrtValueInfo** inputs, uint64 numInputs);

public function OrtStatus* GraphGetNumOutputsFn(OrtGraph* graph, uint64* numOutputs);

public function OrtStatus* GraphGetOutputsFn(OrtGraph* graph, OrtValueInfo** outputs, uint64 numOutputs);

public function OrtStatus* GraphGetNumInitializersFn(OrtGraph* graph, uint64* numInitializers);

public function OrtStatus* GraphGetInitializersFn(OrtGraph* graph, OrtValueInfo** initializers, uint64 numInitializers);

public function OrtStatus* GraphGetNumNodesFn(OrtGraph* graph, uint64* numNodes);

public function OrtStatus* GraphGetNodesFn(OrtGraph* graph, OrtNode** nodes, uint64 numNodes);

public function OrtStatus* GraphGetParentNodeFn(OrtGraph* graph, OrtNode** node);

public function OrtStatus* GraphGetGraphViewFn(OrtGraph* srcGraph, OrtNode** nodes, uint64 numNodes, OrtGraph** dstGraph);

public function OrtStatus* NodeGetIdFn(OrtNode* node, uint64* nodeId);

public function OrtStatus* NodeGetNameFn(OrtNode* node, char8** nodeName);

public function OrtStatus* NodeGetOperatorTypeFn(OrtNode* node, char8** operatorType);

public function OrtStatus* NodeGetDomainFn(OrtNode* node, char8** domainName);

public function OrtStatus* NodeGetSinceVersionFn(OrtNode* node, int32* sinceVersion);

public function OrtStatus* NodeGetNumInputsFn(OrtNode* node, uint64* numInputs);

public function OrtStatus* NodeGetInputsFn(OrtNode* node, OrtValueInfo** inputs, uint64 numInputs);

public function OrtStatus* NodeGetNumOutputsFn(OrtNode* node, uint64* numOutputs);

public function OrtStatus* NodeGetOutputsFn(OrtNode* node, OrtValueInfo** outputs, uint64 numOutputs);

public function OrtStatus* NodeGetNumImplicitInputsFn(OrtNode* node, uint64* numImplicitInputs);

public function OrtStatus* NodeGetImplicitInputsFn(OrtNode* node, OrtValueInfo** implicitInputs, uint64 numImplicitInputs);

public function OrtStatus* NodeGetNumAttributesFn(OrtNode* node, uint64* numAttributes);

public function OrtStatus* NodeGetAttributesFn(OrtNode* node, OrtOpAttr** attributes, uint64 numAttributes);

public function OrtStatus* NodeGetAttributeByNameFn(OrtNode* node, char8* attributeName, OrtOpAttr** attribute);

public function OrtStatus* OpAttrGetTensorAttributeAsOrtValueFn(OrtOpAttr* attribute, OrtValue** attrTensor);

public function OrtStatus* OpAttrGetTypeFn(OrtOpAttr* attribute, OrtOpAttrType* type);

public function OrtStatus* OpAttrGetNameFn(OrtOpAttr* attribute, char8** name);

public function OrtStatus* NodeGetNumSubgraphsFn(OrtNode* node, uint64* numSubgraphs);

public function OrtStatus* NodeGetSubgraphsFn(OrtNode* node, OrtGraph** subgraphs, uint64 numSubgraphs, char8** attributeNames);

public function OrtStatus* NodeGetGraphFn(OrtNode* node, OrtGraph** graph);

public function OrtStatus* NodeGetEpNameFn(OrtNode* node, char8** outValue);

public function void ReleaseExternalInitializerInfoFn(OrtExternalInitializerInfo* input);

public function char16* ExternalInitializerInfoGetFilePathFn(OrtExternalInitializerInfo* info);

public function int64 ExternalInitializerInfoGetFileOffsetFn(OrtExternalInitializerInfo* info);

public function uint64 ExternalInitializerInfoGetByteSizeFn(OrtExternalInitializerInfo* info);

public function char8* GetRunConfigEntryFn(OrtRunOptions* options, char8* configKey);

public function OrtMemoryInfo* EpDeviceMemoryInfoFn(OrtEpDevice* epDevice, OrtDeviceMemoryType memoryType);

public function OrtStatus* CreateSharedAllocatorFn(OrtEnv* env, OrtEpDevice* epDevice, OrtDeviceMemoryType memType, OrtAllocatorType allocatorType, OrtKeyValuePairs* allocatorOptions, OrtAllocator** allocator);

public function OrtStatus* GetSharedAllocatorFn(OrtEnv* env, OrtMemoryInfo* memInfo, OrtAllocator** allocator);

public function OrtStatus* ReleaseSharedAllocatorFn(OrtEnv* env, OrtEpDevice* epDevice, OrtDeviceMemoryType memType);

public function OrtStatus* GetTensorDataFn(OrtValue* value, void** outValue);

public function OrtStatus* GetSessionOptionsConfigEntriesFn(OrtSessionOptions* options, OrtKeyValuePairs** outValue);

public function OrtStatus* SessionGetMemoryInfoForInputsFn(OrtSession* session, OrtMemoryInfo** inputsMemoryInfo, uint64 numInputs);

public function OrtStatus* SessionGetMemoryInfoForOutputsFn(OrtSession* session, OrtMemoryInfo** outputsMemoryInfo, uint64 numOutputs);

public function OrtStatus* SessionGetEpDeviceForInputsFn(OrtSession* session, OrtEpDevice** inputsEpDevices, uint64 numInputs);

public function OrtStatus* CreateSyncStreamForEpDeviceFn(OrtEpDevice* epDevice, OrtKeyValuePairs* streamOptions, OrtSyncStream** stream);

public function void* SyncStreamGetHandleFn(OrtSyncStream* stream);

public function void ReleaseSyncStreamFn(OrtSyncStream* input);

public function OrtStatus* CopyTensorsFn(OrtEnv* env, OrtValue** srcTensors, OrtValue** dstTensors, OrtSyncStream* stream, uint64 numTensors);

public function OrtStatus* GraphGetModelMetadataFn(OrtGraph* graph, OrtModelMetadata** outValue);

public function OrtStatus* GetModelCompatibilityForEpDevicesFn(OrtEpDevice** epDevices, uint64 numEpDevices, char8* compatibilityInfo, OrtCompiledModelCompatibility* outStatus);

public function OrtStatus* CreateExternalInitializerInfoFn(char16* filepath, int64 fileOffset, uint64 byteSize, OrtExternalInitializerInfo** outValue);

public function bool TensorTypeAndShapeHasShapeFn(OrtTensorTypeAndShapeInfo* info);

public function OrtStatus* KernelInfoGetConfigEntriesFn(OrtKernelInfo* info, OrtKeyValuePairs** outValue);

public function OrtStatus* KernelInfoGetOperatorDomainFn(OrtKernelInfo* info, char8* outValue, uint64* size);

public function OrtStatus* KernelInfoGetOperatorTypeFn(OrtKernelInfo* info, char8* outValue, uint64* size);

public function OrtStatus* KernelInfoGetOperatorSinceVersionFn(OrtKernelInfo* info, int32* sinceVersion);

public function OrtInteropApi* GetInteropApiFn();

public function OrtStatus* SessionGetEpDeviceForOutputsFn(OrtSession* session, OrtEpDevice** outputsEpDevices, uint64 numOutputs);

public function OrtStatus* GetNumHardwareDevicesFn(OrtEnv* env, uint64* numDevices);

public function OrtStatus* GetHardwareDevicesFn(OrtEnv* env, OrtHardwareDevice** devices, uint64 numDevices);

public function OrtStatus* GetHardwareDeviceEpIncompatibilityDetailsFn(OrtEnv* env, char8* epName, OrtHardwareDevice* hw, OrtDeviceEpIncompatibilityDetails** details);

public function OrtStatus* DeviceEpIncompatibilityDetailsGetReasonsBitmaskFn(OrtDeviceEpIncompatibilityDetails* details, uint32* reasonsBitmask);

public function OrtStatus* DeviceEpIncompatibilityDetailsGetNotesFn(OrtDeviceEpIncompatibilityDetails* details, char8** notes);

public function OrtStatus* DeviceEpIncompatibilityDetailsGetErrorCodeFn(OrtDeviceEpIncompatibilityDetails* details, int32* errorCode);

public function void ReleaseDeviceEpIncompatibilityDetailsFn(OrtDeviceEpIncompatibilityDetails* input);

public function OrtStatus* CreateEnvWithOptionsFn(OrtEnvCreationOptions* options, OrtEnv** outValue);

public function OrtStatus* SessionGetEpGraphAssignmentInfoFn(OrtSession* session, OrtEpAssignedSubgraph*** epSubgraphs, uint64* numEpSubgraphs);

public function OrtStatus* EpAssignedSubgraphGetEpNameFn(OrtEpAssignedSubgraph* epSubgraph, char8** outValue);

public function OrtStatus* EpAssignedSubgraphGetNodesFn(OrtEpAssignedSubgraph* epSubgraph, OrtEpAssignedNode*** epNodes, uint64* numEpNodes);

public function OrtStatus* EpAssignedNodeGetNameFn(OrtEpAssignedNode* epNode, char8** outValue);

public function OrtStatus* EpAssignedNodeGetDomainFn(OrtEpAssignedNode* epNode, char8** outValue);

public function OrtStatus* EpAssignedNodeGetOperatorTypeFn(OrtEpAssignedNode* epNode, char8** outValue);

public function void RunOptionsSetSyncStreamFn(OrtRunOptions* options, OrtSyncStream* syncStream);

public function void* CreateKernelFn(OrtCustomOp* op, OrtApi* api, OrtKernelInfo* info);

public function char8* GetNameFn(OrtCustomOp* op);

public function char8* GetExecutionProviderTypeFn(OrtCustomOp* op);

public function ONNXTensorElementDataType GetInputTypeFn(OrtCustomOp* op, uint64 index);

public function uint64 GetInputTypeCountFn(OrtCustomOp* op);

public function ONNXTensorElementDataType GetOutputTypeFn(OrtCustomOp* op, uint64 index);

public function uint64 GetOutputTypeCountFn(OrtCustomOp* op);

public function void KernelComputeFn(void* opKernel, OrtKernelContext* context);

public function void KernelDestroyFn(void* opKernel);

public function OrtCustomOpInputOutputCharacteristic GetInputCharacteristicFn(OrtCustomOp* op, uint64 index);

public function OrtCustomOpInputOutputCharacteristic GetOutputCharacteristicFn(OrtCustomOp* op, uint64 index);

public function OrtMemType GetInputMemoryTypeFn(OrtCustomOp* op, uint64 index);

public function int32 GetVariadicInputMinArityFn(OrtCustomOp* op);

public function int32 GetVariadicInputHomogeneityFn(OrtCustomOp* op);

public function int32 GetVariadicOutputMinArityFn(OrtCustomOp* op);

public function int32 GetVariadicOutputHomogeneityFn(OrtCustomOp* op);

public function OrtStatus* CreateKernelV2Fn(OrtCustomOp* op, OrtApi* api, OrtKernelInfo* info, void** kernel);

public function OrtStatus* KernelComputeV2Fn(void* opKernel, OrtKernelContext* context);

public function OrtStatus* InferOutputShapeFnFn(OrtCustomOp* op, OrtShapeInferContext* value);

public function int32 GetStartVersionFn(OrtCustomOp* op);

public function int32 GetEndVersionFn(OrtCustomOp* op);

public function uint64 GetMayInplaceFn(int32** inputIndex, int32** outputIndex);

public function void ReleaseMayInplaceFn(int32* inputIndex, int32* outputIndex);

public function uint64 GetAliasMapFn(int32** inputIndex, int32** outputIndex);

public function void ReleaseAliasMapFn(int32* inputIndex, int32* outputIndex);

public function OrtStatus* CreateTensorTypeInfoFn(OrtTensorTypeAndShapeInfo* tensorInfo, OrtTypeInfo** typeInfo);

public function OrtStatus* CreateSparseTensorTypeInfoFn(OrtTensorTypeAndShapeInfo* tensorInfo, OrtTypeInfo** typeInfo);

public function OrtStatus* CreateMapTypeInfoFn(ONNXTensorElementDataType mapKeyType, OrtTypeInfo* mapValueType, OrtTypeInfo** typeInfo);

public function OrtStatus* CreateSequenceTypeInfoFn(OrtTypeInfo* sequenceType, OrtTypeInfo** typeInfo);

public function OrtStatus* CreateOptionalTypeInfoFn(OrtTypeInfo* containedType, OrtTypeInfo** typeInfo);

public function OrtStatus* CreateValueInfoFn(char8* name, OrtTypeInfo* typeInfo, OrtValueInfo** valueInfo);

public function OrtStatus* CreateNodeFn(char8* operatorName, char8* domainName, char8* nodeName, char8** inputNames, uint64 inputNamesLen, char8** outputNames, uint64 outputNamesLen, OrtOpAttr** attributes, uint64 attribsLen, OrtNode** node);

public function OrtStatus* CreateGraphFn(OrtGraph** graph);

public function OrtStatus* SetGraphInputsFn(OrtGraph* graph, OrtValueInfo** inputs, uint64 inputsLen);

public function OrtStatus* SetGraphOutputsFn(OrtGraph* graph, OrtValueInfo** outputs, uint64 outputsLen);

public function OrtStatus* AddInitializerToGraphFn(OrtGraph* graph, char8* name, OrtValue* tensor, bool dataIsExternal);

public function OrtStatus* AddNodeToGraphFn(OrtGraph* graph, OrtNode* node);

public function OrtStatus* CreateModelFn(char8** domainNames, int32* opsetVersions, uint64 opsetEntriesLen, OrtModel** model);

public function OrtStatus* AddGraphToModelFn(OrtModel* model, OrtGraph* graph);

public function OrtStatus* CreateSessionFromModelFn(OrtEnv* env, OrtModel* model, OrtSessionOptions* options, OrtSession** outValue);

public function OrtStatus* CreateModelEditorSessionFn(OrtEnv* env, char16* modelPath, OrtSessionOptions* options, OrtSession** outValue);

public function OrtStatus* CreateModelEditorSessionFromArrayFn(OrtEnv* env, void* modelData, uint64 modelDataLength, OrtSessionOptions* options, OrtSession** outValue);

public function OrtStatus* SessionGetOpsetForDomainFn(OrtSession* session, char8* domain, int32* opset);

public function OrtStatus* ApplyModelToModelEditorSessionFn(OrtSession* session, OrtModel* model);

public function OrtStatus* FinalizeModelEditorSessionFn(OrtSession* session, OrtSessionOptions* options, OrtPrepackedWeightsContainer* prepackedWeightsContainer);

public function void ReleaseModelCompilationOptionsFn(OrtModelCompilationOptions* input);

public function OrtStatus* CreateModelCompilationOptionsFromSessionOptionsFn(OrtEnv* env, OrtSessionOptions* sessionOptions, OrtModelCompilationOptions** outValue);

public function OrtStatus* ModelCompilationOptionsSetInputModelPathFn(OrtModelCompilationOptions* modelCompileOptions, char16* inputModelPath);

public function OrtStatus* ModelCompilationOptionsSetInputModelFromBufferFn(OrtModelCompilationOptions* modelCompileOptions, void* inputModelData, uint64 inputModelDataSize);

public function OrtStatus* ModelCompilationOptionsSetOutputModelPathFn(OrtModelCompilationOptions* modelCompileOptions, char16* outputModelPath);

public function OrtStatus* ModelCompilationOptionsSetOutputModelExternalInitializersFileFn(OrtModelCompilationOptions* modelCompileOptions, char16* externalInitializersFilePath, uint64 externalInitializersSizeThreshold);

public function OrtStatus* ModelCompilationOptionsSetOutputModelBufferFn(OrtModelCompilationOptions* modelCompileOptions, OrtAllocator* allocator, void** outputModelBufferPtr, uint64* outputModelBufferSizePtr);

public function OrtStatus* ModelCompilationOptionsSetEpContextEmbedModeFn(OrtModelCompilationOptions* modelCompileOptions, bool embedEpContextInModel);

public function OrtStatus* CompileModelFn(OrtEnv* env, OrtModelCompilationOptions* modelOptions);

public function OrtStatus* ModelCompilationOptionsSetFlagsFn(OrtModelCompilationOptions* modelCompileOptions, uint32 flags);

public function OrtStatus* ModelCompilationOptionsSetEpContextBinaryInformationFn(OrtModelCompilationOptions* modelCompileOptions, char16* outputDirectory, char16* modelName);

public function OrtStatus* ModelCompilationOptionsSetGraphOptimizationLevelFn(OrtModelCompilationOptions* modelCompileOptions, GraphOptimizationLevel graphOptimizationLevel);

public function OrtStatus* ModelCompilationOptionsSetOutputModelWriteFuncFn(OrtModelCompilationOptions* modelCompileOptions, OrtWriteBufferFunc writeFunc, void* state);

public function OrtStatus* ModelCompilationOptionsSetOutputModelGetInitializerLocationFuncFn(OrtModelCompilationOptions* modelCompileOptions, OrtGetInitializerLocationFunc getInitializerLocationFunc, void* state);

public function OrtStatus* CreateExternalResourceImporterForDeviceFn(OrtEpDevice* epDevice, OrtExternalResourceImporter** outImporter);

public function void ReleaseExternalResourceImporterFn(OrtExternalResourceImporter* input);

public function OrtStatus* CanImportMemoryFn(OrtExternalResourceImporter* importer, OrtExternalMemoryHandleType handleType, bool* outSupported);

public function OrtStatus* ImportMemoryFn(OrtExternalResourceImporter* importer, OrtExternalMemoryDescriptor* desc, OrtExternalMemoryHandle** outHandle);

public function void ReleaseExternalMemoryHandleFn(OrtExternalMemoryHandle* input);

public function OrtStatus* CreateTensorFromMemoryFn(OrtExternalResourceImporter* importer, OrtExternalMemoryHandle* memHandle, OrtExternalTensorDescriptor* tensorDesc, OrtValue** outTensor);

public function OrtStatus* CanImportSemaphoreFn(OrtExternalResourceImporter* importer, OrtExternalSemaphoreType type, bool* outSupported);

public function OrtStatus* ImportSemaphoreFn(OrtExternalResourceImporter* importer, OrtExternalSemaphoreDescriptor* desc, OrtExternalSemaphoreHandle** outHandle);

public function void ReleaseExternalSemaphoreHandleFn(OrtExternalSemaphoreHandle* input);

public function OrtStatus* WaitSemaphoreFn(OrtExternalResourceImporter* importer, OrtExternalSemaphoreHandle* semaphoreHandle, OrtSyncStream* stream, uint64 value);

public function OrtStatus* SignalSemaphoreFn(OrtExternalResourceImporter* importer, OrtExternalSemaphoreHandle* semaphoreHandle, OrtSyncStream* stream, uint64 value);

public function void OrtLoggingFunction(void* param, OrtLoggingLevel severity, char8* category, char8* logid, char8* codeLocation, char8* message);

public function void OrtThreadWorkerFn(void* ortWorkerFnParam);

public function OrtCustomHandleType OrtCustomCreateThreadFn(void* ortCustomThreadCreationOptions, OrtThreadWorkerFn ortThreadWorkerFn, void* ortWorkerFnParam);

public function void OrtCustomJoinThreadFn(OrtCustomHandleType ortCustomThreadHandle);

public function void RunAsyncCallbackFn(void* userData, OrtValue** outputs, uint64 numOutputs, OrtStatus status);

public function OrtStatus* OrtWriteBufferFunc(void* state, void* buffer, uint64 bufferNumBytes);

public function OrtStatus* OrtGetInitializerLocationFunc(void* state, char8* initializerName, OrtValue* initializerValue, OrtExternalInitializerInfo* externalInfo, OrtExternalInitializerInfo** newExternalInfo);

public function OrtStatus* EpSelectionDelegate(OrtEpDevice** epDevices, uint64 numDevices, OrtKeyValuePairs* modelMetadata, OrtKeyValuePairs* runtimeMetadata, OrtEpDevice** selected, uint64 maxSelected, uint64* numSelected, void* state);

public function OrtStatus* RegisterCustomOpsFn(OrtSessionOptions* options, OrtApiBase* api);

public function void ReleaseFn(OrtExternalMemoryHandle* handle);

public function bool CanCopyFn(OrtDataTransferImpl* thisPtr, OrtMemoryDevice* srcMemoryDevice, OrtMemoryDevice* dstMemoryDevice);

public function OrtStatus* ActivateFn(OrtSyncNotificationImpl* thisPtr);

public function OrtStatus* WaitOnDeviceFn(OrtSyncNotificationImpl* thisPtr, OrtSyncStream* consumerStream);

public function OrtStatus* WaitOnHostFn(OrtSyncNotificationImpl* thisPtr);

public function void* GetHandleFn(OrtSyncStreamImpl* thisPtr);

public function OrtStatus* CreateNotificationFn(OrtSyncStreamImpl* thisPtr, OrtSyncNotificationImpl** notification);

public function OrtStatus* FlushFn(OrtSyncStreamImpl* thisPtr);

public function OrtStatus* OnSessionRunEndFn(OrtSyncStreamImpl* thisPtr);

public function void ReleaseMemoryFn(OrtExternalResourceImporterImpl* thisPtr, OrtExternalMemoryHandle* handle);

public function void ReleaseSemaphoreFn(OrtExternalResourceImporterImpl* thisPtr, OrtExternalSemaphoreHandle* handle);

public function OrtStatus* CreateStateFn(OrtNodeComputeInfo* thisPtr, OrtNodeComputeContext* computeContext, void** computeState);

public function OrtStatus* ComputeFn(OrtNodeComputeInfo* thisPtr, void* computeState, OrtKernelContext* kernelContext);

public function void ReleaseStateFn(OrtNodeComputeInfo* thisPtr, void* computeState);

public function OrtStatus* PrePackWeightFn(OrtKernelImpl* thisPtr, OrtValue* tensor, int32 inputIndex, OrtAllocator* allocator, OrtSharedPrePackedWeightCache* prepackedWeightCache, bool* isPacked);

public function OrtStatus* SetSharedPrePackedWeightFn(OrtKernelImpl* thisPtr, void** bufferDataPtrs, uint64* bufferDataSizes, uint64 numBuffers, int32 inputIndex);

public function OrtStatus* ConcatOutputFn(OrtLoopKernelHelper* thisPtr, void* streamHandle, OrtValue** perIterationOutputs, uint64 numPerIterationOutputs, void* output, uint64 outputSizeInBytes);

public function OrtStatus* TransposeFn(OrtScanKernelHelper* thisPtr, uint64* permutation, uint64 numPermutationElems, OrtValue* input, OrtSyncStream* stream, OrtValue* output);

public function OrtStatus* CreateEpDeviceFn(OrtEpFactory* epFactory, OrtHardwareDevice* hardwareDevice, OrtKeyValuePairs* epMetadata, OrtKeyValuePairs* epOptions, OrtEpDevice** epDevice);

public function void ReleaseEpDeviceFn(OrtEpDevice* input);

public function OrtStatus* EpGraphSupportInfoAddNodesToFuseFn(OrtEpGraphSupportInfo* graphSupportInfo, OrtNode** nodes, uint64 numNodes, OrtNodeFusionOptions* nodeFusionOptions);

public function OrtStatus* EpGraphSupportInfoAddSingleNodeFn(OrtEpGraphSupportInfo* graphSupportInfo, OrtNode* node);

public function char8* NodeComputeContextNodeNameFn(OrtNodeComputeContext* context);

public function OrtStatus* EpDeviceAddAllocatorInfoFn(OrtEpDevice* epDevice, OrtMemoryInfo* allocatorMemoryInfo);

public function OrtMemoryDevice* MemoryInfoGetMemoryDeviceFn(OrtMemoryInfo* memoryInfo);

public function OrtMemoryDevice* ValueGetMemoryDeviceFn(OrtValue* value);

public function bool MemoryDeviceAreEqualFn(OrtMemoryDevice* a, OrtMemoryDevice* b);

public function OrtMemoryInfoDeviceType MemoryDeviceGetDeviceTypeFn(OrtMemoryDevice* memoryDevice);

public function OrtDeviceMemoryType MemoryDeviceGetMemoryTypeFn(OrtMemoryDevice* memoryDevice);

public function uint32 MemoryDeviceGetVendorIdFn(OrtMemoryDevice* memoryDevice);

public function uint32 MemoryDeviceGetDeviceIdFn(OrtMemoryDevice* memoryDevice);

public function OrtSyncStreamImpl* SyncStreamGetImplFn(OrtSyncStream* stream);

public function uint64 SyncStreamGetSyncIdFn(OrtSyncStream* stream);

public function uint64 GetSyncIdForLastWaitOnSyncStreamFn(OrtSyncStream* producerStream, OrtSyncStream* consumerStream);

public function OrtStatus* CreateHardwareDeviceFn(OrtHardwareDeviceType type, uint32 vendorId, uint32 deviceId, char8* vendorName, OrtKeyValuePairs* metadata, OrtHardwareDevice** hardwareDevice);

public function void ReleaseHardwareDeviceFn(OrtHardwareDevice* input);

public function OrtStatus* CreateKernelRegistryFn(OrtKernelRegistry** kernelRegistry);

public function void ReleaseKernelRegistryFn(OrtKernelRegistry* input);

public function OrtStatus* KernelRegistryAddKernelFn(OrtKernelRegistry* kernelRegistry, OrtKernelDef* kernelDef, OrtKernelCreateFunc kernelCreateFunc, void* kernelCreateFuncState);

public function OrtStatus* CreateKernelDefBuilderFn(OrtKernelDefBuilder** kernelDefBuilderOut);

public function void ReleaseKernelDefBuilderFn(OrtKernelDefBuilder* input);

public function OrtStatus* KernelDefBuilderSetOperatorTypeFn(OrtKernelDefBuilder* kernelDefBuilder, char8* opType);

public function OrtStatus* KernelDefBuilderSetDomainFn(OrtKernelDefBuilder* kernelDefBuilder, char8* domain);

public function OrtStatus* KernelDefBuilderSetSinceVersionFn(OrtKernelDefBuilder* kernelDefBuilder, int32 sinceVersionStart, int32 sinceVersionEnd);

public function OrtStatus* KernelDefBuilderSetExecutionProviderFn(OrtKernelDefBuilder* kernelDefBuilder, char8* epName);

public function OrtStatus* KernelDefBuilderSetInputMemTypeFn(OrtKernelDefBuilder* kernelDefBuilder, uint64 inputIndex, OrtMemType memType);

public function OrtStatus* KernelDefBuilderSetOutputMemTypeFn(OrtKernelDefBuilder* kernelDefBuilder, uint64 outputIndex, OrtMemType memType);

public function OrtStatus* KernelDefBuilderAddTypeConstraintFn(OrtKernelDefBuilder* kernelDefBuilder, char8* argName, OrtDataType** types, uint64 numTypes);

public function OrtStatus* KernelDefBuilderAddInputOutputAliasesFn(OrtKernelDefBuilder* kernelDefBuilder, int32* inputIndices, int32* outputIndices, uint64 numIoIndices);

public function OrtStatus* KernelDefBuilderAddInputOutputMutableAliasesFn(OrtKernelDefBuilder* kernelDefBuilder, int32* inputIndices, int32* outputIndices, uint64 numIoIndices);

public function OrtStatus* KernelDefBuilderBuildFn(OrtKernelDefBuilder* kernelDefBuilder, OrtKernelDef** kernelDefOut);

public function void ReleaseKernelDefFn(OrtKernelDef* input);

public function char8* KernelDefGetOperatorTypeFn(OrtKernelDef* kernelDef);

public function char8* KernelDefGetDomainFn(OrtKernelDef* kernelDef);

public function OrtStatus* KernelDefGetSinceVersionFn(OrtKernelDef* kernelDef, int32* startVersion, int32* endVersion);

public function char8* KernelDefGetExecutionProviderFn(OrtKernelDef* kernelDef);

public function OrtStatus* KernelDefGetInputMemTypeFn(OrtKernelDef* kernelDef, uint64 inputIndex, OrtMemType* memType);

public function OrtStatus* KernelDefGetOutputMemTypeFn(OrtKernelDef* kernelDef, uint64 outputIndex, OrtMemType* memType);

public function OrtStatus* GetTensorDataTypeFn(ONNXTensorElementDataType elemType, OrtDataType** outValue);

public function OrtStatus* EpGraphSupportInfoLookUpKernelFn(OrtEpGraphSupportInfo* graphSupportInfo, OrtNode* node, OrtKernelDef** outKernelDef);

public function OrtStatus* SharedPrePackedWeightCacheStoreWeightDataFn(OrtSharedPrePackedWeightCache* prepackedWeightCache, void** bufferDataPtrs, uint64* bufferDataSizes, uint64 numBuffers);

public function OrtStatus* KernelInfoGetEpFn(OrtKernelInfo* info, OrtEp** ep);

public function OrtStatus* DeviceEpIncompatibilityDetailsSetDetailsFn(OrtDeviceEpIncompatibilityDetails* details, uint32 reasonsBitmask, int32 errorCode, char8* notes);

public function OrtStatus* CreateIfKernelFn(OrtKernelInfo* kernelInfo, OrtKernelImpl** kernelOut);

public function OrtStatus* CreateLoopKernelFn(OrtKernelInfo* kernelInfo, OrtLoopKernelHelper* helper, OrtKernelImpl** kernelOut);

public function OrtStatus* CreateScanKernelFn(OrtKernelInfo* kernelInfo, OrtScanKernelHelper* helper, OrtKernelImpl** kernelOut);

public function void ReleaseKernelImplFn(OrtKernelImpl* input);

public function OrtStatus* GetEnvConfigEntriesFn(OrtKeyValuePairs** configEntries);

public function OrtStatus* GetCapabilityFn(OrtEp* thisPtr, OrtGraph* graph, OrtEpGraphSupportInfo* graphSupportInfo);

public function OrtStatus* CompileFn(OrtEp* thisPtr, OrtGraph** graphs, OrtNode** fusedNodes, uint64 count, OrtNodeComputeInfo** nodeComputeInfos, OrtNode** epContextNodes);

public function void ReleaseNodeComputeInfosFn(OrtEp* thisPtr, OrtNodeComputeInfo** nodeComputeInfos, uint64 numNodeComputeInfos);

public function OrtStatus* GetPreferredDataLayoutFn(OrtEp* thisPtr, OrtEpDataLayout* preferredDataLayout);

public function OrtStatus* ShouldConvertDataLayoutForOpFn(OrtEp* thisPtr, char8* domain, char8* opType, OrtEpDataLayout targetDataLayout, int32* shouldConvert);

public function OrtStatus* SetDynamicOptionsFn(OrtEp* thisPtr, char8** optionKeys, char8** optionValues, uint64 numOptions);

public function OrtStatus* OnRunStartFn(OrtEp* thisPtr, OrtRunOptions* runOptions);

public function OrtStatus* OnRunEndFn(OrtEp* thisPtr, OrtRunOptions* runOptions, bool syncStream);

public function OrtStatus* CreateSyncStreamForDeviceFn(OrtEp* thisPtr, OrtMemoryDevice* memoryDevice, OrtSyncStreamImpl** stream);

public function char8* GetCompiledModelCompatibilityInfoFn(OrtEp* thisPtr, OrtGraph* graph);

public function OrtStatus* GetKernelRegistryFn(OrtEp* thisPtr, OrtKernelRegistry** kernelRegistry);

public function OrtStatus* IsConcurrentRunSupportedFn(OrtEp* thisPtr, bool* isSupported);

public function char8* GetVendorFn(OrtEpFactory* thisPtr);

public function OrtStatus* GetSupportedDevicesFn(OrtEpFactory* thisPtr, OrtHardwareDevice** devices, uint64 numDevices, OrtEpDevice** epDevices, uint64 maxEpDevices, uint64* numEpDevices);

public function OrtStatus* CreateEpFn(OrtEpFactory* thisPtr, OrtHardwareDevice** devices, OrtKeyValuePairs** epMetadataPairs, uint64 numDevices, OrtSessionOptions* sessionOptions, OrtLogger* logger, OrtEp** ep);

public function void ReleaseEpFn(OrtEpFactory* thisPtr, OrtEp* ep);

public function uint32 GetVendorIdFn(OrtEpFactory* thisPtr);

public function char8* GetVersionFn(OrtEpFactory* thisPtr);

public function OrtStatus* ValidateCompiledModelCompatibilityInfoFn(OrtEpFactory* thisPtr, OrtHardwareDevice** devices, uint64 numDevices, char8* compatibilityInfo, OrtCompiledModelCompatibility* modelCompatibility);

public function OrtStatus* CreateDataTransferFn(OrtEpFactory* thisPtr, OrtDataTransferImpl** dataTransfer);

public function bool IsStreamAwareFn(OrtEpFactory* thisPtr);

public function OrtStatus* GetHardwareDeviceIncompatibilityDetailsFn(OrtEpFactory* thisPtr, OrtHardwareDevice* hw, OrtDeviceEpIncompatibilityDetails* details);

public function OrtStatus* OrtKernelCreateFunc(void* kernelCreateFuncState, OrtKernelInfo* info, OrtKernelImpl** kernelOut);

public function OrtStatus* CreateEpApiFactoriesFn(char8* registeredName, OrtApiBase* ortApiBase, OrtLogger* defaultLogger, OrtEpFactory** factories, uint64 maxFactories, uint64* numFactories);

public function OrtStatus* ReleaseEpApiFactoryFn(OrtEpFactory* factory);