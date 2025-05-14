import java.io.Reader;
import java.io.FileReader;
import java.io.File;
class Demofilereader{
	public static void main(String[]args)throws Exception
	{
		File f=new File("sample.txt");
		FileReader fr=new FileReader(f);
		System.out.println(fr.ready());
		
		int i=0;
		while((i=fr.read())!=-1)
		{	
		System.out.print((char)i);
		}
		fr.close();
		System.out.print(fr.getEncoding());
	}
}	