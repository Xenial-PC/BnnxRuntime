using System;
using OnnxRuntime.Classes;

namespace Tests.Tests;

public static class OnnxSetupTests
{
	[Test]
	public static void GetVersionTest()
	{
		var api = new OnnxApi();
		var version = api.GetVersionString();
		bool isVersion = version == "1.23.2";
		
		Test.Assert(isVersion);
		delete api;
		delete version;
	}
}