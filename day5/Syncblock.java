class message{
	public void display(String msg) 
	{
		System.out.print("[");
		System.out.print(msg);
		System.out.println("]");
	}
}
class call extends Thread{
	Thread t=new Thread(this);
	String msg;
	message o;
	
	call(message o,String msg)
	{
		this.msg=msg;
		this.o=o;
		t.start();
	}
	public void run(){
		synchronized(o) //syncblock
		{
			o.display(msg);
		}
	}
}
class Syncblock{
	public static void main(String[] args) 
	{
		message o=new message();
		call obj=new call(o,"Hello");
		call obj1=new call(o,"good");
		call obj2=new call(o,"morning");
	}
}