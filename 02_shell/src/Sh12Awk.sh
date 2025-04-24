#!/bin/bash

# Example usage of awk to process a text file
# Replace 'input.txt' with your actual file name

awk '
# BEGIN block runs before processing any lines
BEGIN {
    print "Processing file with awk..."
}

# This block runs for each line in the input
{
    print "Line " NR ": " $0
}

# END block runs after all lines are processed
END {
    print "Finished processing file."
}
' input.txt