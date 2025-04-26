using System;

class Program
{
    static void Main(string[] args)
    {
        // 整型
        int intValue = 42;
        Console.WriteLine($"整型: {intValue}");

        // 浮点型
        double doubleValue = 3.14159;
        Console.WriteLine($"浮点型: {doubleValue}");

        // 字符型
        char charValue = 'A';
        Console.WriteLine($"字符型: {charValue}");

        // 字符串
        string stringValue = "Hello, World!";
        Console.WriteLine($"字符串: {stringValue}");

        // 布尔型
        bool boolValue = true;
        Console.WriteLine($"布尔型: {boolValue}");

        // 十六进制和二进制表示
        int hexValue = 0x2A; // 42 in hexadecimal
        int binaryValue = 0b101010; // 42 in binary
        Console.WriteLine($"十六进制: {hexValue}, 二进制: {binaryValue}");

        // 常量
        const double Pi = 3.14159;
        Console.WriteLine($"常量 Pi: {Pi}");

        // 隐式类型
        var implicitValue = 100;
        Console.WriteLine($"隐式类型: {implicitValue} (类型: {implicitValue.GetType()})");

        // 可空类型
        int? nullableInt = null;
        Console.WriteLine($"可空类型: {nullableInt ?? 0}");
    }
}