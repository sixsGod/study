public class Java12Static {

    // Static variable
    static int staticCounter = 0;

    // Instance variable
    int instanceCounter = 0;

    // Static method
    static void incrementStaticCounter() {
        staticCounter++;
        System.out.println("Static Counter: " + staticCounter);
    }

    // Instance method
    void incrementInstanceCounter() {
        instanceCounter++;
        System.out.println("Instance Counter: " + instanceCounter);
    }

    public static void main(String[] args) {
        // Accessing static method without creating an object
        Java12Static.incrementStaticCounter();
        Java12Static.incrementStaticCounter();

        // Creating objects to access instance methods
        Java12Static obj1 = new Java12Static();
        Java12Static obj2 = new Java12Static();

        obj1.incrementInstanceCounter();
        obj2.incrementInstanceCounter();

        // Static variable is shared across all instances
        System.out.println("Static Counter (shared): " + Java12Static.staticCounter);
    }
}