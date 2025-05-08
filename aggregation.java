class bank
{
	String b_name;
	String b_branch;
	String b_ifsc;
	bank(String b_name,String b_branch,String b_ifsc)
	{
		this.b_name=b_name;
		this.b_branch=b_branch;
		this.b_ifsc=b_ifsc;
	}
	public void display(customer c)
	{
		System.out.println("bankname "+b_name);
		System.out.println("branch "+b_branch);
		System.out.println("ifsc "+b_ifsc);
		System.out.println("name "+c.c_name);
		System.out.println("accnum "+c.c_anum);
		System.out.println("balance "+c.balance);
	}
}
class customer
{
	String c_name;
	int c_anum;
	int balance;
	customer(String c_name,int c_anum,int balance)
	{
		this.c_name=c_name;
		this.c_anum=c_anum;
		this.balance=balance;
	}
}
class aggregation
{
	public static void main(String[]args)
	{
		bank b=new bank("sbi","nagercoil","86122k");
		customer c=new customer("Dharshini",325211,5155);
		b.display(c);
	}
}
	