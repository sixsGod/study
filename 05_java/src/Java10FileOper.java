import java.io.File;
import java.io.IOException;

public class Java10FileOper {
    public static void main(String[] args) {
        // Specify the file path
        String filePath = "example.txt";

        // Create a File object
        File file = new File(filePath);

        try {
            // Check if the file exists
            if (file.exists()) {
                System.out.println("File already exists: " + file.getAbsolutePath());
            } else {
                // Create a new file
                if (file.createNewFile()) {
                    System.out.println("File created successfully: " + file.getAbsolutePath());
                } else {
                    System.out.println("Failed to create the file.");
                }
            }

            // Perform file operations
            System.out.println("File Name: " + file.getName());
            System.out.println("File Path: " + file.getAbsolutePath());
            System.out.println("Is File Writable: " + file.canWrite());
            System.out.println("Is File Readable: " + file.canRead());
            System.out.println("File Size (bytes): " + file.length());

        } catch (IOException e) {
            System.out.println("An error occurred while handling the file.");
            e.printStackTrace();
        }
    }
}