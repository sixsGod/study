import java.util.Scanner;

public class Java09UserInput {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Prompt the user for input
        System.out.print("Enter your name: ");
        String name = scanner.nextLine();

        System.out.print("Enter your age: ");
        int age = scanner.nextInt();

        // Display the input
        System.out.println("Hello, " + name + "! You are " + age + " years old.");

        scanner.close();
    }
}