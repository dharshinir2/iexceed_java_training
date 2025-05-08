class College {
    String name;
    String location;

    College(String name, String location) {
        this.name = name;
        this.location = location;
    }

    public void displayCollege() {
        System.out.println("College Name: " + name);
        System.out.println("Location: " + location);
    }
}

class Student {
    String name;
    int roll;
    College college;

    Student(String name, int roll, College college) {
        this.name = name;
        this.roll = roll;
        this.college = college;
    }

    public void displayStudent() {
        college.displayCollege();
        System.out.println("Student Name: " + name);
        System.out.println("Roll Number: " + roll);
    }
}

public class Pojaexample {
    public static void main(String[] args) {
        College c = new College("SKCET", "Coimbatore");
        Student s = new Student("Dharshini", 17, c);
        s.displayStudent();
    }
}
