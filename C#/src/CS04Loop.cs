using System;

class Program
{
    static void Main(string[] args)
    {
        // For loop example
        Console.WriteLine("For Loop:");
        for (int i = 0; i < 5; i++)
        {
            Console.WriteLine($"Iteration {i}");
        }

        // While loop example
        Console.WriteLine("\nWhile Loop:");
        int count = 0;
        while (count < 5)
        {
            Console.WriteLine($"Iteration {count}");
            count++;
        }

        // Do-while loop example
        Console.WriteLine("\nDo-While Loop:");
        int num = 0;
        do
        {
            Console.WriteLine($"Iteration {num}");
            num++;
        } while (num < 5);

        // Foreach loop example
        Console.WriteLine("\nForeach Loop:");
        string[] fruits = { "Apple", "Banana", "Cherry" };
        foreach (string fruit in fruits)
        {
            Console.WriteLine(fruit);
        }
    }
}