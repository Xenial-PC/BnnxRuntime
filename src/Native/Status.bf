using System;
using OnnxRuntime;

namespace OnnxRuntime.Native;

public class Status
{
	/**
	Checks the ORT Status with a return value of bool
	*/
	public static bool VerifySuccess(OrtApi* ort, OrtStatus* status)
	{
	    if (status == null) return false;
	    var msg = new String(ort.GetErrorMessage(status));

	    Console.WriteLine(msg);
	    delete msg;
	    return true;
	}
}