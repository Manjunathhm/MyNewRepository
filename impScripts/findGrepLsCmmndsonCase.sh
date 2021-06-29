#!/bin/bash
echo -e "Press 1 - To List the Files & Dirs \n2 - To list the files containing the pattern \n3 - Display temp1.txt if exists \n4.Come out of the execution."
read option
case $option in
	'1')
		ls -lrt
		;;
	'2')
		echo "Enter the string to be find:"
		read pattern
		count=`find . -type f -iname "*.*" |xargs grep $pattern | wc -l`
		if [ $count -gt 0 ];then
			echo `grep -l -R $pattern *`
		else
			echo "NO files found with the given pattern"
		fi
		;;
	'3')
		fileFound=`find . -type f -iname "temp1.txt" | wc -l `
		if [ $fileFound -gt 0 ];then
			cat temp1.txt
		else
			echo "File doesn't exists."
		fi
		;;
	'4')
		exit
esac
