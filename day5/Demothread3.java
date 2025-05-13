class Demo extends Thread
{
	Thread t=new Thread(this);
	public void run()
	{
		for(int i=0;i<5;i++)
		{
			try{
				System.out.println("run thread "+i); //trycatch is for non static methods
				t.sleep(1000);
			}catch(Exception e){}	
		}
	}

}
class Demothread3{
	public static void main(String[] args) throws Exception //throws exception is for static method
	{
		Demo obj=new Demo();
		obj.start();
		Thread t=Thread.currentThread();
		for(int i=0;i<5;i++)
		{
			System.out.println("main thread "+i);
			t.sleep(500);
		}
		
		
	}
}