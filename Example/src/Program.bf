using System;
using System.IO;
using System.Collections;
using OnnxRuntime;
using OnnxRuntime.Native;

namespace Example;

public class Program
{
	// TODO: Create a full example
    public static void Main()
    {
		var cwd = new String();
		Directory.GetCurrentDirectory(cwd);

		var inferenceSession = new InferenceSession(scope $"{cwd}/testModel.onnx");
		inferenceSession.DumpIOWithShapes();

		delete inferenceSession;
		delete cwd;
        Console.Read();
    }
}
