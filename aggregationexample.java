class Student {
    String name;
    int rollNo;
    String department;

    Student(String name, int rollNo, String department) {
        this.name = name;
        this.rollNo = rollNo;
        this.department = department;
    }
}

class College {
    String collegeName;
    

    College(String collegeName) {
        this.collegeName = collegeName;
        
    }

    public void display(Student s) {
        System.out.println("College Name: " + collegeName); 
        System.out.println("Student Name: " + s.name);
        System.out.println("Roll Number: " + s.rollNo);
        System.out.println("Department: " + s.department);
    }
}
public class aggregationexample {
    public static void main(String[] args) {
        College c = new College("SKCET");
        Student s = new Student("Dharshini", 17, "AI and Data Science");
        c.display(s);
    }
}
