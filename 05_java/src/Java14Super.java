public class ParentClass {
    public ParentClass() {
        System.out.println("Parent class constructor called");
    }

    public void display() {
        System.out.println("Display method in ParentClass");
    }
}

public class Java14Super extends ParentClass {
    public Java14Super() {
        super(); // Calls the constructor of the parent class
        System.out.println("Child class constructor called");
    }

    public void show() {
        super.display(); // Calls the display method of the parent class
        System.out.println("Show method in Java14Super");
    }

    public static void main(String[] args) {
        Java14Super obj = new Java14Super();
        obj.show();
    }
}