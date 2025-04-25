Module VB01Datatype
    Sub Main()
        ' 整数类型
        Dim intValue As Integer = 42
        Console.WriteLine("Integer: " & intValue)

        ' 浮点数类型
        Dim doubleValue As Double = 3.14159
        Console.WriteLine("Double: " & doubleValue)

        ' 字符串类型
        Dim stringValue As String = "Hello, VB!"
        Console.WriteLine("String: " & stringValue)

        ' 布尔类型
        Dim boolValue As Boolean = True
        Console.WriteLine("Boolean: " & boolValue)

        ' 日期类型
        Dim dateValue As Date = #2023-01-01#
        Console.WriteLine("Date: " & dateValue)

        ' 字符类型
        Dim charValue As Char = "A"c
        Console.WriteLine("Char: " & charValue)

        ' 对象类型
        Dim objValue As Object = "This is an object"
        Console.WriteLine("Object: " & objValue)

        ' 数组类型
        Dim arrayValue As Integer() = {1, 2, 3, 4, 5}
        Console.WriteLine("Array: " & String.Join(", ", arrayValue))

        Console.ReadLine()
    End Sub
End Module