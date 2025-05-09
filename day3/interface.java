interface one{
    public void display();
}
interface two{
    public void display();
}
class three implements one,two{
    public void display()
    {
        System.out.print("hello");
    }
    public void display2(){
        System.out.print("world");
    }
}
public class Main 
{
	public static void main(String[] args) {
	   three obj=new three();
	   obj.display();
	   obj.display2();
		
	}
}
