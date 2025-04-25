Module VB03Condition

    Sub Main()
        Dim number As Integer

        Console.WriteLine("请输入一个整数：")
        number = Convert.ToInt32(Console.ReadLine())

        ' If...Then...Else 条件控制
        If number > 0 Then
            Console.WriteLine("输入的数字是正数。")
        ElseIf number < 0 Then
            Console.WriteLine("输入的数字是负数。")
        Else
            Console.WriteLine("输入的数字是零。")
        End If

        ' Select Case 条件控制
        Select Case number
            Case Is > 0
                Console.WriteLine("使用 Select Case 判断：正数")
            Case Is < 0
                Console.WriteLine("使用 Select Case 判断：负数")
            Case Else
                Console.WriteLine("使用 Select Case 判断：零")
        End Select

        Console.ReadLine()
    End Sub

End Module