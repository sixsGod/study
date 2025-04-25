Module VB02Compute
    Sub Main()
        ' 定义两个变量
        Dim num1 As Integer = 10
        Dim num2 As Integer = 5

        ' 加法
        Dim sum As Integer = num1 + num2
        Console.WriteLine("加法结果: " & sum)

        ' 减法
        Dim difference As Integer = num1 - num2
        Console.WriteLine("减法结果: " & difference)

        ' 乘法
        Dim product As Integer = num1 * num2
        Console.WriteLine("乘法结果: " & product)

        ' 除法
        Dim quotient As Double = num1 / num2
        Console.WriteLine("除法结果: " & quotient)

        ' 取余
        Dim remainder As Integer = num1 Mod num2
        Console.WriteLine("取余结果: " & remainder)

        ' 等待用户按键退出
        Console.ReadKey()
    End Sub
End Module