#!/bin/bash

# Function to subtract two numbers
subtract() {
    local num1=$1
    local num2=$2
    echo $((num1 - num2))
}

# Example usage
num1=10
num2=4
result=$(subtract $num1 $num2)
echo "The result of $num1 - $num2 is $result"