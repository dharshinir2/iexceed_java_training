import java.util.*;
public class Main
{
	public static void main(String[] args) {
		Scanner in=new Scanner(System.in);
		int m=in.nextInt();
		int n=in.nextInt();
		int sum=0;
		int arr[][]=new int[m][n];
		System.out.print("Array elements are :");
		for(int i=0;i<m;i++)
		{
		    for(int j=0;j<n;j++)
		    {
		        arr[i][j]=in.nextInt();
		        sum+=arr[i][j];
		    }
		}
		System.out.print("\nSum="+sum);
		
	
	}
}
