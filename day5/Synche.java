class message{
	synchronized void display(String msg) //to make sure that the block is completely executed before we give the resource to the next object
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
	o.display(msg);
	}
}
class Synche{
	public static void main(String[] args)
	{
		message o=new message();
		call obj=new call(o,"Hello");
		call obj1=new call(o,"good");
		call obj2=new call(o,"morning");
	}
}