using System;
using OnnxRuntime.Classes.Native.Enums;
using OnnxRuntime.Classes.Native;

namespace OnnxRuntime.Classes.Native.Structs;

[CRepr]
public struct OrtApiBase
{
    public function OrtApi* GetApiFn(int32 version);
    public function char8* GetVersionStringFn();

    public GetApiFn GetApi;
    public GetVersionStringFn GetVersionString;
}