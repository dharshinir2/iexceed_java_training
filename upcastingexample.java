
class College {
    public void display() {
        System.out.println("SKCET");
    }
}

class Department extends College {
    public void displaydepartment() {
        System.out.println("AI and DS");
    }
}

public class Main {
    public static void main(String[] args) {
        Department dept = new Department();
        College col = (College) dept;  
        
        col.display();             
        
    }
}
