@FunctionalInterface
interface functinterface{
    public void display();
}
public class Main implements functinterface
{
	public static void main(String[] args) {
	    new Main().display();
	    
	}
	        @Override
	        public void display()
	        {
	            System.out.print("hello");
	        }
}
