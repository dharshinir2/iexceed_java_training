public class AbstractExample {
    public static void main(String[] args) {
        A obj = new A();
        obj.display(10, 30);
        obj.show();
    }
}
abstract class Sample {
    public void show() {
        System.out.println("Hello");
    }

    abstract public void display(int x, int y);
}

class A extends Sample {
    @Override
    public void display(int x, int y) {
        System.out.println(x + y);
    }
}

