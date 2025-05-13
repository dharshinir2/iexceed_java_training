class demo extends Thread
{
	public void run(){
		for(int i=0;i<5;i++)
		{
			System.out.println("run"+i);
		}
	}
}
class Threadse{
	public static void main(String[] args)
	{
		demo obj=new demo();
		obj.start();//should be used only once
		for(int i=0;i<5;i++)
		{
			System.out.println("main"+i); //run and main will be executed simultaneously
		}
	}
}