using System;
using System.Collections;

namespace OnnxRuntime.Session.Utils;

public class ArrayUtilities
{
	public const int StackAllocMax = 16;

	public static int64 GetProduct(Span<int> dimensions, int startIndex = 0)
	{
		int64 product = 1;
		for (int i = startIndex; i < dimensions.Length; i++)
		{
			if (dimensions[i] < 0) continue;
			checked
			{
				product *= dimensions[i];
			}
		}

		return product;
	}

	public static bool IsAscending(Span<int> values)
	{
		for (int i = 1; i < values.Length; i++)
		{
			if (values[i] < values[i - 1])
				return false;
		}

		return true;
	}

	public static bool IsDescending(Span<int> values)
	{
		for (int i = 1; i < values.Length; i++)
		{
			if (values[i] > values[i - 1])
				return false;
		}

		return true;
	}

	public static int[] GetStrides(Span<int> dimensions, bool reverseStride = false)
	{
		int[] strides = new int[dimensions.Length];
		if (dimensions.Length == 0) return strides;

		int stride = 1;
		if (reverseStride)
		{
			for (int i = 0; i < strides.Count; i++)
			{
				strides[i] = stride;
				stride *= dimensions[i];
			}
		}
		else
		{
			for (int i = strides.Count - 1; i >= 0; i--)
			{
				strides[i] = stride;
				stride *= dimensions[i];
			}
		}

		return strides;
	}

	public static void SplitStrides(int[] strides, int[] splitAxes, int[] newStrides,
		int stridesOffset, int[] splitStrides, int splitStridesOffset)
	{
		int newStrideIndex = 0;
		for (int i = 0; i < strides.Count; i++)
		{
			int stride = strides[i];
			bool isSplit = false;
			for (int j = 0; j < splitAxes.Count; j++)
			{
				if (splitAxes[j] == i)
				{
					splitStrides[splitStridesOffset + j] = stride;
					isSplit = true;
					break;
				}
			}

			if (!isSplit) newStrides[stridesOffset + newStrideIndex++] = stride;
		}
	}

	public static int GetIndex(int[] strides, Span<int> indices, int startFromDimension = 0)
	{
		int index = 0;
		for (int i = startFromDimension; i < indices.Length; i++)
			index += strides[i] * indices[i];

		return index;
	}

	public static void GetIndices(Span<int> strides, bool reverseStride, int index, int[] indices, int startFromDimension = 0)
	{
		if (indices.Count == 0) return;

		int remainder = index;
		for (int i = startFromDimension; i < strides.Length; i++)
		{
			var nIndex = reverseStride ? strides.Length - 1 - i : i;
			var stride = strides[nIndex];
			indices[nIndex] = remainder / stride;
			remainder %= stride;
		}
	}

	public static void GetIndices(Span<int> strides, bool reverseStride, int index, Span<int> indices, int startFromDimension = 0)
	{
		if (indices.Length == 0) return;

		int remainder = index;
		for (int i = startFromDimension; i < strides.Length; i++)
		{
			var nIndex = reverseStride ? strides.Length - 1 - i : i;
			var stride = strides[nIndex];
			indices[nIndex] = remainder / stride;
			remainder %= stride;
		}
	}

	public static int TransformIndedxByStrides(int index, int[] sourceStrides, bool sourceReverseStride, int[] transformStrides)
	{
		if (sourceStrides.Count == 0) return 0;

		int transformIndex = 0;
		int remainder = index;

		for(int i = 0; i < sourceStrides.Count; i++)
		{
			var nIndex = sourceReverseStride ? sourceStrides.Count - 1 - i : i;
			var sourceStride = sourceStrides[nIndex];
			var transformStride = transformStrides[nIndex];

			transformIndex += transformStride * (remainder / sourceStride);
			remainder %= sourceStride;
		}

		return transformIndex;
	}

	public static T[] GetEmpty<T>() => EmptyArray<T>.Value;

	private static class EmptyArray<T>
	{
		public static readonly T[] Value = new T[0];
	}
}