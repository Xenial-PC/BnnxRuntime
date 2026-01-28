using System;
using System.Collections;

namespace OnnxRuntime.Native;

public struct Float16
{
	public const uint16 SignMask = 0x8000;
	public const int SignShift = 15;
	public const uint8 ShiftedSignMask = SignMask >> SignShift;

	public const uint16 BiasedExponentMask = 0x7C00;
	public const int BiasedExponentShift = 10;
	public const uint8 ShiftedBiasedExponentMask = BiasedExponentMask >> BiasedExponentShift;

	public const uint16 TrailingSignificandMask = 0x03FF;

	public const uint8 MinSign = 0;
	public const uint8 MaxSign = 1;

	public const uint8 MinBiasedExponent = 0x00;
	public const uint8 MaxBiasedExponent = 0x1F;

	public const uint8 ExponentBias = 15;

	public const int8 MinExponent = -14;
	public const int8 MaxExponent = +15;

	private const uint16 PositiveZeroBits = 0x0000;
	private const uint16 NegativeZeroBits = 0x8000;

	private const uint16 OneBits = 0x3C00;
	private const uint16 EpsilonBits = 0x0400;

	private const uint16 PositiveInfinityBits = 0x7C00;
	private const uint16 NegativeInfigityBits = 0xFC00;

	private const uint16 PositiveQNaNBits = 0x7E00;
	private const uint16 NegativeQNaNBits = 0x7BFF;

	private const uint16 MinValueBits = 0xFBFF;
	private const uint16 MaxValueBits = 0x7BFF;

	private const uint16 PositiveOneBits = 0x3C00;
	private const uint16 NegativeOneBits = 0xBC00;

	private const uint16 EBits = 0x4170;
	private const uint16 PiBits = 0x4248;
	private const uint16 TauBits = 0x4648;

	/**
	Float16 Epsilon Value
	*/
	public static Float16* Epsilon => new Float16(EpsilonBits);

	/**
	Float16 Pi Value
	*/
	public static Float16* Pi => new Float16(PiBits);

	/**
	Float16 Positive Infinity Value
	*/
	public static Float16* PositiveInfinity => new Float16(PositiveInfinityBits);

	/**
	Float16 Negative Infinity Value
	*/
	public static Float16* NegativeInfinity => new Float16(NegativeInfigityBits);

	/**
	Float16 NaN
	*/
	public static Float16* NaN => new Float16(NegativeQNaNBits);

	/**
	Float16 Zero Value
	*/
	public static Float16* Zero => new Float16(PositiveZeroBits);

	/**
	Float16 One Value
	*/
	public static Float16* One => new Float16(OneBits);

	/**
	Float16 Negative Zero Value
	*/
	public static Float16* NegativeZero => new Float16(NegativeZeroBits);

	/**
	Float16 Lowest Value
	*/
	public static Float16* MinValue => new Float16(MinValueBits);

	/**
	Float16 Highest Value
	*/
	public static Float16* MaxValue => new Float16(MaxValueBits);

	/**
	Float16 representation bits
	*/
	public readonly uint16 Value;

	/**
	Ctor from ushort bits, no conversion is done
	*/
	public this(uint16 value) => Value = value;

	private this(bool sign, uint16 exp, uint16 sig) =>
		Value = (uint16)(((sign ? 1 : 0) << SignShift) + (exp << BiasedExponentShift) + sig);

	public uint8 Exponent => (BiasedExponent - ExponentBias);
	public uint16 Significand => (uint16)TrailingSignificand | ((BiasedExponent != 0) ? (1U << BiasedExponentShift) : 0U);

	public static uint8 ExtractBiasedExponentFromBits(uint16 bits) => (uint8)((bits >> BiasedExponentShift) & ShiftedBiasedExponentMask);
	public static uint16 ExtractTrailingSignificandFromBits(uint16 bits) => (uint16)(bits & TrailingSignificandMask);

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

	/**
	Compares the values of two Float16's
	Returns true if the left is less than right
	*/
	public static bool operator <(Float16 left, Float16 right)
	{
		if (IsNaN(left) || IsNaN(right)) return false;
		bool leftIsNegative = IsNegative(left);

		if (leftIsNegative != IsNegative(right)) return leftIsNegative && !AreZero(left, right);
		return (left.Value != right.Value) && ((left.Value < right.Value) ^ leftIsNegative);
	}

	/**
	Compares the values of two Float16's
	Returns true if the left is greater than right
	*/
	public static bool operator >(Float16 left, Float16 right) => right < left;

	/**
	Compares values of two Float16's
	Returns true if left is less than or equal to right
	*/
	public static bool operator <=(Float16 left, Float16 right)
	{
		if (IsNaN(left) || IsNaN(right)) return false;
		bool leftIsNegative = IsNegative(left);

		if (leftIsNegative != IsNegative(right)) return leftIsNegative || AreZero(left, right);
		return (left.Value == right.Value) || ((left.Value < right.Value) ^ leftIsNegative);
	}

	/**
	Compares values of two Float16's
	Returns true if left is greater than or equal to right
	*/
	public static bool operator >=(Float16 left, Float16 right) => right <= left;

	/**
	Compares the values of two Float16's
	Return true if both left and right are equal
	*/
	public static bool operator ==(Float16 left, Float16 right)
	{
		if (IsNaN(left) || IsNaN(right)) return false;
		return left.Value == right.Value;
	}

	/**
	Compares the values of two Float16's
	Returns true if left does not equal right, or vise versa
	*/
	public static bool operator !=(Float16 left, Float16 right) => !(left == right);

	/**
	Returns true if the value is less than infinity
	*/
	public static bool IsFinite(Float16 value) => StripSign(value) < PositiveInfinityBits;

	/**
	Returns true if the value is equal to infinity
	*/
	public static bool IsInfinity(Float16 value) => StripSign(value) == PositiveInfinityBits;

	/**
	Returns true if the value is more than positive infinity
	*/
	public static bool IsNaN(Float16 value) => StripSign(value) > PositiveInfinityBits;

	/**
	Returns true if the value is negatve, below zero
	*/
	public static bool IsNegative(Float16 value) => (int16)(value.Value) < 0;

	/**
	Returns true if the value is negative infinity
	*/
	public static bool IsNegativeInfinity(Float16 value) => value.Value == NegativeInfigityBits;

	/**
	Returns true if the value is positive infinity
	*/
	public static bool IsPositiveInfinity(Float16 value) => value.Value == PositiveInfinityBits;

	/**
	Determines if the value is normal
	*/
	public static bool IsNormal(Float16 value)
	{
		uint absvalue = StripSign(value);
		return (absvalue < PositiveInfinityBits)
			&& (absvalue != 0)
			&& ((absvalue & BiasedExponentMask) != 0);
	}

	/**
	Determines if the value is sub normal
	*/
	public static bool IsSubnormal(Float16 value)
	{
		uint absValue = StripSign(value);
		return (absValue < PositiveInfinityBits)
			&& (absValue != 0)
			&& ((absValue & BiasedExponentMask) == 0);
	}

	/**
	Compares this object with another
	*/
	public int CompareTo(Object obj)
	{
		if (!(obj is Float16)) return (obj == null) ? 1 : default;
		return CompareTo((Float16)obj);
	}

	/**
	Compares this Float16 with another
	*/
	public int CompareTo(Float16 other)
	{
		if (this < other) return -1;
		if (this > other) return 1;
		if (this == other) return 0;
		if (IsNaN(this)) return IsNaN(other) ? 0 : -1;

		return 1;
	}

	/**
	Checks if the Object is equal to another
	*/
	public bool Equals(Float16 other)
	{
		return Value == other.Value
			|| AreZero(this, other)
			|| (IsNaN(this) && IsNaN(other));
	}

	/**
	Checks if the Object is a Float16 and is equal to another
	*/
	public bool Equals(Object obj) => (obj is Float16) && Equals((Float16)obj);

	/**
	Gets the hash of the current object
	*/
	public int GetHasCode()
	{
		if (IsNaNOrZero(this)) return Value & PositiveInfinityBits;
		return Value;
	}

	/**
	Converts the Float16 to a string
	*/
	public override void ToString(String strBuffer)
	{
		base.ToString(strBuffer);
		strBuffer.Append(scope String(scope $"{Value} : {ToFloat()}"));
	}

	/**
	Explicit conversion to a float
	*/
	public float ToFloat() => (float)this;

	/**
	Explicit conversion of a float to its nearest represent-able half-precision floating point value
	*/
	public static explicit operator Float16(float value)
	{
		const int SingleMaxExponent = 0xFF;

		uint floatInt = BitOpsUtils.SingleToUint32Bits(value);
		bool sign = (floatInt & BitOpsUtils.SingleSignMask) >> BitOpsUtils.SingleSignShift != 0;
		int exp = (int)(floatInt & BitOpsUtils.SingleBiasedExponentMask) >> BitOpsUtils.SingleBiasedExponentShift;
		uint sig = floatInt & BitOpsUtils.SingleTrailingSignificandMask;

		if (exp == SingleMaxExponent)
		{
			if (sig != 0) return CreateFloat16NaN(sign, (uint64)sig << 41);
			return *(sign ? NegativeInfinity : PositiveInfinity);
		}

		uint sigHalf = sig >> 9 | ((sig & 0x1FFU) != 0 ? 1U : 0U);

		if ((exp | (int)sigHalf) == 0)
		{
			var float16 = new Float16(sign, 0, 0);
			return *(float16);
		}

		return *(new Float16(RoundPackToFloat16(sign, (int16)(exp - 0x71), (uint16)(sigHalf | 0x4000))));
	}

	/**
	Explicit conversion of a half-precision floating point value to its nearest represent-able whole float value.
	*/
	public static explicit operator float(Float16 value)
	{
		bool sign = IsNegative(value);
		int exp = value.BiasedExponent;
		uint sig = value.TrailingSignificand;

		if (exp == MinBiasedExponent)
		{
			if (sig != 0) return BitOpsUtils.CreateSingleNaN(sign, (uint64)sig << 54);
			return sign ? float.NegativeInfinity : float.PositiveInfinity;
		}

		if (exp == 0)
		{
			if (sig == 0) return (sign) ? -0.0f : 0.0f;
			(exp, sig) = NormSubnormalF16Sig(sig);
			exp -= 1;
		}

		return BitOpsUtils.CreateSingle(sign, (uint8)(exp + 0x70), sig << 13);
	}

	/**
	Flips the sign. NaNs are not affected.
	*/
	public static Float16 Negate(Float16 value) => IsNaN(value) ? value : *(new Float16((uint16)(value.Value ^ SignMask)));

	/**
	Checks if the value is 0
	*/
	public static bool AreZero(Float16 left, Float16 right) => (uint16)((left.Value | right.Value) & ~SignMask) == 0;

	/**
	Checks if the value is NaN or Zero
	*/
	public static bool IsNaNOrZero(Float16 value)
	{
		uint abs = StripSign(value);
		return (abs == 0 || abs > PositiveInfinityBits);
	}

	/**
	Strips the SignMask from the object
	*/
	private static uint StripSign(Float16 value) => (uint16)(value.Value & ~SignMask);

	private static (int exp, uint sig) NormSubnormalF16Sig(uint sig)
	{
		int shiftDist = BitOpsUtils.LeadingZeroCount(sig) - 16 - 5;
		return (1 - shiftDist, sig << shiftDist);
	}

	/**
	Creates Quiet NaN if significand == 0
	*/
	private static Float16 CreateFloat16NaN(bool sign, uint64 significand)
	{
		const uint16 NaNBits = BiasedExponentMask | 0x200;

		uint signInt = (sign ? 1U : 0U) << SignShift;
		uint16 sigInt = (uint16)(significand >> 54);

		uint16 ushortBits = (uint16)(signInt | NaNBits | sigInt);
		return *(new Float16(ushortBits));
	}

	private static uint16 RoundPackToFloat16(bool sign, int16 exp, uint16 sig)
	{
		var sign;
		var exp;
		var sig;

		const int roundIncrement = 0x8;
		int roundBits = sig & 0xF;

		if ((uint)exp >= 0x1D)
		{
			if (exp < 0)
			{
				sig = (uint16)ShiftRightJam(sig, -exp);
				exp = 0;
				roundBits = sig & 0xF;
			}
			else if (exp > 0x1D || sig + roundIncrement >= 0x8000)
				return sign ? NegativeInfigityBits : PositiveInfinityBits;
		}

		sig = (uint16)((sig + roundIncrement) >> 4);
		sig &= (uint16)~(((roundBits ^ 8) != 0 ? 0 : 1) & 1);

		if (sig == 0) exp = 0;

		return (new Float16(sign, (uint16)exp, sig).Value);
	}

	private static uint ShiftRightJam(uint i, int dist)
	{
		var distShift = i << (-dist & 31);
		return dist < 31 ? (i >> dist) | (distShift != 0 ? 1U : 0U) : (i != 0 ? 1U : 0U);
	}

	private static uint64 ShiftRightJam(uint64 l, int dist)
	{
		var distShift = l << (-dist & 63);
		return dist < 63 ? (l >> dist) | (distShift != 0 ? 1UL : 0UL) : (l != 0 ? 1UL : 0UL);
	}
}