
interface functinterface{
    public void display();
}
public class Main 
{
	public static void main(String[] args) {
	    new functinterface(){ //lamda
	        @Override
	        public void display(){
	            System.out.print("hello");
	        }
	    }.display();
	}
}
