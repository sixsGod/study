Public Class Person
    ' Properties
    Public Property Name As String
    Public Property Age As Integer

    ' Constructor
    Public Sub New(name As String, age As Integer)
        Me.Name = name
        Me.Age = age
    End Sub

    ' Method
    Public Sub Introduce()
        Console.WriteLine($"Hello, my name is {Name} and I am {Age} years old.")
    End Sub
End Class

' Example usage
Module Program
    Sub Main()
        Dim person1 As New Person("Alice", 25)
        person1.Introduce()

        Dim person2 As New Person("Bob", 30)
        person2.Introduce()
    End Sub
End Module