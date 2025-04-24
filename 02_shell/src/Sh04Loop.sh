#!/bin/bash

# Example of a for loop
echo "For loop example:"
for i in {1..5}; do
    echo "Iteration $i"
done

# Example of a while loop
echo "While loop example:"
count=1
while [ $count -le 5 ]; do
    echo "Count is $count"
    ((count++))
done

# Example of an until loop
echo "Until loop example:"
count=1
until [ $count -gt 5 ]; do
    echo "Count is $count"
    ((count++))
done