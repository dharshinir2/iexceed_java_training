import java.util.*;
class Array
{
	public static void main(String[] args) {
	Scanner in=new Scanner(System.in);
		int arr[]=new int[5];
		int arr2[]={2,3,4,5};
		
		for(int i=0;i<5;i++)
		{
			arr[i]=in.nextInt();
		}
		arr2[0]=1;
		for(int i=0;i<arr2.length;i++)
		{
			System.out.println(arr2[i]);
		}
		arr[0]=999;
		for(int i=0;i<5;i++)
		{
			System.out.println(arr[i]);
		}
		
		
		
}
}