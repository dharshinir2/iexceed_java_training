import java.io.*;
class Demobuffer{
	public static void main(String[] args) throws Exception
	{
		FileOutputStream fo=new FileOutputStream("sample.txt");
		String a="this is a example text";
		byte arr[]=a.getBytes();
		fo.write(arr);
		FileInputStream fi=new FileInputStream("sample.txt");
		BufferedInputStream bin=new BufferedInputStream(fi);
		System.out.println(bin.available());
		int i=0;
		while((i=bin.read())!=-1)
		{
			System.out.print((char)i);
		}
		
		
		
	}
	
}