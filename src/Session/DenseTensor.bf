using System;
using System.Collections;
using OnnxRuntime.Session.Utils;

namespace OnnxRuntime.Session;

public class DenseTensor<T> : Tensor<T>
{
	private readonly T[] _buffer;

	public this(Array fromArray, bool reverseStride = false) //: base(fromArray, reverseStride)
	{
		/*var backingArray = new T[fromArray.Count];

		int index = 0;
		if (reverseStride)
		{
			
		}*/
	}
}