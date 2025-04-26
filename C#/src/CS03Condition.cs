using System;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("请输入一个数字：");
        int number = int.Parse(Console.ReadLine());

        // if-else 条件控制
        if (number > 0)
        {
            Console.WriteLine("这是一个正数。");
        }
        else if (number < 0)
        {
            Console.WriteLine("这是一个负数。");
        }
        else
        {
            Console.WriteLine("这是零。");
        }

        // switch 条件控制
        Console.WriteLine("请输入一个字符：");
        char input = Console.ReadKey().KeyChar;
        Console.WriteLine();

        switch (input)
        {
            case 'a':
            case 'e':
            case 'i':
            case 'o':
            case 'u':
                Console.WriteLine("这是一个元音字母。");
                break;
            default:
                Console.WriteLine("这不是一个元音字母。");
                break;
        }

        // 三元运算符
        Console.WriteLine("请输入另一个数字：");
        int anotherNumber = int.Parse(Console.ReadLine());
        string result = anotherNumber % 2 == 0 ? "偶数" : "奇数";
        Console.WriteLine($"这个数字是{result}。");
    }
}