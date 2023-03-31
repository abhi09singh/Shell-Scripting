#!/bin/bash

read -p " enter item_code : " item_code
read -p " enter Qty_sold (>0) : " qty_sold
read -p " enter Rate (100-10000): " rate

if [ $qty_sold -gt 0 ] && [ $rate -lt 100 ] && [ $rate -gt 10000 ] 
then
	echo " error"
fi

rec=`echo "$item_code  $qty_sold  $rate" | tee -a item.txt`
echo "$rec"
