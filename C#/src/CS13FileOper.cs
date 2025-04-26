using System;
using System.IO;

class CS13FileOper
{
    static void Main(string[] args)
    {
        string filePath = "example.txt";

        // Create and write to a file
        File.WriteAllText(filePath, "Hello, this is a test file!");

        // Read from the file
        string content = File.ReadAllText(filePath);
        Console.WriteLine("File Content: " + content);

        // Append to the file
        File.AppendAllText(filePath, "\nThis is an appended line.");
        Console.WriteLine("Appended text to the file.");

        // Read the updated content
        content = File.ReadAllText(filePath);
        Console.WriteLine("Updated File Content: " + content);

        // Delete the file
        File.Delete(filePath);
        Console.WriteLine("File deleted.");
    }
}