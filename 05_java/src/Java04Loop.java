public class Java04Loop {
    public static void main(String[] args) {
        // Example of a for loop
        for (int i = 0; i < 5; i++) {
            System.out.println("For loop iteration: " + i);
        }

        // Example of a while loop
        int count = 0;
        while (count < 5) {
            System.out.println("While loop iteration: " + count);
            count++;
        }

        // Example of a do-while loop
        int num = 0;
        do {
            System.out.println("Do-while loop iteration: " + num);
            num++;
        } while (num < 5);
    }
}