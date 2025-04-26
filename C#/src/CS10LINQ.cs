using System;
using System.Collections.Generic;
using System.Linq;

class Program
{
    static void Main(string[] args)
    {
        // Sample data
        List<int> numbers = new List<int> { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

        // LINQ Query Syntax
        var evenNumbersQuery = from num in numbers
                               where num % 2 == 0
                               select num;

        Console.WriteLine("Even numbers (Query Syntax):");
        foreach (var num in evenNumbersQuery)
        {
            Console.WriteLine(num);
        }

        // LINQ Method Syntax
        var evenNumbersMethod = numbers.Where(num => num % 2 == 0);

        Console.WriteLine("\nEven numbers (Method Syntax):");
        foreach (var num in evenNumbersMethod)
        {
            Console.WriteLine(num);
        }
    }
}