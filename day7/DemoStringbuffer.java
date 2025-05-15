class DemoStringbuffer{
	public static void main(String[] args)
	{
		StringBuffer sb=new StringBuffer("hello");
		System.out.println(sb.length());
		System.out.println(sb.capacity());
		System.out.println(sb.charAt(0));
		for(int i=0;i<5;i++)
		{
			sb.append("java");
		}
		System.out.println(sb);
		System.out.println(sb.reverse());
		
		
	}

}