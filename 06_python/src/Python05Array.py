import array as arr

# Working with arrays in Python

# Create an array of integers
numbers = arr.array('i', [1, 2, 3, 4, 5])

# Print the array
print("Array:", numbers)

# Access elements
print("First element:", numbers[0])
print("Last element:", numbers[-1])

# Append a new element
numbers.append(6)
print("Array after append:", numbers)

# Insert an element at a specific position
numbers.insert(2, 99)
print("Array after insert:", numbers)

# Remove an element
numbers.remove(3)
print("Array after remove:", numbers)

# Pop an element
popped = numbers.pop()
print("Popped element:", popped)
print("Array after pop:", numbers)

# Get the index of an element
index = numbers.index(99)
print("Index of 99:", index)

# Reverse the array
numbers.reverse()
print("Reversed array:", numbers)