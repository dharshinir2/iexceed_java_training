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
		System.out.println("size of arraylist="+arr.size());
		System.out.println("First element="+arr.get(0));
		arr.set(0,"monkeydluffy");
		System.out.println("Updated first element="+arr.get(0));
		arr.remove(4);
		System.out.println("new size of the arraylist"+arr.size());
}
}
class demoArraylist2{
	public static void main(String[] args)
	{
		demo d=new demo();
		
	}
}
