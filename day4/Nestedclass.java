class Student
{
	private String name;
	private String id;
	Student(String name,String id)
	{
		this.name=name;
		this.id=id;
	}
	
	class Address //nonstatic innerclass
	{
		String area="Nagercoil";
		String state="TamilNadu";
		public void display()
		{
			System.out.print(name +" "+id+" "+area+" "+state);
		}
	}
	
}
class Nestedclass{
	public static void main(String[]args)
	{
		Student s=new Student("Dharshini","17");
		Student.Address a=s.new Address();
		a.display();
	}
}