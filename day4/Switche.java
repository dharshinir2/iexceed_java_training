import java.util.*;
class Switche
{
	public static void main(String[] args) {
		Scanner in=new Scanner(System.in);
	System.out.print("Enter number1: ");
	int a=in.nextInt();	
	System.out.print("Enter number2: ");
	int b=in.nextInt();
	System.out.print("Enter the operand");
	String per=in.next();
	switch(per)
	{
	    case "+":
	        int g=a+b;
	        System.out.print("Addition="+g);
	        break;
	   case "-":
	       int s=a-b;
	       System.out.print("Subtraction"+s);
	       break;
	       case "*":
	       System.out.print("Multiplication"+(a*b));
	       break;
	       case "/":
	       System.out.print("DIVISION"+(a/b));
	       break;
	   default:
	    System.out.print("Enter the valid operand");
	}
	
	}
}