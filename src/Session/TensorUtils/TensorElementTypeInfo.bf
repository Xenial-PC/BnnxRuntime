using System;

namespace OnnxRuntime.Session.TensorUtils;

public class TensorElementTypeInfo
{
	public Type TensorType ~ delete _;

	public int TypeSize;

	public bool IsString;

	public this(Type type, int typeSize)
	{
		TensorType = type;
		TypeSize = typeSize;
		IsString = type == typeof(String);
	}
}