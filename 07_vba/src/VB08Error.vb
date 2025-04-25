Module VB08Error

    Sub Main()
        Try
            ' Example of code that may throw an exception
            Dim number As Integer = Convert.ToInt32("NotANumber")
        Catch ex As FormatException
            Console.WriteLine("FormatException caught: " & ex.Message)
        Catch ex As Exception
            Console.WriteLine("General Exception caught: " & ex.Message)
        Finally
            Console.WriteLine("Execution completed.")
        End Try
    End Sub

End Module