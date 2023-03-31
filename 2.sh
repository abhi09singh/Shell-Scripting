#!/bin/bash
echo "enter the number and operator"
echo " for add : a + b"
echo " for sub : a - b"
echo " for Mul : a * b"
echo " for Div : a / b"
read -p "mycal " a b c
cal=`echo "scale=2; $a $b $c" | bc`

echo "$cal"
