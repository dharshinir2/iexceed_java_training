class student1
{
    String name;
    int age;
    String city;
 
    student1(String name,int age,String city)
    {
        this.name=name;
        this.age=age;
        this.city=city;
    }
 
    public void displaystudent1()
    {
        System.out.println(name+""+age+""+city);
    }
}
 
class student2 extends student1
 {
    String name;
    int age;
    String city;
 
    student2(String name,int age,String city)
    {
        super(name,age,city);
        this.name=name;
        this.age=age;
        this.city=city;	
    }
 
    public void displaystudent2()
    {
        System.out.println(name+""+age+""+city);
    }
 
 }
 
 class supervar
  {
     public static void main(String asd[])
     {
       student2 s1= new student2("dharshu",22,"coimbatore");
       s1.displaystudent2();
     }
  }