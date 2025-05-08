class A
 {
    
      A()
      {
        System.out.println("Base class constructor");
      }
      A(int x,int y)
      {
        this();
        System.out.println(x+y);
      }
 }
 class B extends A
  {
     B()
     {
        super(10,20);
  
        System.out.println("Derived class constructor");
     }
  }

  class demoinher
   {
      public static void main(String asd[])
      {
        new B();
      }
   }