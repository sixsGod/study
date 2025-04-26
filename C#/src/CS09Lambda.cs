using System;
using System.Collections.Generic;
using System.Linq;

class Program
{
    static void Main(string[] args)
    {
        // Example of a simple lambda expression
        Func<int, int> square = x => x * x;
        Console.WriteLine($"Square of 5: {square(5)}");

        // Using lambda with LINQ
        List<int> numbers = new List<int> { 1, 2, 3, 4, 5, 6 };
        var evenNumbers = numbers.Where(n => n % 2 == 0).ToList();
        Console.WriteLine("Even numbers: " + string.Join(", ", evenNumbers));

        // Lambda in sorting
        var sortedNumbers = numbers.OrderByDescending(n => n).ToList();
        Console.WriteLine("Sorted numbers (descending): " + string.Join(", ", sortedNumbers));

        // Lambda with Action
        Action<string> greet = name => Console.WriteLine($"Hello, {name}!");
        greet("World");
    }
}