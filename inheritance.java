class student
{
	String name;
	int age;
	String city;
	student(String name,int age,String city)
	{
		this.name=name;
		this.age=age;
		this.city=city;
	}
	public void display()
	{
		System.out.println("Name "+name);
		System.out.println("Name "+age);
		System.out.println("Name "+city);
		
	}
}
class employee extends student
{
	int salary;
	String design;
	employee(String name,int age,String city,int salary,String design)
	{
		super(name,age,city);
		this.salary=salary;
		this.design=design;
	}
	public void display()
	{
		System.out.println("Name "+name);
		System.out.println("Age "+age);
		System.out.println("City "+city);
		System.out.println("Salary "+salary);
		System.out.println("Design "+design);
		
		
	}
}
class inheritance
{
	public static void main(String[]arg)
	{
		employee obj=new employee("Dharshini",22,"Bangalore",35000,"Software developer");
		obj.display();
	}
}