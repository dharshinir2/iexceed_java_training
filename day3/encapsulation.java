
class student{
    private String name;
    private int roll;
    private String dept;
    public void getName(String name)
    {
        this.name=name;
    }
    public void getRoll(int roll)
    {
        this.roll=roll;
    }
    public void getDept(String dept)
    {
        this.dept=dept;
    }
    public void setName()
    {
        System.out.println("NAME : "+name);
    }
    public void setRoll()
    {
        System.out.println("ROLL : "+roll);
    }
    public void setDept()
    {
        System.out.println("DEPT : "+dept);
    }
    
}
public class Main 
{
	public static void main(String[] args) {
	   student obj=new student();
	   obj.getName("Dharshini");
	   obj.getRoll(17);
	   obj.getDept("AI and DS");
	   obj.setName();
	   obj.setRoll();
	   obj.setDept();
	 
		
	}
}
