Imports System.IO

Module VB10FileOper
    Sub Main()
        Dim filePath As String = "example.txt"

        ' Create and write to a file
        If Not File.Exists(filePath) Then
            Using writer As StreamWriter = File.CreateText(filePath)
                writer.WriteLine("Hello, this is a test file.")
                writer.WriteLine("This file demonstrates basic file operations in VB.NET.")
            End Using
            Console.WriteLine("File created and written successfully.")
        Else
            Console.WriteLine("File already exists.")
        End If

        ' Read from the file
        If File.Exists(filePath) Then
            Using reader As StreamReader = File.OpenText(filePath)
                Dim line As String
                Console.WriteLine("Reading from the file:")
                Do While (reader.Peek() >= 0)
                    line = reader.ReadLine()
                    Console.WriteLine(line)
                Loop
            End Using
        Else
            Console.WriteLine("File does not exist.")
        End If

        ' Append to the file
        If File.Exists(filePath) Then
            Using writer As StreamWriter = File.AppendText(filePath)
                writer.WriteLine("This line was appended to the file.")
            End Using
            Console.WriteLine("Line appended to the file successfully.")
        End If

        ' Delete the file
        If File.Exists(filePath) Then
            File.Delete(filePath)
            Console.WriteLine("File deleted successfully.")
        End If

        Console.ReadLine()
    End Sub
End Module