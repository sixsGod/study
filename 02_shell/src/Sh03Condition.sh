#!/bin/bash

# Example of using conditions in a shell script

# Check if a file exists
if [ -f "example.txt" ]; then
    echo "File example.txt exists."
else
    echo "File example.txt does not exist."
fi

# Check if a directory exists
if [ -d "example_dir" ]; then
    echo "Directory example_dir exists."
else
    echo "Directory example_dir does not exist."
fi

# Check if a variable is equal to a specific value
my_var="hello"
if [ "$my_var" = "hello" ]; then
    echo "Variable my_var is equal to 'hello'."
else
    echo "Variable my_var is not equal to 'hello'."
fi

# Using elif for multiple conditions
number=10
if [ "$number" -lt 5 ]; then
    echo "Number is less than 5."
elif [ "$number" -eq 10 ]; then
    echo "Number is equal to 10."
else
    echo "Number is greater than 5 but not equal to 10."
fi