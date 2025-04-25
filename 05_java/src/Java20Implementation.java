// Define the interface
interface MyInterface {
    void method1();
    void method2();
}

// Implement the interface
public class Java20Implementation implements MyInterface {

    @Override
    public void method1() {
        System.out.println("Method1 implementation");
    }

    @Override
    public void method2() {
        System.out.println("Method2 implementation");
    }

    public static void main(String[] args) {
        MyInterface obj = new Java20Implementation();
        obj.method1();
        obj.method2();
    }
}