# String operations in Python

# Defining a string
my_string = "Hello, World!"

# Accessing characters in a string
first_char = my_string[0]  # 'H'
last_char = my_string[-1]  # '!'

# Slicing a string
substring = my_string[0:5]  # 'Hello'

# String methods
upper_case = my_string.upper()  # 'HELLO, WORLD!'
lower_case = my_string.lower()  # 'hello, world!'
replaced_string = my_string.replace("World", "Python")  # 'Hello, Python!'

# Splitting and joining strings
split_string = my_string.split(", ")  # ['Hello', 'World!']
joined_string = " ".join(split_string)  # 'Hello World!'

# Checking substrings
contains_hello = "Hello" in my_string  # True
contains_python = "Python" in my_string  # False

# String formatting
name = "Alice"
formatted_string = f"Hello, {name}!"  # 'Hello, Alice!'

# Output examples
print("Original String:", my_string)
print("First Character:", first_char)
print("Last Character:", last_char)
print("Substring:", substring)
print("Uppercase:", upper_case)
print("Lowercase:", lower_case)
print("Replaced String:", replaced_string)
print("Split String:", split_string)
print("Joined String:", joined_string)
print("Contains 'Hello':", contains_hello)
print("Contains 'Python':", contains_python)
print("Formatted String:", formatted_string)