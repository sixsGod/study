public class Java07Class {
    public static void main(String[] args) {
        // Creating an object of the Example class
        Example example = new Example();
        
        // Accessing the object's method
        example.displayMessage();
    }
}

class Example {
    // Method in the Example class
    public void displayMessage() {
        System.out.println("Hello, this is an object example!");
    }
}