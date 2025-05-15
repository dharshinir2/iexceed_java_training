class DemoStringBuilder{
	public static void main(String[] args)
	{
		StringBuilder sb=new StringBuilder("this is a sample text");
		sb.append("hello");
		for(int i=0;i<5;i++)
		{
			sb.append("hello");
		}
		
		sb.replace(1, 3, "good"); //replace
        System.out.println(sb);
		
		 sb.delete(1, 3); //delete
		 
       
		System.out.println(sb.length());
		System.out.println(sb.charAt(0));
		System.out.println(sb.reverse());
		 System.out.println(sb);
		
		
	}

}