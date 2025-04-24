import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Java11DBoper {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/your_database";
    private static final String DB_USER = "your_username";
    private static final String DB_PASSWORD = "your_password";

    public static void main(String[] args) {
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            System.out.println("Connected to the database!");

            // Example: Insert operation
            String insertQuery = "INSERT INTO your_table (column1, column2) VALUES (?, ?)";
            try (PreparedStatement insertStmt = connection.prepareStatement(insertQuery)) {
                insertStmt.setString(1, "value1");
                insertStmt.setString(2, "value2");
                insertStmt.executeUpdate();
                System.out.println("Data inserted successfully.");
            }

            // Example: Select operation
            String selectQuery = "SELECT * FROM your_table";
            try (PreparedStatement selectStmt = connection.prepareStatement(selectQuery);
                 ResultSet resultSet = selectStmt.executeQuery()) {
                while (resultSet.next()) {
                    System.out.println("Column1: " + resultSet.getString("column1"));
                    System.out.println("Column2: " + resultSet.getString("column2"));
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}