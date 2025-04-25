public class Java13Final {

    public static void main(String[] args) {
        // Example of a final variable
        final int constantValue = 10;
        System.out.println("Constant Value: " + constantValue);

        // Uncommenting the following line will cause a compilation error
        // constantValue = 20;

        // Example of a final method
        FinalExample example = new FinalExample();
        example.displayMessage();
    }
}

class FinalExample {
    // Final method cannot be overridden
    public final void displayMessage() {
        System.out.println("This is a final method.");
    }
}

// Example of a final class
final class FinalClass {
    public void show() {
        System.out.println("This is a final class.");
    }
}

// Uncommenting the following code will cause a compilation error
// class SubClass extends FinalClass {}