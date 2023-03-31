#!/bin/bash

echo "enter choice : a , b , c "
echo "a. Adding record"
echo "b. finding record"
echo "c. Deleting record"
echo "d. default : to exit"
read -p "enter choice :  " ch

case $ch in
	"a")
		

		read -p " name of file : " name

		read -p " enter roll no. " roll

		read -p " enter complete name " cname
		read -p " enter semester " sem
		read -p " enter marks of 3 subject:s1 s2 s3 " s1 s2 s3
		add=`echo "$roll $cname $sem $s1 $s2 $s3" | tee -a  $name.txt`

		echo "$add"
	;;
	"b")
		read -p "enter filename to seach : " search
		get=`find . $search.txt`
		echo "$get"
	;;
	"c")
		read -p "enter record name to delete : " del
		rdel=`rm -r $del.txt`
		echo "$rdel"
		echo " $del  deleted"
	;;
	*)
		exit=`clear`	
		echo $exit
	;;
esac	
