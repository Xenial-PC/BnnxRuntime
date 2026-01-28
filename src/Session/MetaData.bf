using System;
using System.Collections;
using OnnxRuntime.Native;

namespace OnnxRuntime.Session;

/**
Model MetaData 
*/
public class MetaData
{
	/**
	List of input classes
	*/
	public List<YoloClass> Inputs ~ delete _;

	/**
	List of output classes
	*/
	public List<YoloClass> Outputs ~ delete _;

	/**
	Input Count
	*/
	public size_t ICount;

	/**
	Output Count
	*/
	public size_t OCount;
}