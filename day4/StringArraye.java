import java.util.*;
class StringArraye
{
	public static void main(String[] args) {
	Scanner in=new Scanner(System.in);
		String[] arr={"a","b","a","k","i","a"};
		int count=0;
		String arr2[]=new String[3];
		for(int i=0;i<arr2.length;i++)
		{
			arr2[i]=in.next();
		}
		for(int i=0;i<arr.length;i++)
		{
			if(arr[i].equals("a"))
			{
				count++;
			}
		}
		arr2[0]="hello";
		System.out.print("count of a ="+count);
		for(int i=0;i<arr2.length;i++)
		{
			System.out.print(arr2[i]);
		}
		
		
}
}