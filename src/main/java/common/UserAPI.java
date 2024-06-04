package common;

public class UserAPI
{
	public static void mLine(char vI01, int vI02)
	{
		for(int i = 0; i <= vI02; i++){
			System.out.print(vI01);
		}
		System.out.println();
	}

	public static String mLineReturn(char vI01, int vI02)
	{
		String a = "";
		for(int i = 0; i <= vI02; i++){
			a += vI01;
		}
		System.out.println();
		
		return a;
	}
	
	public static String mLineReturnSpace(char vI01, int vI02)
	{
		String a = "";
		for(int i = 0; i <= vI02; i++){
			a += vI01+" ";
		}
		System.out.println();
		
		return a;
	}
}
