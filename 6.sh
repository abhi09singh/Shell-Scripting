#!/bin/bash
		
read -p "enter the num.  " num
sum=0

while [ $num -gt 0 ]
do
	digit=`expr $num % 10`
	sum=`echo "$digit + $sum" | bc`
	num=`echo "$num / 10" | bc`
done

echo "Sum of digits is :  $sum"
