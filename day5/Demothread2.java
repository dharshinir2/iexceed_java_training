class Demo extends Thread
{
	Thread t=new Thread(this);
	public void run()
	{
		System.out.println(t.getName());
		t.setName("run thread");
		System.out.println(t.getName());
		System.out.println(t.getPriority());
	}

}
class Demothread2{
	public static void main(String[] args)
	{
		Demo obj=new Demo();
		obj.start();
		Thread t=Thread.currentThread();
		System.out.println(t.getName());
		t.setName("main thread");
		System.out.println(t.getName());
		
	}
}