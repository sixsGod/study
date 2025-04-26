import Foundation
import SQLite3

class DatabaseManager {
    private var db: OpaquePointer?

    init(databaseName: String) {
        openDatabase(databaseName: databaseName)
    }

    deinit {
        closeDatabase()
    }

    private func openDatabase(databaseName: String) {
        let fileURL = try! FileManager.default
            .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            .appendingPathComponent(databaseName)

        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("Error opening database")
        } else {
            print("Database opened successfully")
        }
    }

    func executeQuery(query: String) -> Bool {
        var statement: OpaquePointer?
        if sqlite3_prepare_v2(db, query, -1, &statement, nil) == SQLITE_OK {
            if sqlite3_step(statement) == SQLITE_DONE {
                sqlite3_finalize(statement)
                return true
            }
        }
        sqlite3_finalize(statement)
        return false
    }

    func fetchResults(query: String) -> [[String: Any]]? {
        var statement: OpaquePointer?
        var results: [[String: Any]] = []

        if sqlite3_prepare_v2(db, query, -1, &statement, nil) == SQLITE_OK {
            while sqlite3_step(statement) == SQLITE_ROW {
                var row: [String: Any] = [:]
                for column in 0..<sqlite3_column_count(statement) {
                    let columnName = String(cString: sqlite3_column_name(statement, column))
                    let columnValue: Any
                    switch sqlite3_column_type(statement, column) {
                    case SQLITE_INTEGER:
                        columnValue = sqlite3_column_int(statement, column)
                    case SQLITE_FLOAT:
                        columnValue = sqlite3_column_double(statement, column)
                    case SQLITE_TEXT:
                        columnValue = String(cString: sqlite3_column_text(statement, column))
                    default:
                        columnValue = NSNull()
                    }
                    row[columnName] = columnValue
                }
                results.append(row)
            }
        }
        sqlite3_finalize(statement)
        return results
    }

    private func closeDatabase() {
        if sqlite3_close(db) != SQLITE_OK {
            print("Error closing database")
        } else {
            print("Database closed successfully")
        }
        db = nil
    }
}