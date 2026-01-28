using System;

namespace OnnxRuntime.Native;

public struct BFloat16
{
	public const uint16 SignMask = 0x8000;
	public const int SignShift = 15;
	public const int8 ShiftedSignMask = SignMask >> SignShift;

	public const uint16 BiasedExponentMask = 0x7F80;
	public const int BiasedExponentShift = 7;
	public const uint8 ShiftedBiasedExponentMask = (BiasedExponentMask >> BiasedExponentShift);

	public const uint16 TrailingSignificandMask = 0x00F;

	public const uint8 MinSign = 0;
	public const uint8 MaxSign = 1;

	public const uint8 MinBiasedExponent = 0x00;
	public const uint8 MaxBiasedExponent = 0xFF;

	public const int8 MinExponentBias = 127;

	public const int8 MinExponent = -126;
	public const int8 MaxExponent = +127;

	private const uint16 PositiveZeroBits = 0x0000;
	private const uint16 NegativeZeroBits = 0x8000;

	private const uint16 OneBits = 0x3F80;
	private const uint16 PositiveInfinityBits = 0x7F80;
	private const uint16 NegativeInfinityBits = 0xFF80;

	private const uint16 PositiveQNaNBits = 0x7FC1;
	private const uint16 NegativeQNaNBits = 0xFFC1;

	private const uint16 MinValueBits = 0xFF7F;
	private const uint16 MaxValueBits = 0x7F7F;

	private const uint16 EpsilonBits = 0x0000;
	private const uint16 PiBits = 0x4049;

	private const uint RoundingBase = 0x7FFF;

	/**
	BFloat16 Epsilon value
	*/
	public static BFloat16* Epsilon => new BFloat16(EpsilonBits);

	/**
	BFloat16 Pi Value
	*/
	public static BFloat16* Pi => new BFloat16(PiBits);

	/**
	BFloat16 Positive infinity value
	*/
	public static BFloat16* PositiveInfinity => new BFloat16(PositiveInfinityBits);

	/**
	BFloat16 Negative infinity value
	*/
	public static BFloat16* NegativeInfinity => new BFloat16(NegativeInfinityBits);

	/**
	BFloat16 NaN
	*/
	public static BFloat16* NaN => new BFloat16(NegativeQNaNBits);

	/**
	BFloat16 Positive Zero value
	*/
	public static BFloat16* Zero => new BFloat16(PositiveZeroBits);

	/**
	BFloat16 One value
	*/
	public static BFloat16* One => new BFloat16(OneBits);

	/**
	BFloat16 Negative zero value
	*/
	public static BFloat16* NegativeZero => new BFloat16(NegativeZeroBits);

	/**
	BFloat16 Min value
	*/
	public static BFloat16* MinValue => new BFloat16(MinValueBits);

	/**
	BFloat16 Max value
	*/
	public static BFloat16* MaxValue => new BFloat16(MaxValueBits);

	/**
	BFloat16 Representation bits
	*/
	public readonly uint16 Value;

	/**
	Constructor from uint16, where no conversion takes place. As the value is already assumed to be converted
	*/
	public this(uint16 value) => Value = value;

	/**
	Extracts biased exponent bits
	*/
	public uint8 BiasedExponent
	{
		get
		{
			uint16 bits = Value;
			return ExtractBiasedExponentFromBits(bits);
		}
	}

	/**
	Extracts all the Significand bits
	*/
	public uint16 TrailingSignificand
	{
		get
		{
			uint16 bits = Value;
			return ExtractTrailingSignificandFromBits(bits);
		}
	}

	public static uint8 ExtractBiasedExponentFromBits(uint16 bits) => (uint8)((bits >> BiasedExponentShift) & ShiftedBiasedExponentMask);
	public static uint16 ExtractTrailingSignificandFromBits(uint16 bits) => (uint16)(bits & TrailingSignificandMask);

	/**
	Compares two BFloat16 values
	Returns true if the left is less than right
	*/
	public static bool operator <(BFloat16 left, BFloat16 right)
	{
		if (IsNaN(left) || IsNaN(right)) return false;

		bool leftIsNegative = IsNegative(left);
		if (leftIsNegative != IsNegative(right)) return leftIsNegative && !AreZero(left, right);

		return (left.Value != right.Value) && ((left.Value < right.Value) ^ leftIsNegative);
	}

	/**
	Compares two BFloat16 values
	Returns true if the left is greater than the right
	*/
	public static bool operator >(BFloat16 left, BFloat16 right) => right < left;

	/**
	Compares two BFloat16 values
	Returns true if the left is less or equal to right
	*/
	public static bool operator <=(BFloat16 left, BFloat16 right)
	{
		if (IsNaN(left) || IsNaN(right)) return false;

		bool leftIsNegative = IsNegative(left);
		if (leftIsNegative != IsNegative(right)) return leftIsNegative || AreZero(left, right);

		return (left.Value == right.Value) || ((left.Value < right.Value) ^ leftIsNegative);
	}

	/**
	Compares two BFloat16 values
	Returns true if the left is greater than or equal to right
	*/
	public static bool operator >=(BFloat16 left, BFloat16 right) => left <= right;

	/**
	Compares two BFloat16 values
	Returns true if left is equal to right, and vise versa.
	*/
	public static bool operator ==(BFloat16 left, BFloat16 right)
	{
		if (IsNaN(left) || IsNaN(right)) return false;
		return left.Value == right.Value;
	}

	/**
	Compares two BFloat16 values
	Returns true if left is not equal to right, and vise versa.
	*/
	public static bool operator !=(BFloat16 left, BFloat16 right) => !(left == right);

	/**
	Determines if the value is finite
	*/
	public static bool IsFinite(BFloat16 value) => StripSign(value) < PositiveInfinityBits;

	/**
	Determines if the value is infinite
	*/
	public static bool IsIninfity(BFloat16 value) => StripSign(value) == PositiveInfinityBits;

	/**
	Determines if the value is NaN
	*/
	public static bool IsNaN(BFloat16 value) => StripSign(value) > PositiveInfinityBits;

	/**
	Determines if the value is negative
	*/
	public static bool IsNegative(BFloat16 value) => (int16)(value.Value) < 0;

	/**
	Determines if the value is negative infinity
	*/
	public static bool IsNegativeInfinity(BFloat16 value) => value.Value == NegativeInfinityBits;

	/**
	Determines if the value is normal
	*/
	public static bool IsNormal(BFloat16 value)
	{
		uint absValue = StripSign(value);
		return (absValue < PositiveInfinityBits)
			&& (absValue != 0)
			&& ((absValue & BiasedExponentMask) != 0);
	}

	/**
	Determines if the value is Positive Infinity
	*/
	public static bool IsPositiveInfinity(BFloat16 value) => value.Value == PositiveInfinityBits;

	/**
	Determines if teh value is subnormal
	*/
	public static bool IsSubnormal(BFloat16 value)
	{
		uint absValue = StripSign(value);
		return (absValue < PositiveInfinityBits)
			&& (absValue != 0)
			&& ((absValue & BiasedExponentMask) == 0);
	}

	/**
	Compares the object to another one
	*/
	public int CompareTo(Object obj)
	{
		if (!(obj is BFloat16)) return (obj == null) ? 1 : default;
		return CompareTo((BFloat16)(obj));
	}

	/**
	Compares this object to another, returning an integer that indicates relationships
	*/
	public int CompareTo(BFloat16 other)
	{
		if (this < other) return -1;
		if (this > other) return 1;
		if (this == other) return 0;
		if (IsNaN(this)) return IsNaN(other) ? 0 : -1;

		return 1;
	}

	/**
	Compares if a value and the other are equal
	*/
	public bool Equals(BFloat16 other)
	{
		return Value == other.Value
			|| AreZero(this, other)
			|| (IsNaN(this) & IsNaN(other));
	}

	/**
	Compares two values and sees if they are equal and the same type
	*/
	public bool Equals(Object obj) => (obj is BFloat16) && Equals((BFloat16)obj);

	/**
	Returns the hash for this object
	*/
	public int GetHashCode()
	{
		if (IsNaNOrZero(this)) return Value & PositiveInfinityBits;
		return Value;
	}

	/**
	Converts this object into a string
	*/
	public override void ToString(String strBuffer)
	{
		base.ToString(strBuffer);
		strBuffer.Append(scope String(scope $"{Value} : {ToFloat()}"));
	}

	/**
	Explicit conversion to float
	*/
	public float ToFloat() => (float)this;

	/**
	Explicitly converts a float value to its nearest representable BFloat16 value
	*/
	public static explicit operator BFloat16(float value)
	{
		if (value == float.NaN) return *(NaN);

		uint singleBits = BitOpsUtils.SingleToUint32Bits(value);
		uint16 bFloatBits = BitOpsUtils.SingleBitsToBFloat16Bits(singleBits);

		singleBits += ((uint)bFloatBits & 1) + RoundingBase;
		bFloatBits = BitOpsUtils.SingleBitsToBFloat16Bits(singleBits);
		return *(new BFloat16(bFloatBits));
	}

	/**
	Explicit conversion from BFloat16 to its nearest representable Float value
	*/
	public static explicit operator float(BFloat16 value)
	{
		bool sign = IsNegative(value);
		int exp = value.BiasedExponent;
		uint sig = value.TrailingSignificand;

		if (exp == MaxBiasedExponent)
		{
			if (sig != 0) return BitOpsUtils.CreateSingleNaN(sign, (uint64)sig << 56);
			return sign ? float.NegativeInfinity : float.PositiveInfinity;
		}

		if (exp == 0 && sig == 0) return (sign) ? -0.0f : 0.0f;

		uint singleBits = BitOpsUtils.BFloat16BitsToSingleBits(value.Value);
		return BitOpsUtils.UInt32BitsToSingle(singleBits);
	}

	/**
	Flips the sign NaNs are not affected
	*/
	public static BFloat16 Negate(BFloat16 value) => IsNaN(value) ? value : *(new BFloat16((uint16)(value.Value ^ SignMask)));

	/**
	Returns true if the value is either NaN or Zero
	*/
	public static bool IsNaNOrZero(BFloat16 value)
	{
		uint abs = StripSign(value);
		return (abs == 0 || abs > PositiveInfinityBits);
	}

	/**
	Defines that positive and negative zero are equal
	*/
	public static bool AreZero(BFloat16 left, BFloat16 right) => (uint16)((left.Value | right.Value) & ~SignMask) == 0;

	/**
	Removes the SignMask from the object
	*/
	public static uint StripSign(BFloat16 value) => (uint16)(value.Value & ~SignMask);
}
