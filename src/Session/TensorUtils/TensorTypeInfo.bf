namespace OnnxRuntime.Session.TensorUtils;

public class TensorTypeInfo
{
	public TensorElementType ElementType;

	public int TypeSize;

	public bool IsString
	{
		get => ElementType == TensorElementType.String;
	};

	public this(TensorElementType elementType, int typeSize)
	{
		ElementType = elementType;
		TypeSize = typeSize;
	}
}