#!/bin/bash

# Example usage of grep command

# Search for a specific word in a file
echo "Searching for the word 'example' in sample.txt:"
grep "example" sample.txt

# Search for a pattern in multiple files
echo "Searching for the pattern 'error' in all .log files:"
grep "error" *.log

# Perform a case-insensitive search
echo "Performing a case-insensitive search for 'hello' in sample.txt:"
grep -i "hello" sample.txt

# Display line numbers with matches
echo "Displaying line numbers for matches of 'test' in sample.txt:"
grep -n "test" sample.txt

# Search recursively in directories
echo "Searching recursively for 'TODO' in the current directory:"
grep -r "TODO" .

# Invert match to show lines that do not contain the pattern
echo "Showing lines that do not contain 'skip' in sample.txt:"
grep -v "skip" sample.txt

# Count the number of matches
echo "Counting the number of matches for 'data' in sample.txt:"
grep -c "data" sample.txt