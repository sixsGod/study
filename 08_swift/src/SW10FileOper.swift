import Foundation

// A utility class for basic file operations
class FileOperations {
    
    // Function to write content to a file
    static func writeFile(to path: String, content: String) {
        let url = URL(fileURLWithPath: path)
        do {
            try content.write(to: url, atomically: true, encoding: .utf8)
            print("File written successfully to \(path)")
        } catch {
            print("Error writing file: \(error.localizedDescription)")
        }
    }
    
    // Function to read content from a file
    static func readFile(from path: String) -> String? {
        let url = URL(fileURLWithPath: path)
        do {
            let content = try String(contentsOf: url, encoding: .utf8)
            return content
        } catch {
            print("Error reading file: \(error.localizedDescription)")
            return nil
        }
    }
    
    // Function to delete a file
    static func deleteFile(at path: String) {
        let url = URL(fileURLWithPath: path)
        do {
            try FileManager.default.removeItem(at: url)
            print("File deleted successfully at \(path)")
        } catch {
            print("Error deleting file: \(error.localizedDescription)")
        }
    }
}

// Example usage
let filePath = "/path/to/your/file.txt"

// Writing to a file
FileOperations.writeFile(to: filePath, content: "Hello, Swift!")

// Reading from a file
if let content = FileOperations.readFile(from: filePath) {
    print("File content: \(content)")
}

// Deleting a file
FileOperations.deleteFile(at: filePath)