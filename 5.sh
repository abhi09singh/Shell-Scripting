#!/bin/bash

read -p "enter the string : " st

s=`echo "$st" | tr 'A-Z' 'a-z' | tr -d ' '`
rs=`echo "$s" | rev`

if [ "$s" == "$rs" ]
then
	echo " Palindrome"
else
	echo "Not a Palindrome"

fi
