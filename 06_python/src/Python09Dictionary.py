# Python Dictionary Examples

# Creating a dictionary
student = {
    "name": "Alice",
    "age": 25,
    "courses": ["Math", "Science"]
}

# Accessing values
print(student["name"])  # Output: Alice
print(student.get("age"))  # Output: 25

# Adding or updating values
student["age"] = 26
student["grade"] = "A"
print(student)

# Removing a key-value pair
del student["grade"]
print(student)

# Iterating through a dictionary
for key, value in student.items():
    print(f"{key}: {value}")

# Checking if a key exists
if "name" in student:
    print("Name exists in the dictionary.")

# Dictionary methods
keys = student.keys()
values = student.values()
items = student.items()

print(keys)
print(values)
print(items)