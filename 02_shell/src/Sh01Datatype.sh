#!/bin/bash

# Demonstrating different data types in shell scripting

# String
string_var="Hello, World!"
echo "String: $string_var"

# Integer
int_var=42
echo "Integer: $int_var"

# Float (using bc for floating-point arithmetic)
float_var=$(echo "3.14 + 2.71" | bc)
echo "Float: $float_var"

# Array
array_var=(apple banana cherry)
echo "Array: ${array_var[@]}"
echo "First element: ${array_var[0]}"

# Associative Array (requires Bash 4.0+)
declare -A assoc_array
assoc_array[fruit]="apple"
assoc_array[color]="red"
echo "Associative Array: ${assoc_array[fruit]}, ${assoc_array[color]}"

# Boolean (using integers 0 and 1)
bool_var=1
if [ $bool_var -eq 1 ]; then
    echo "Boolean: True"
else
    echo "Boolean: False"
fi