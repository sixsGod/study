using System;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Enter your name:");
        string name = Console.ReadLine();

        Console.WriteLine("Enter your age:");
        string ageInput = Console.ReadLine();
        int age;
        if (int.TryParse(ageInput, out age))
        {
            Console.WriteLine($"Hello, {name}! You are {age} years old.");
        }
        else
        {
            Console.WriteLine("Invalid age entered.");
        }
    }
}