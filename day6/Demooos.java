import java.io.Serializable;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
class student implements Serializable{
	String name;
	int id;
	student(String name,int id)
	{
		this.name=name;
		this.id=id;
	}	
}
class Demooos{
	public static void main(String[] args) throws Exception
	{
		student s1=new student("Dharshini",17);
		FileOutputStream fo=new FileOutputStream("sample.txt");
		ObjectOutputStream o=new ObjectOutputStream(fo);
		o.writeObject(s1);
		o.close();
		
	}
}
