//student.java
package mypack;//the folder name should be mypack
 public class student{
    String name;
    int age;
    public student(String name,int age)
    {
        this.name=name;
        this.age=age;
    }
    public void displaystudent()
    {
        System.out.println("Name ="+name);
        System.out.println("Age ="+age);
    }
}
//department.java
import mypack.student; //maybe outside the package
class department extends student
{
    String dept;
    department(String name,int age,String dept)
    {
        super(name,age);
        this.dept=dept;
    }
    public void displaydept()
    {
        System.out.println("Dept ="+dept);
    }
}
class Main{
    public static void main(String [] args)
    {
        department obj=new department("dharshini",22,"AIandDS");
        obj.displaystudent();
        obj.displaydept();
    }
}
