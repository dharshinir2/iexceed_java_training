import java.io.*;
class Demofile{
public static void main(String[] args)throws Exception
{
	File fo=new File(args[0]);
	boolean status=fo.createNewFile();
	if(status)
	{
		System.out.println("New file is created");
	}
	else{
		System.out.println("File exist");
		
	}
	System.out.println("Name "+fo.getName());
	System.out.println(fo.isAbsolute());
	System.out.println(fo.getAbsolutePath());
}}