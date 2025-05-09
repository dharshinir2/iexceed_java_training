@FunctionalInterface
interface functinterface{
    public void display();
}
@FunctionalInterface
interface functinterface2{
    public void show();
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
	    new functinterface2(){
	        @Override
	            public void show()
	            {
	                System.out.print("world");
	            }
	        
	    }.show();
	}
}
