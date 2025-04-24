import sqlite3

def create_connection(db_file):
    """Create a database connection to the SQLite database."""
    conn = None
    try:
        conn = sqlite3.connect(db_file)
        print(f"Connected to database: {db_file}")
    except sqlite3.Error as e:
        print(f"Error: {e}")
    return conn

def create_table(conn, create_table_sql):
    """Create a table from the create_table_sql statement."""
    try:
        cursor = conn.cursor()
        cursor.execute(create_table_sql)
        print("Table created successfully.")
    except sqlite3.Error as e:
        print(f"Error: {e}")

def insert_data(conn, insert_sql, data):
    """Insert data into a table."""
    try:
        cursor = conn.cursor()
        cursor.execute(insert_sql, data)
        conn.commit()
        print("Data inserted successfully.")
    except sqlite3.Error as e:
        print(f"Error: {e}")

def query_data(conn, query_sql):
    """Query data from a table."""
    try:
        cursor = conn.cursor()
        cursor.execute(query_sql)
        rows = cursor.fetchall()
        return rows
    except sqlite3.Error as e:
        print(f"Error: {e}")
        return []

if __name__ == "__main__":
    database = "example.db"

    sql_create_table = """
    CREATE TABLE IF NOT EXISTS users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        age INTEGER
    );
    """

    sql_insert_data = "INSERT INTO users (name, age) VALUES (?, ?)"
    sql_query_data = "SELECT * FROM users"

    # Create a database connection
    conn = create_connection(database)

    if conn:
        # Create table
        create_table(conn, sql_create_table)

        # Insert data
        insert_data(conn, sql_insert_data, ("Alice", 30))
        insert_data(conn, sql_insert_data, ("Bob", 25))

        # Query data
        rows = query_data(conn, sql_query_data)
        for row in rows:
            print(row)

        # Close connection
        conn.close()