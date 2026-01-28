using System;
using System.Collections;
using OnnxRuntime.Native;

namespace OnnxRuntime.Session.TensorUtils;

public class TensorBase
{
	private static readonly Dictionary<Type, TensorTypeInfo> typeInfoMap ~ delete _;
	private static readonly Dictionary<TensorElementType, TensorElementTypeInfo> tensorElementTypeInfoMap ~ delete _;

	static this()
	{
		typeInfoMap = new Dictionary<Type, TensorTypeInfo>();
		typeInfoMap.Add(typeof(float), new TensorTypeInfo(TensorElementType.Float, sizeof(float)));
		typeInfoMap.Add(typeof(uint8), new TensorTypeInfo(TensorElementType.UInt8, sizeof(uint8)));
		typeInfoMap.Add(typeof(int8), new TensorTypeInfo(TensorElementType.Int8, sizeof(int8)));
		typeInfoMap.Add(typeof(uint16), new TensorTypeInfo(TensorElementType.UInt16, sizeof(uint16)));
		typeInfoMap.Add(typeof(int16), new TensorTypeInfo(TensorElementType.Int16, sizeof(int16)));
		typeInfoMap.Add(typeof(int), new TensorTypeInfo(TensorElementType.Int32, sizeof(int)));
		typeInfoMap.Add(typeof(int64), new TensorTypeInfo(TensorElementType.Int64, sizeof(int64)));
		typeInfoMap.Add(typeof(String), new TensorTypeInfo(TensorElementType.String, sizeof(String)));
		typeInfoMap.Add(typeof(bool), new TensorTypeInfo(TensorElementType.Bool, sizeof(bool)));
		typeInfoMap.Add(typeof(Float16), new TensorTypeInfo(TensorElementType.Float16, sizeof(uint16)));
		typeInfoMap.Add(typeof(double), new TensorTypeInfo(TensorElementType.Double, sizeof(double)));
		typeInfoMap.Add(typeof(uint32), new TensorTypeInfo(TensorElementType.UInt32, sizeof(uint32)));
		typeInfoMap.Add(typeof(uint64), new TensorTypeInfo(TensorElementType.UInt64, sizeof(uint64)));
		typeInfoMap.Add(typeof(BFloat16), new TensorTypeInfo(TensorElementType.BFloat16, sizeof(uint16)));

		tensorElementTypeInfoMap = new Dictionary<TensorElementType, TensorElementTypeInfo>();
		for (var info in typeInfoMap)
			tensorElementTypeInfoMap.Add(info.value.ElementType, new TensorElementTypeInfo(info.key, info.value.TypeSize));
	}

	private readonly Type _primitiveType;

	protected this(Type primitiveType) => _primitiveType = primitiveType;

	public static TensorTypeInfo GetTypeInfo(Type type)
	{
		TensorTypeInfo result = null;
		typeInfoMap.TryGetValue(type, out result);
		return result;
	}

	public TensorTypeInfo GetTypeInfo() => GetTypeInfo(_primitiveType);
}