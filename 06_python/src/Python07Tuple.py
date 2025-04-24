# Demonstrating the use of tuples in Python

# Creating a tuple
my_tuple = (1, 2, 3, 4, 5)
print("Original tuple:", my_tuple)

# Accessing elements in a tuple
print("First element:", my_tuple[0])
print("Last element:", my_tuple[-1])

# Slicing a tuple
print("Slice (2nd to 4th):", my_tuple[1:4])

# Tuples are immutable, so you cannot modify them
try:
    my_tuple[0] = 10
except TypeError as e:
    print("Error:", e)

# Tuple with mixed data types
mixed_tuple = (1, "hello", 3.14, True)
print("Mixed tuple:", mixed_tuple)

# Nested tuples
nested_tuple = (1, (2, 3), (4, 5))
print("Nested tuple:", nested_tuple)
print("Accessing nested element:", nested_tuple[1][1])

# Tuple unpacking
a, b, c, d, e = my_tuple
print("Unpacked values:", a, b, c, d, e)

# Single element tuple (note the comma)
single_element_tuple = (42,)
print("Single element tuple:", single_element_tuple)

# Length of a tuple
print("Length of my_tuple:", len(my_tuple))

# Checking membership
print("Is 3 in my_tuple?", 3 in my_tuple)
print("Is 10 in my_tuple?", 10 in my_tuple)