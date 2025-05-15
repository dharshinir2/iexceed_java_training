class counter{
	int amt=10000;
	synchronized void withdraw(int amt)
	{
		if(amt>this.amt)
		{
			System.out.print("lowbalance");
			try{
				wait();
			}catch( InterruptedException d){}
		}
		this.amt-=amt;
		System.out.print("Completed");
	}
	synchronized void deposit(int amt)
	{
		this.amt+=amt;
		System.out.println("Deposite done");
		notify();
	}
	
	
}
class Demointerthreadcommunication{
	public static void main(String[] args)
	{
		counter c=new counter();
		new Thread(){
			public void run(){
				c.withdraw(12000);}
		}.start();
			new Thread(){
				public void run(){
					c.deposit(5000);
				}
			}.start();
	}
}