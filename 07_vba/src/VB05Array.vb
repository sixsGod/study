Module VB05Array

    Sub Main()
        ' 定义一个整数数组
        Dim numbers() As Integer = {1, 2, 3, 4, 5}

        ' 遍历数组并打印每个元素
        Console.WriteLine("数组元素为：")
        For Each num As Integer In numbers
            Console.WriteLine(num)
        Next

        ' 修改数组中的值
        numbers(2) = 10
        Console.WriteLine("修改后的数组：")
        For Each num As Integer In numbers
            Console.WriteLine(num)
        Next

        ' 定义一个二维数组
        Dim matrix(2, 2) As Integer
        matrix(0, 0) = 1
        matrix(0, 1) = 2
        matrix(0, 2) = 3
        matrix(1, 0) = 4
        matrix(1, 1) = 5
        matrix(1, 2) = 6
        matrix(2, 0) = 7
        matrix(2, 1) = 8
        matrix(2, 2) = 9

        ' 打印二维数组
        Console.WriteLine("二维数组：")
        For i As Integer = 0 To 2
            For j As Integer = 0 To 2
                Console.Write(matrix(i, j) & vbTab)
            Next
            Console.WriteLine()
        Next

        Console.ReadLine()
    End Sub

End Module