
public aspect TraceAspectRoberts {

	pointcut classToTrace(): within(*App);
	
	pointcut methodToTrace(): classToTrace() && execution(String getName());
	
	before(): methodToTrace() {
		//Display method signature
		//Display method line number
		System.out.println("\t-->" + thisJoinPointStaticPart.getSignature());
		System.out.println("\t-->Line #:" + thisJoinPointStaticPart.getSourceLocation().getLine());
	}
	
	after(): methodToTrace() {
		//Display method's file name
		System.out.println("\t<--Filename:" + thisJoinPointStaticPart.getSourceLocation().getFileName());
	}
}
