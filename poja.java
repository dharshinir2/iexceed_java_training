class Address {
    int plt;
    String city;
    String street;
    int pin;

    Address(int plt, String street, String city, int pin) {
        this.plt = plt;
        this.street = street;
        this.city = city;
        this.pin = pin;
    }

    public void displayAddress() {
        System.out.println("Plot No: " + plt);
        System.out.println("Street: " + street);
        System.out.println("City: " + city);
        System.out.println("PIN: " + pin);
    }
}

class Student {
    String name;
    int age;
    Address adr;

    Student(String name, int age, Address adr) {
        this.name = name;
        this.age = age;
        this.adr = adr;
    }

    public void displayStudent() {
        adr.displayAddress(); 
        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
    }
}

public class poja {
    public static void main(String[] args) {
        Address adr = new Address(7, "Green Garden", "Nagercoil", 629302);
        Student s = new Student("Dharshini", 22, adr);
        s.displayStudent();
    }
}
