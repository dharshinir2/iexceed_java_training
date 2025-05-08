class student {
    String name="dharshini";
    int age=22;
    String city="Nagercoil";
 
    public void displaystudent()
    {
        System.out.println(name+" "+age+" "+city);
    }
}
 
class school extends student
{
    String schoolname="Hebron";
    public void displayschool()
    {
        super.displaystudent();
        System.out.println("School "+schoolname);
    }
}
 
class demosupermethod
 {
      public static void main(String asd[])
      {
        school obj=new school();
        obj.displayschool();
      }
 }
 
 