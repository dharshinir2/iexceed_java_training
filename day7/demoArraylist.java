import java.util.*;
import java.io.*;
class demo{
	ArrayList <String>arr=new ArrayList<String>();
	demo()
	{
		arr.add("Luffy");
		arr.add("Zoro");
		arr.add("Nami");
		arr.add("Usopp");
		arr.add("Sanji");
		Iterator it=arr.iterator();
		while(it.hasNext())
		{
			System.out.println(it.next());
		}
}
}
class demoArraylist{
	public static void main(String[] args)
	{
		demo d=new demo();
	}
}
