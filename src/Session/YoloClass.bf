using System;
using System.Collections;
using OnnxRuntime.Native;

namespace OnnxRuntime.Session;

public class YoloClass
{
	public String Name ~ delete _;
	public ONNXTensorElementDataType Type;
	public int Class;
	public List<int> Shape ~ delete _;
	public int64* Dimensions ~ delete _;
}