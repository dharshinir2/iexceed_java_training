class DemoString{
	public static void main(String[] args)
	{
		String str="good morning     ";
		System.out.println("Uppercase :"+str.toUpperCase());
		System.out.println("Trim :"+str.trim()); //remove leading or trailing whitespaces
		System.out.println("Indent :"+str.indent(2)); 	
		System.out.println(str.repeat(2)); //repeat2times
		System.out.print(str.charAt(2)); //returns in character 

		
		String a="hello";
		String b="hello";//a and b are string with same reference
		String c=new String("hello");
		String d=new String("hello"); //c and d are string with same obj
		System.out.println(a.equals(b)); //returns true as a and b points same address
		System.out.println(c==d); //returns false 

		
		System.out.println(str.substring(0,4);
		System.out.print(str.replace('o','q');	
		System.out.println(str.concat("everyone"));	
		System.out.println(str.indexOf('o')); //return the index of first o	
	}
}
