#!/bin/bash
# This script calculates simple interest
# Formula: Simple Interest = (Principal * Rate * Time) / 100

# Check if correct number of arguments are provided
if [ $# -ne 3 ]; then
    echo "Usage: $0 <principal> <rate> <time>"
    echo "Example: $0 1000 5 2"
    exit 1
fi

# Get the arguments
principal=$1
rate=$2
time=$3

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display the result
echo "Principal Amount: $principal"
echo "Interest Rate: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $simple_interest"
