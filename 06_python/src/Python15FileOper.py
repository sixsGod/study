# Python script for basic file operations

# Writing to a file
def write_to_file(filename, content):
    with open(filename, 'w') as file:
        file.write(content)
    print(f"Content written to {filename}")

# Reading from a file
def read_from_file(filename):
    try:
        with open(filename, 'r') as file:
            content = file.read()
        print(f"Content of {filename}:\n{content}")
        return content
    except FileNotFoundError:
        print(f"File {filename} not found.")
        return None

# Appending to a file
def append_to_file(filename, content):
    with open(filename, 'a') as file:
        file.write(content)
    print(f"Content appended to {filename}")

# Example usage
if __name__ == "__main__":
    file_name = "example.txt"
    
    # Write to file
    write_to_file(file_name, "Hello, this is a test file.\n")
    
    # Append to file
    append_to_file(file_name, "Appending a new line to the file.\n")
    
    # Read from file
    read_from_file(file_name)