#!/bin/bash
echo " To convert/rename txt files to Html files"
ls *.txt > file
while read line; do
	name=`echo $line | awk -F "." '{print $1}'`
	mv $name.txt $name.html
done < file

ls
