using System;
using System.Collections;
using OnnxRuntime.Native;
using OnnxRuntime.Session.Utils;
using OnnxRuntime.Session.TensorUtils;

namespace OnnxRuntime.Session;

public static class Tensor
{
	
}

public abstract class Tensor<T> : TensorBase
{
	public static T Zero
	{
		get
		{
			if (typeof(T) == typeof(bool)) return (T)(Object)(false);
			if (typeof(T) == typeof(int8)) return (T)(Object)(int8)(0);
			if (typeof(T) == typeof(char16)) return (T)(Object)(char16)(0);
			if (typeof(T) == typeof(double)) return (T)(Object)(double)(0);
			if (typeof(T) == typeof(float)) return (T)(Object)(float)(0);
			if (typeof(T) == typeof(int)) return (T)(Object)(int)(0);
			if (typeof(T) == typeof(int64)) return (T)(Object)(int64)(0);
			if (typeof(T) == typeof(int8)) return (T)(Object)(int8)(0);
			if (typeof(T) == typeof(int16)) return (T)(Object)(int16)(0);
			if (typeof(T) == typeof(uint)) return (T)(Object)(uint)(0);
			if (typeof(T) == typeof(uint64)) return (T)(Object)(uint64)(0);
			if (typeof(T) == typeof(uint16)) return (T)(Object)(uint16)(0);
			if (typeof(T) == typeof(Float16)) return (T)(Object)(uint16)(0);
			if (typeof(T) == typeof(BFloat16)) return (T)(Object)(uint16)(0);
			if (typeof(T) == typeof(String)) return (T)(Object)(String)("0");
			ThrowUnimplemented();
		}
	}

	public static T One
	{
		get
		{
			if (typeof(T) == typeof(bool)) return (T)(Object)(true);
			if (typeof(T) == typeof(int8)) return (T)(Object)(int8)(1);
			if (typeof(T) == typeof(char16)) return (T)(Object)(char16)(1);
			if (typeof(T) == typeof(double)) return (T)(Object)(double)(1);
			if (typeof(T) == typeof(float)) return (T)(Object)(float)(1);
			if (typeof(T) == typeof(int)) return (T)(Object)(int)(1);
			if (typeof(T) == typeof(int64)) return (T)(Object)(int64)(1);
			if (typeof(T) == typeof(int8)) return (T)(Object)(int8)(1);
			if (typeof(T) == typeof(int16)) return (T)(Object)(int16)(1);
			if (typeof(T) == typeof(uint)) return (T)(Object)(uint)(1);
			if (typeof(T) == typeof(uint64)) return (T)(Object)(uint64)(1);
			if (typeof(T) == typeof(uint16)) return (T)(Object)(uint16)(1);
			if (typeof(T) == typeof(Float16)) return (T)(Object)(uint16)(15360);
			if (typeof(T) == typeof(BFloat16)) return (T)(Object)(uint16)(16256);
			if (typeof(T) == typeof(String)) return (T)(Object)(String)("1");
			ThrowUnimplemented();
		}
	}

	private readonly int[] _dimensions ~ delete _;
	private readonly int[] _strides ~ delete _;

	private readonly bool _isReversedStride;
	private readonly int64 _length;

	/**
	Create a 1 dimensional tensor of the specified length
	*/
	protected this(int length) : base(typeof(T))
	{
		_dimensions = new int[](length);
		_strides = new int[](1);
		_isReversedStride = false;
		_length = length;
	}

	protected this(Span<int> dimensions, bool reverseStride) : base(typeof(T))
	{
		_dimensions = new int[dimensions.Length];
		int64 size = 1;
		for (int i = 0; i < dimensions.Length; i++)
		{
			if (_dimensions[i] < 0) continue;
			dimensions[i] = _dimensions[i];
			size *= dimensions[i];
		}

		_strides = ArrayUtilities.GetStrides(dimensions, reverseStride);
		_isReversedStride = reverseStride;
		_length = size;
	}

	protected this(int32[] fromArray, bool reverseStride) : base(typeof(T))
	{
		if (fromArray == null) return;

		_dimensions = new int[fromArray.Count];
		int64 size = 1;
		for (int i = 0; i < _dimensions.Count; i++)
		{
			var dimension = fromArray[i];
			if (dimension < 0) Runtime.FatalError("Dimension < 0");
			_dimensions[i] = dimension;
			size *= (int64)dimension;
		}

		_strides = ArrayUtilities.GetStrides(_dimensions, reverseStride);
		_isReversedStride = reverseStride;
		_length = size;
	}

	public int64 Length => _length;
	public int Rank => _dimensions.Count;
	public bool IsReversedStride => _isReversedStride;
	public Span<int> Dimensions => _dimensions;
	public Span<int> Strides => _strides;
}