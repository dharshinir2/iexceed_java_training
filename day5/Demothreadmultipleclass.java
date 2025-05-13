//class Demo1 extends Thread{//traditional method
//	public void run()
//	{
//		for(int i=0;i<7;i++)
//		{
//			System.out.println(i);
//		}
//	}
//	
//}
//*class Demo2 extends Demo1{
//	public void run()
//	{
//		for(int i=0;i<7;i++)
//		{
//			System.out.println(i);
//		}
//	}
//}
class Demothreadmultipleclass{
	public static void main(String[] args){
	new Demo1(){
		public void run(){
			for(int i=0;i<7;i++){
				System.out.println(i);
			}
		}
	}.start();
	//Demo2 obj2=new Demo2();
	//obj.start();
	//obj2.start();
	
	
}
}