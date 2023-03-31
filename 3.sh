#!/bin/bash
echo "enter 10 numbers to check : "
p=0
n=0
z=0

for i in {1..10}
do
	read num
	if [ $num -gt 0 ]
	then
		p=`expr $p + 1`	
	elif [ $num -lt 0 ]
	then
	
		n=`expr $n + 1`
	else
		z=`expr $z + 1`
	fi
done

echo "Positive numbers: $p"
echo "Negative numbers: $n"
echo "Zeroes: $z"
