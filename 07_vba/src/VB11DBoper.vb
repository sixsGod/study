Imports System.Data.SqlClient

Public Class DBOperations
    Private connectionString As String = "Your_Connection_String_Here"

    ' Method to execute a query and return a DataTable
    Public Function ExecuteQuery(query As String) As DataTable
        Dim dataTable As New DataTable()

        Try
            Using connection As New SqlConnection(connectionString)
                connection.Open()
                Using command As New SqlCommand(query, connection)
                    Using adapter As New SqlDataAdapter(command)
                        adapter.Fill(dataTable)
                    End Using
                End Using
            End Using
        Catch ex As Exception
            Console.WriteLine("Error: " & ex.Message)
        End Try

        Return dataTable
    End Function

    ' Method to execute a non-query (INSERT, UPDATE, DELETE)
    Public Function ExecuteNonQuery(query As String) As Integer
        Dim rowsAffected As Integer = 0

        Try
            Using connection As New SqlConnection(connectionString)
                connection.Open()
                Using command As New SqlCommand(query, connection)
                    rowsAffected = command.ExecuteNonQuery()
                End Using
            End Using
        Catch ex As Exception
            Console.WriteLine("Error: " & ex.Message)
        End Try

        Return rowsAffected
    End Function
End Class