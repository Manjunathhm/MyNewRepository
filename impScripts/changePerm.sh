#!/bin/bash
echo "TO change the permissions of the Files"
ls > list 
#echo $list

while read line;do
	sudo chmod 777 $line
done < list
ls -l
