import java.io.*;
class Demodos{
	public static void main(String[] args)throws Exception
	{
		FileOutputStream fo=new FileOutputStream("sample.txt");
		DataOutputStream d=new DataOutputStream(fo);
		d.writeInt(12);
		d.writeBoolean(true);
		d.writeDouble(1.2);
		
		FileInputStream fi=new FileInputStream("sample.txt");
		DataInputStream di=new DataInputStream(fi);
		
		System.out.println(di.readInt());
		System.out.println(di.readBoolean());
		System.out.println(di.readDouble());
		
		
	
		
	}
	
}