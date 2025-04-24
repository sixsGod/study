#!/bin/bash

# Example usage of sed command

# Replace all occurrences of 'foo' with 'bar' in a file
sed 's/foo/bar/g' input.txt > output.txt

# Delete lines containing a specific pattern
sed '/pattern_to_delete/d' input.txt > output.txt

# Print only lines matching a pattern
sed -n '/pattern_to_match/p' input.txt

# Replace only the first occurrence of 'foo' with 'bar' in each line
sed 's/foo/bar/' input.txt > output.txt

# Replace on a specific line number (e.g., line 3)
sed '3s/foo/bar/' input.txt > output.txt

# Insert a line before a pattern
sed '/pattern_to_match/i\This is a new line' input.txt > output.txt

# Append a line after a pattern
sed '/pattern_to_match/a\This is a new line' input.txt > output.txt

# Delete a specific line (e.g., line 5)
sed '5d' input.txt > output.txt