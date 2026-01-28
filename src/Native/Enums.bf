using System;
using System.Interop;

namespace OnnxRuntime.Native;

/** Copied from TensorProto::DataType
* Currently, Ort doesn't support complex64, complex128
*/
[AllowDuplicates]
public enum ONNXTensorElementDataType : c_int
{
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_UNDEFINED = 0;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT = 1;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT8 = 2;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_INT8 = 3;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT16 = 4;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_INT16 = 5;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_INT32 = 6;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_INT64 = 7;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING = 8;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_BOOL = 9;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT16 = 10;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_DOUBLE = 11;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT32 = 12;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT64 = 13;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_COMPLEX64 = 14;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_COMPLEX128 = 15;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_BFLOAT16 = 16;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E4M3FN = 17;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E4M3FNUZ = 18;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E5M2 = 19;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E5M2FNUZ = 20;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT4 = 21;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_INT4 = 22;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT4E2M1 = 23;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT2 = 24;
	case ONNX_TENSOR_ELEMENT_DATA_TYPE_INT2 = 25;
}

[AllowDuplicates]
public enum ONNXType : c_int
{
	case ONNX_TYPE_UNKNOWN = 0;
	case ONNX_TYPE_TENSOR = 1;
	case ONNX_TYPE_SEQUENCE = 2;
	case ONNX_TYPE_MAP = 3;
	case ONNX_TYPE_OPAQUE = 4;
	case ONNX_TYPE_SPARSETENSOR = 5;
	case ONNX_TYPE_OPTIONAL = 6;
}

[AllowDuplicates]
public enum OrtSparseFormat : c_int
{
	case ORT_SPARSE_UNDEFINED = 0;
	case ORT_SPARSE_COO = 1;
	case ORT_SPARSE_CSRC = 2;
	case ORT_SPARSE_BLOCK_SPARSE = 4;
}

[AllowDuplicates]
public enum OrtSparseIndicesFormat : c_int
{
	case ORT_SPARSE_COO_INDICES = 0;
	case ORT_SPARSE_CSR_INNER_INDICES = 1;
	case ORT_SPARSE_CSR_OUTER_INDICES = 2;
	case ORT_SPARSE_BLOCK_SPARSE_INDICES = 3;
}

/** \brief Logging severity levels
*
* In typical API usage, specifying a logging severity level specifies the minimum severity of log messages to show.
*/
[AllowDuplicates]
public enum OrtLoggingLevel : c_int
{
	// ///< Verbose informational messages (least severe).
	case ORT_LOGGING_LEVEL_VERBOSE = 0;
	// ///< Informational messages.
	case ORT_LOGGING_LEVEL_INFO = 1;
	// ///< Warning messages.
	case ORT_LOGGING_LEVEL_WARNING = 2;
	// ///< Error messages.
	case ORT_LOGGING_LEVEL_ERROR = 3;
	// ///< Fatal error messages (most severe).
	case ORT_LOGGING_LEVEL_FATAL = 4;
}

[AllowDuplicates]
public enum OrtErrorCode : c_int
{
	case ORT_OK = 0;
	case ORT_FAIL = 1;
	case ORT_INVALID_ARGUMENT = 2;
	case ORT_NO_SUCHFILE = 3;
	case ORT_NO_MODEL = 4;
	case ORT_ENGINE_ERROR = 5;
	case ORT_RUNTIME_EXCEPTION = 6;
	case ORT_INVALID_PROTOBUF = 7;
	case ORT_MODEL_LOADED = 8;
	case ORT_NOT_IMPLEMENTED = 9;
	case ORT_INVALID_GRAPH = 10;
	case ORT_EP_FAIL = 11;
	case ORT_MODEL_LOAD_CANCELED = 12;
	case ORT_MODEL_REQUIRES_COMPILATION = 13;
	case ORT_NOT_FOUND = 14;
}

[AllowDuplicates]
public enum OrtOpAttrType : c_int
{
	case ORT_OP_ATTR_UNDEFINED = 0;
	case ORT_OP_ATTR_INT = 1;
	case ORT_OP_ATTR_INTS = 2;
	case ORT_OP_ATTR_FLOAT = 3;
	case ORT_OP_ATTR_FLOATS = 4;
	case ORT_OP_ATTR_STRING = 5;
	case ORT_OP_ATTR_STRINGS = 6;
	case ORT_OP_ATTR_GRAPH = 7;
	case ORT_OP_ATTR_TENSOR = 8;
}

/** \brief External memory handle type for importing GPU resources.
*
* \todo Add OPAQUE_WIN32 for Windows Vulkan-specific memory handles
* \todo Add POSIX file descriptor (OPAQUE_FD) for Linux Vulkan/CUDA/OpenCL interop
* \todo Add Linux DMA-BUF file descriptor for embedded GPU memory sharing
*
* \since Version 1.24.
*/
[AllowDuplicates]
public enum OrtExternalMemoryHandleType : c_int
{
	// /**< Shared HANDLE from ID3D12Device::CreateSharedHandle(resource) */
	case ORT_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE = 0;
	// /**< Shared HANDLE from ID3D12Device::CreateSharedHandle(heap) */
	case ORT_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP = 1;
}

/** \brief External semaphore type for GPU synchronization.
*
* \since Version 1.24.
*/
[AllowDuplicates]
public enum OrtExternalSemaphoreType : c_int
{
	// /**< Shared HANDLE from ID3D12Device::CreateSharedHandle(fence) */
	case ORT_EXTERNAL_SEMAPHORE_D3D12_FENCE = 0;
}

/** \brief Graph optimization level
*
* Refer to https://www.onnxruntime.ai/docs/performance/graph-optimizations.html#graph-optimization-levels
* for an in-depth understanding of the Graph Optimization Levels.
*/
[AllowDuplicates]
public enum GraphOptimizationLevel : c_int
{
	case ORT_DISABLE_ALL = 0;
	case ORT_ENABLE_BASIC = 1;
	case ORT_ENABLE_EXTENDED = 2;
	case ORT_ENABLE_LAYOUT = 3;
	case ORT_ENABLE_ALL = 99;
}

[AllowDuplicates]
public enum ExecutionMode : c_int
{
	case ORT_SEQUENTIAL = 0;
	case ORT_PARALLEL = 1;
}

/** \brief Language projection identifiers
* /see OrtApi::SetLanguageProjection
*/
[AllowDuplicates]
public enum OrtLanguageProjection : c_int
{
	case ORT_PROJECTION_C = 0;
	case ORT_PROJECTION_CPLUSPLUS = 1;
	case ORT_PROJECTION_CSHARP = 2;
	case ORT_PROJECTION_PYTHON = 3;
	case ORT_PROJECTION_JAVA = 4;
	case ORT_PROJECTION_WINML = 5;
	case ORT_PROJECTION_NODEJS = 6;
}

[AllowDuplicates]
public enum OrtAllocatorType : size_t
{
	case OrtInvalidAllocator = 18446744073709551615;
	case OrtDeviceAllocator = 0;
	case OrtArenaAllocator = 1;
	case OrtReadOnlyAllocator = 2;
}

/** \brief Memory types for allocated memory, execution provider specific types should be extended in each provider.
*/
[AllowDuplicates]
public enum OrtMemType : size_t
{
	// /// Any CPU memory used by non-CPU execution provider
	case OrtMemTypeCPUInput = 18446744073709551614;
	// /// CPU accessible memory outputted by non-CPU execution provider, i.e. HOST_ACCESSIBLE
	case OrtMemTypeCPUOutput = 18446744073709551615;
	// /// CPU accessible memory allocated by non-CPU execution provider, i.e. HOST_ACCESSIBLE
	case OrtMemTypeCPU = 18446744073709551615;
	// /// The default allocator for execution provider
	case OrtMemTypeDefault = 0;
}

/** \brief Algorithm to use for cuDNN Convolution Op
*/
[AllowDuplicates]
public enum OrtCudnnConvAlgoSearch : c_int
{
	case OrtCudnnConvAlgoSearchExhaustive = 0;
	case OrtCudnnConvAlgoSearchHeuristic = 1;
	case OrtCudnnConvAlgoSearchDefault = 2;
}

/** \brief This mimics OrtDevice type constants so they can be returned in the API
*/
[AllowDuplicates]
public enum OrtMemoryInfoDeviceType : c_int
{
	case OrtMemoryInfoDeviceType_CPU = 0;
	case OrtMemoryInfoDeviceType_GPU = 1;
	case OrtMemoryInfoDeviceType_FPGA = 2;
	case OrtMemoryInfoDeviceType_NPU = 3;
}

/** \brief These are the default EP selection policies used by ORT when doing automatic EP selection.
*/
[AllowDuplicates]
public enum OrtExecutionProviderDevicePolicy : c_int
{
	case OrtExecutionProviderDevicePolicy_DEFAULT = 0;
	case OrtExecutionProviderDevicePolicy_PREFER_CPU = 1;
	case OrtExecutionProviderDevicePolicy_PREFER_NPU = 2;
	case OrtExecutionProviderDevicePolicy_PREFER_GPU = 3;
	case OrtExecutionProviderDevicePolicy_MAX_PERFORMANCE = 4;
	case OrtExecutionProviderDevicePolicy_MAX_EFFICIENCY = 5;
	case OrtExecutionProviderDevicePolicy_MIN_OVERALL_POWER = 6;
}

[AllowDuplicates]
public enum OrtHardwareDeviceType : c_int
{
	case OrtHardwareDeviceType_CPU = 0;
	case OrtHardwareDeviceType_GPU = 1;
	case OrtHardwareDeviceType_NPU = 2;
}

/// @}
[AllowDuplicates]
public enum OrtCompiledModelCompatibility : c_int
{
	case OrtCompiledModelCompatibility_EP_NOT_APPLICABLE = 0;
	case OrtCompiledModelCompatibility_EP_SUPPORTED_OPTIMAL = 1;
	case OrtCompiledModelCompatibility_EP_SUPPORTED_PREFER_RECOMPILATION = 2;
	case OrtCompiledModelCompatibility_EP_UNSUPPORTED = 3;
}

/** \brief This matches OrtDevice::MemoryType values */
[AllowDuplicates]
public enum OrtDeviceMemoryType : c_int
{
	// ///< Device memory
	case OrtDeviceMemoryType_DEFAULT = 0;
	// ///< Shared/pinned memory for transferring between CPU and the device
	case OrtDeviceMemoryType_HOST_ACCESSIBLE = 5;
}

[AllowDuplicates]
public enum OrtCustomOpInputOutputCharacteristic : c_int
{
	case INPUT_OUTPUT_REQUIRED = 0;
	case INPUT_OUTPUT_OPTIONAL = 1;
	case INPUT_OUTPUT_VARIADIC = 2;
}

/** \brief Reasons why an execution provider might not be compatible with a device
*/
[AllowDuplicates]
public enum OrtDeviceEpIncompatibilityReason : size_t
{
	case OrtDeviceEpIncompatibility_NONE = 0;
	case OrtDeviceEpIncompatibility_DRIVER_INCOMPATIBLE = 1;
	case OrtDeviceEpIncompatibility_DEVICE_INCOMPATIBLE = 2;
	case OrtDeviceEpIncompatibility_MISSING_DEPENDENCY = 4;
	case OrtDeviceEpIncompatibility_UNKNOWN = 18446744071562067968;
}

/** \brief Flags representing options to enable when compiling a model.
*/
[AllowDuplicates]
public enum OrtCompileApiFlags : c_int
{
	case OrtCompileApiFlags_NONE = 0;
	case OrtCompileApiFlags_ERROR_IF_NO_NODES_COMPILED = 1;
	case OrtCompileApiFlags_ERROR_IF_OUTPUT_FILE_EXISTS = 2;
}

/**
* \brief The data layout type.
*
* EPs may specify a preferred data layout type. ORT's default layout type is OrtEpDataLayout_NCHW, or
* OrtEpDataLayout_Default.
*
* \since Version 1.23.
*/
[AllowDuplicates]
public enum OrtEpDataLayout : c_int
{
	case OrtEpDataLayout_NCHW = 0;
	case OrtEpDataLayout_NHWC = 1;
	case OrtEpDataLayout_Default = 0;
}