using System;
using OnnxRuntime.Classes;

namespace Example;

public class Program
{
	public static OnnxApi Api;

	public static void Main()
	{
		Api = new OnnxApi();

		var onnxVersion = Api.GetVersionString();
		Console.WriteLine($"Onnx Version: {onnxVersion}");

		delete Api;
		delete onnxVersion;

		Console.Read();
	}
}