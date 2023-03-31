#!/bin/bash
read -p "enter abs address of current dir a/b/c/d/  :" abs_path
echo "$abs_path"
#to find all zero size files in current directory:
zero_size=`find .  -size 0` 
echo "$zero_size"

for i in $zero_size
do
	rm $i    
        echo "Zero-sized files are Successfully deleted"    
done
