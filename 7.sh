#!/bin/bash

echo "a. to create user , enter username"
echo "b.  To create group , enter group name"
echo "c. to delete user , enter username"
echo "d. to delete group , enter groupname"
read -p " select option : a,b,c,d " option

case $option in
	"a")
		echo " enter username ...do not preexist"
		read username
		add=`sudo useradd $username`
		echo "$add"
	;;
	"b")
		echo "enter groupname...do not pre existed"
		read groupname
		gadd=`sudo groupadd $groupname`
		echo "$gadd"
	;;
	"c")
		echo "enter username"
		read username
		udel=`sudo userdel $username`
		echo "$udel"
		echo " user deleted"
	;;
	"d")
		echo "enter group name"
		read groupname
		gdel=`sudo groupdel $groupname`
		echo "$gdel"
		echo "group deleted"
	;;
	*)
		echo "error:wrong option"

	;;
esac
