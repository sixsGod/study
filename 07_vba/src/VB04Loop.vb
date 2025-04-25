Module VB04Loop

    Sub Main()
        ' For Loop Example
        Console.WriteLine("For Loop Example:")
        For i As Integer = 1 To 5
            Console.WriteLine("Iteration: " & i)
        Next

        ' While Loop Example
        Console.WriteLine(vbCrLf & "While Loop Example:")
        Dim counter As Integer = 1
        While counter <= 5
            Console.WriteLine("Iteration: " & counter)
            counter += 1
        End While

        ' Do While Loop Example
        Console.WriteLine(vbCrLf & "Do While Loop Example:")
        Dim num As Integer = 1
        Do While num <= 5
            Console.WriteLine("Iteration: " & num)
            num += 1
        Loop

        ' Do Until Loop Example
        Console.WriteLine(vbCrLf & "Do Until Loop Example:")
        Dim value As Integer = 1
        Do Until value > 5
            Console.WriteLine("Iteration: " & value)
            value += 1
        Loop

        Console.ReadLine()
    End Sub

End Module