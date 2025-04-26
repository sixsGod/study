using System;

class Program
{
    static void Main(string[] args)
    {
        try
        {
            Console.WriteLine("请输入一个数字：");
            int number = int.Parse(Console.ReadLine());
            Console.WriteLine($"您输入的数字是：{number}");
        }
        catch (FormatException ex)
        {
            Console.WriteLine("输入的内容不是有效的数字格式。");
            Console.WriteLine($"错误信息：{ex.Message}");
        }
        catch (Exception ex)
        {
            Console.WriteLine("发生了一个错误。");
            Console.WriteLine($"错误信息：{ex.Message}");
        }
        finally
        {
            Console.WriteLine("程序执行结束。");
        }
    }
}