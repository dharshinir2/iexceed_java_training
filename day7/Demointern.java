class Demointern{
	public static void main(String[] args)
	{
		String str1="welcome";
		String str2="welcome"; //str1 and str2 belongs to SCP
		String str3=new String("welcome").intern(); //intern checks the value first if ts available in scp then str3 also points to str1
		System.out.println(str1==str3);//return true
		String str4=new String("hello").intern();
		
	}
}