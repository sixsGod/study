#!/bin/bash

# Declare an array
my_array=("apple" "banana" "cherry" "date")

# Access array elements
echo "First element: ${my_array[0]}"
echo "Second element: ${my_array[1]}"

# Add an element to the array
my_array+=("elderberry")
echo "Array after adding an element: ${my_array[@]}"

# Iterate over the array
echo "Iterating over the array:"
for element in "${my_array[@]}"; do
    echo "$element"
done

# Get the length of the array
echo "Length of the array: ${#my_array[@]}"

# Remove an element from the array
unset my_array[1]
echo "Array after removing the second element: ${my_array[@]}"