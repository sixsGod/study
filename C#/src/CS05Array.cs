using System;

class Program
{
    static void Main(string[] args)
    {
        // 一维数组
        int[] numbers = { 1, 2, 3, 4, 5 };
        Console.WriteLine("一维数组:");
        foreach (int number in numbers)
        {
            Console.WriteLine(number);
        }

        // 二维数组
        int[,] matrix = {
            { 1, 2, 3 },
            { 4, 5, 6 },
            { 7, 8, 9 }
        };
        Console.WriteLine("\n二维数组:");
        for (int i = 0; i < matrix.GetLength(0); i++)
        {
            for (int j = 0; j < matrix.GetLength(1); j++)
            {
                Console.Write(matrix[i, j] + " ");
            }
            Console.WriteLine();
        }

        // 锯齿数组
        int[][] jaggedArray = new int[3][];
        jaggedArray[0] = new int[] { 1, 2 };
        jaggedArray[1] = new int[] { 3, 4, 5 };
        jaggedArray[2] = new int[] { 6 };

        Console.WriteLine("\n锯齿数组:");
        for (int i = 0; i < jaggedArray.Length; i++)
        {
            foreach (int num in jaggedArray[i])
            {
                Console.Write(num + " ");
            }
            Console.WriteLine();
        }
    }
}