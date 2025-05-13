import java.io.DataInputStream;
class Demo{
	DataInputStream din=new DataInputStream(System.in);
	Demo()
	{
	try{
		int a=Integer.parseInt(din.readLine()); //converting string into int using parseInt
		int b=Integer.parseInt(din.readLine());
		int c=Integer.valueOf(din.readLine()).intValue(); //converting string into int using valueOf
		float d=Float.valueOf(din.readLine()).floatValue(); //converting string into float
		System.out.println(a+b+c);
		System.out.println(d);
		}catch(Exception e){}
	}
}
class DataInputStreame{
	public static void main(String[] args)
	{
		Demo obj=new Demo();
	}
}