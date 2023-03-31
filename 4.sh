#!/bin/bash

echo "Enter five numbers: n1 n2 n3 n4 n5"
read num1 num2 num3 num4 num5

min="$num1"
max="$num1"

if [ "$num2" -lt "$min" ]; then
    min="$num2"
fi
if [ "$num2" -gt "$max" ]; then
    max="$num2"
fi

if [ "$num3" -lt "$min" ]; then
    min="$num3"
fi
if [ "$num3" -gt "$max" ]; then
    max="$num3"
fi

if [ "$num4" -lt "$min" ]; then
    min="$num4"
fi
if [ "$num4" -gt "$max" ]; then
    max="$num4"
fi

if [ "$num5" -lt "$min" ]; then
    min="$num5"
fi
if [ "$num5" -gt "$max" ]; then
    max="$num5"
fi

# Display the minimum and maximum values
echo "Minimum value: $min"
echo "Maximum value: $max"

