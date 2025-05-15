class booking{
	int id;
	boolean paymentstatus=false;
	synchronized void printticket(int id)
	{
		if(!this.paymentstatus)
		{
			System.out.println("Payment Not completed");
			try{
				wait();
			}catch( InterruptedException d){}
		}
		System.out.print("Ticket is ready to collect");
	}
	synchronized void payment(int id)
	{
		this.paymentstatus=true;
		System.out.println("payment done");
		notify();
	}
}
class Interthreadcommunication{
	public static void main(String[] args)
	{
		booking c=new booking();
		new Thread(){
			public void run(){
				c.printticket(12);
			}
		}.start();
		new Thread(){
				public void run(){
					c.payment(12);
				}
			}.start();
	}
}