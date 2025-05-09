interface sample{
    String name="Dharshini";
    int roll=17;
    public void display();
}

class student implements sample{
    @Override
    public void display()
    {
        System.out.print(name+roll);
    }
   
}
public class Main 
{
	public static void main(String[] args) {
	   student obj=new student();
	   obj.display();
	 
		
	}
}
