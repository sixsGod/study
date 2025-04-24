# Python program demonstrating basic list operations

# Creating a list
my_list = [1, 2, 3, 4, 5]

# Accessing elements
print("First element:", my_list[0])
print("Last element:", my_list[-1])

# Adding elements
my_list.append(6)
print("After appending 6:", my_list)

# Removing elements
my_list.remove(3)
print("After removing 3:", my_list)

# Slicing a list
sub_list = my_list[1:4]
print("Sliced list (index 1 to 3):", sub_list)

# Iterating through a list
print("Iterating through the list:")
for item in my_list:
    print(item)

# List comprehension
squared_list = [x**2 for x in my_list]
print("Squared list:", squared_list)