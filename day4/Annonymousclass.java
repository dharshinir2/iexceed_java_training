class Sample
{
	
}
class Annonymousclass{
	public static void main(String[]args)
	{
	
		new Sample(){
			void display()
			{
				System.out.print("hello");
			}
		}.display();
		
	}
}