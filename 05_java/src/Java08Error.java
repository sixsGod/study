public class Java08Error {

    public static void main(String[] args) {
        try {
            // Code that may throw an exception
            int result = divide(10, 0);
            System.out.println("Result: " + result);
        } catch (ArithmeticException e) {
            // Handle the exception
            System.out.println("Error: Division by zero is not allowed.");
        } finally {
            // Code that will always execute
            System.out.println("Execution completed.");
        }
    }

    // Method that throws an exception
    public static int divide(int a, int b) throws ArithmeticException {
        return a / b;
    }
}
