#!/bin/bash

# This script demonstrates error handling in shell scripting.

# Function to handle errors
error_handler() {
    echo "Error occurred in script at line: $1"
    exit 1
}

# Trap errors and call the error_handler function
trap 'error_handler $LINENO' ERR

# Example commands
echo "Starting script..."

# Simulate an error
non_existent_command

echo "This line will not execute due to the error above."