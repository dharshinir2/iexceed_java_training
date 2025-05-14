import java.io.FileOutputStream;
import java.io.FileInputStream;
class DemoFileInputStream{
	public static void main(String[] args) throws Exception
	{
	
	FileOutputStream f1=new FileOutputStream("new.txt");
		String a="hello all";
		byte w[]=a.getBytes();
		f1.write(w);
		f1.close();
		FileInputStream fin=new FileInputStream("new.txt");
		int i=0;
		while((i=fin.read())!=-1)
		{
			System.out.println((char)(i));
		}					 
							 
	
	
		
	}
}
