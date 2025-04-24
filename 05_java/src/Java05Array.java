public class Java05Array {
    public static void main(String[] args) {
        // Declare and initialize an array
        int[] numbers = {1, 2, 3, 4, 5};

        // Access and print array elements
        for (int i = 0; i < numbers.length; i++) {
            System.out.println("Element at index " + i + ": " + numbers[i]);
        }

        // Modify an array element
        numbers[2] = 10;
        System.out.println("Modified element at index 2: " + numbers[2]);

        // Print the entire array
        System.out.println("Array contents:");
        for (int number : numbers) {
            System.out.print(number + " ");
        }
    }
}