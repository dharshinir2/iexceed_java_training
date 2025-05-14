import java.io.Reader;
import java.io.FileReader;
class Demoreader{
	public static void main(String[]args)throws Exception
	{
		char arr[]=new char[100];
		Reader rd=new FileReader("sample.txt");
		System.out.println(rd.ready());
		rd.read(arr);
		System.out.print(arr);
	}
}	