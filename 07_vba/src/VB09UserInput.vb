Module VB09UserInput

    Sub Main()
        ' Prompt the user for input
        Console.WriteLine("Please enter your name:")
        Dim userName As String = Console.ReadLine()

        ' Display the input back to the user
        Console.WriteLine("Hello, " & userName & "!")

        ' Wait for the user to press a key before exiting
        Console.WriteLine("Press any key to exit...")
        Console.ReadKey()
    End Sub

End Module