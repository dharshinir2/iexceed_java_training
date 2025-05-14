import java.io.*;

class Demobaos{
	public static void main(String[] args) throws Exception
	{
	
	FileOutputStream fo=new FileOutputStream("new.txt");
		FileOutputStream f2=new FileOutputStream("new2.txt");
		String a="hello world";
		byte arr[]=a.getBytes(); 
		ByteArrayOutputStream baos=new ByteArrayOutputStream();
		baos.write(65);
		baos.writeTo(fo);
		baos.write(arr);
		baos.writeTo(f2);
		//baos.flush();
		baos.close();
							 
							 
	
	
		
	}
}