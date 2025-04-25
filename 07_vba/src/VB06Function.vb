Module VB06Function

    ' 定义一个简单的函数，计算两个数的和
    Function AddNumbers(ByVal num1 As Integer, ByVal num2 As Integer) As Integer
        Return num1 + num2
    End Function

    Sub Main()
        ' 调用函数并输出结果
        Dim result As Integer
        result = AddNumbers(5, 10)
        Console.WriteLine("5 + 10 = " & result)
    End Sub

End Module