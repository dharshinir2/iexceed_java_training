import java.io.*;

class Demobais{
	public static void main(String[] args) throws Exception
	{
		byte arr[]={1,2,3,4,5,6,7,8,9,0}; 
		ByteArrayInputStream bais=new ByteArrayInputStream(arr);
		System.out.println(bais.read());
		System.out.println("Available"+bais.available());
		bais.skip(2);
		int i=0;
		while((i=bais.read())!=-1)
		{
			System.out.println(i);
		}
		System.out.println("Available"+bais.available());
	
			
	
	}
}