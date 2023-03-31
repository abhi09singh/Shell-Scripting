#!/bin/bash

echo "you are logged in as : $USER"
echo "Directory : $PWD"
ter=`tty`
echo "Terminal:  $ter"
total=`ls -la | wc -l`
final=`expr $total - 1`
echo "Total No of files and dir(including hidden):  $final"
