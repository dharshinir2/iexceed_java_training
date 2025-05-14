import java.io.*;
import java.io.FileReader;
import java.io.File;
class Demobufferreader{
	public static void main(String[]args)throws Exception
	{
		FileReader fr=new FileReader("sample.txt");
		BufferedReader br=new BufferedReader(fr); 
		//System.out.println(br.readLine());
		System.out.print(br.markSupported()); //chk wheather its mark supported or not
		System.out.println((char)br.read());
		System.out.println((char)br.read());
		br.mark(6);
		System.out.println((char)br.read());
		System.out.println((char)br.read());
		br.reset();			//prints from the element that is marked
		System.out.println((char)br.read());
		System.out.println((char)br.read());
		br.close();
		
	}
}	