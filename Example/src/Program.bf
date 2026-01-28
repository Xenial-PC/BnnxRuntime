using System;
using System.IO;
using System.Collections;
using OnnxRuntime;
using OnnxRuntime.Native;
using OnnxRuntime.Session;

namespace Example;

public class Program
{
	// TODO: Create a full example
    public static void Main()
    {
		var cwd = new String();
		Directory.GetCurrentDirectory(cwd);

		var sessionOptions = new SessionOptions(OrtLoggingLevel.ORT_LOGGING_LEVEL_ERROR)
		{
			EnableCpuMemArena = true,
			EnableMemoryPattern = true,
			GraphOptimizationLevel = GraphOptimizationLevel.ORT_ENABLE_ALL,
		};
		sessionOptions.AppendExecutionProvider_DML();

		var inferenceSession = new InferenceSession(scope $"{cwd}/testModel.onnx", sessionOptions);
		Helpers.DumpIOWithShapes(inferenceSession);

		delete inferenceSession;
		delete cwd;
        Console.Read();
    }
}
