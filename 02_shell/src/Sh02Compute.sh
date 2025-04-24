#!/bin/bash

# A script to perform basic arithmetic operations

echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

echo "Choose an operation (+, -, *, /):"
read operation

case $operation in
    +)
        result=$((num1 + num2))
        echo "Result: $result"
        ;;
    -)
        result=$((num1 - num2))
        echo "Result: $result"
        ;;
    \*)
        result=$((num1 * num2))
        echo "Result: $result"
        ;;
    /)
        if [ $num2 -ne 0 ]; then
            result=$((num1 / num2))
            echo "Result: $result"
        else
            echo "Error: Division by zero is not allowed."
        fi
        ;;
    *)
        echo "Invalid operation."
        ;;
esac