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