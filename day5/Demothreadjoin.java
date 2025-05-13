class Demo extends Thread{
	public void run(){
	try
		{
		for(int i=0;i<7;i++)
		{
			System.out.println(i);
			Thread.sleep(1000);
		}	
	}catch(Exception e){}
	}
}
class Demothreadjoin
{
	public static void main(String[]args) throws InterruptedException
	{
	Demo obj1=new Demo();
	Demo obj2=new Demo();
	Demo obj3=new Demo();
	obj1.start();
		obj1.join();
		obj2.start();
		obj3.start();
	
	}
}