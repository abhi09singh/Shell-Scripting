#!/bin/bash

#checking for read permission of file1
read -p " enter absolute path of file1.txt : " ab_path
if [ -r $ab_path ];
then
    echo "$ab_path is readable"
else
    echo "$ab_path is not readable"
fi

#checking file2 exist or not , if yes then copying and appending:
read -p " enter filename of file2 (copy_dest file.txt )" file2
if [ -f "$file2" ]
then
	echo "$file2 exist"
	echo " choose option : "
	echo " a. overwrite"
	echo "b. Append "
	read -p "enter choice :" ch
	case $ch in
		"a")
			read -p "enter name of file1.txt " file1
			ow=`cat $file1 | tee $file2`
			echo "$ow"
			echo "overwrite done from $file1 to $file2"
		;;
		"b")
			read -p "enter name of file1.txt " file1
			ap=`cat $file1 | tee -p $file2`
			echo "$ap"
			echo "$file1 appended to $file2"
		;;
		*)
			cls=`clear`
			echo "$cls"
		;;
	esac	
else
	echo "$file2 don't exist"
fi


