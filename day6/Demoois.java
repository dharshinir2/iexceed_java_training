import java.io.Serializable;
import java.io.FileOutputStream;
import java.io.*;
class student implements Serializable{
	String name;
	int id;
	//static variables cannot be serialized.transient variables turns null(ideal for password protection)
	student(String name,int id)
	{
		this.name=name;
		this.id=id;
	}	
}
class Demoois{
	public static void main(String[] args) throws Exception
	{
		student s1=new student("Dharshini",17);
		FileOutputStream fo=new FileOutputStream("sample.txt");
		ObjectOutputStream o=new ObjectOutputStream(fo);
		o.writeObject(s1);
		o.close();
		
		
		FileInputStream fi=new FileInputStream("sample.txt");
		ObjectInputStream oi=new ObjectInputStream(fi); //deseriallization
		student si=(student)oi.readObject();
		System.out.println("Name "+ si.name);
		
		
		
	}
}
