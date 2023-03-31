#!/bin/bash

echo "Your home directory is : $HOME"

read -p "enter filename : " filename

echo "filename"	        "date"	           "time"             "Permission[octal:rwx]"
echo "------------"    "----------"    "------------"     "-----------------"

echo  "$filename"  "`date +%D`"  "`date +%T`"  "`find $filename  -printf "%m:%M"`"  



tall=`ls -la | wc -l`
tdir=`ls -l | grep ^d | wc -l`
ft=`ls -l | grep -v ^d | wc -l`
tfile=`echo "$ft - 1" | bc`
echo "Total no. of files : $tall "
echo "Total no. of normal files : $tfile"
echo "Total no. of Directories : $tdir"
