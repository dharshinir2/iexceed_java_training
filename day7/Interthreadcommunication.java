class booking{
	int availabletickets=10;
	
	synchronized void bookticket(int tickets)
	{
		if(this.availabletickets<tickets)
		{
			System.out.println("Not enough tickets available");
			
			try{
				wait();
			}catch( InterruptedException d){}
		}
		if(tickets<this.availabletickets)
		{
		System.out.println("Ticket is ready to collect");
			this.availabletickets-=tickets;
			System.out.println("Remaining tickets:"+this.availabletickets);
		}
	}
	synchronized void cancel(int tickets)
	{
		this.availabletickets+=tickets;
		System.out.println("cancellation done");
		notify();
	}
}
class Interthreadcommunication{
	public static void main(String[] args)
	{
		booking c=new booking();
		new Thread(){
			public void run(){
				c.bookticket(12);
			}
		}.start();
		new Thread(){
				public void run(){
					c.cancel(5);
				}
			}.start();
	}
}
