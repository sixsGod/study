public interface Java19Interface {
    // Define constants
    int MAX_VALUE = 100;
    String DEFAULT_MESSAGE = "Hello, Interface!";

    // Abstract methods
    void performAction();
    int calculate(int a, int b);

    // Default method
    default void printMessage() {
        System.out.println(DEFAULT_MESSAGE);
    }

    // Static method
    static void displayMaxValue() {
        System.out.println("Max Value: " + MAX_VALUE);
    }
}