using System;

namespace OnnxRuntime.Native;

public class BitOpsUtils
{
	public const int SingleBiasedExponentMask = 0x7F800000;
	public const int SingleBiasedExponentShift = 23;

	public const int SingleSignMask = 0x80000000;
	public const int SingleSignShift = 31;

	public const int SingleMostSignificantSigBit = 0x400000;
	public const int SingleTrailingSignificandMask = 0x007FFFFF;

	public static int LeadingZeroCount(uint num)
	{
		if (num == 0) return 32;
		var num;

		int count = 0;
		while ((num & 0xF0000000) == 0)
		{
			count += 4;
			num <<= 4;
		}

		while ((num & 0x80000000) == 0)
		{
			count += 1;
			num <<= 1;
		}

		return count;
	}

	public static uint32 SingleToUint32Bits(float single)
	{
		uint32 result = default;
		var single;
		Internal.MemCpy(&result, &single, sizeof(uint32));
		return result;
	}

	public static float UInt32BitsToSingle(uint singleBits)
	{
		float result = default;
		var singleBits;
		Internal.MemCpy(&result, &singleBits, sizeof(uint32));
		return result;
	}

	public static uint16 SingleBitsToBFloat16Bits(uint singleBits)
	{
		if (!BitConverter.IsLittleEndian) return (uint16)(singleBits & 0xFFFF);
		return (uint16)(singleBits >> 16);
	}

	public static uint32 BFloat16BitsToSingleBits(uint16 bFloatBits)
	{
		if (!BitConverter.IsLittleEndian) return bFloatBits;
		return (uint32)bFloatBits << 16;
	}

	public static float CreateSingleNaN(bool sign, uint64 significand)
	{
		const uint NaNBits = SingleBiasedExponentMask | SingleMostSignificantSigBit;

		uint signInt = (sign ? 1U : 0U) << SingleSignShift;
		uint sigInt = (uint)(significand >> 41);
		uint singleBits = signInt | NaNBits | sigInt;

		return UInt32BitsToSingle(singleBits);
	}

	public static float CreateSingle(bool sign, uint8 exponent, uint significand)
	{
		uint signInt = (sign ? 1U : 0U) << SingleSignShift;
		uint expInt = ((uint)exponent << SingleBiasedExponentShift) + significand;
		uint singleBits = signInt + expInt;

		return UInt32BitsToSingle(singleBits);
	}
}