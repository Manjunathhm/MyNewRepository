#!/bin/bash
echo "Input file is :"
inputFile=$1
lines=`cat $inputFile | wc -l`
echo "Number of lInes: $lines"
while read line
do 
	age=`echo $line | awk -F " " '{print $2}'`
	echo "AGE is : $age"
	if [ $age -ge 60 ]
	then
		name=`echo $line | awk -F " " '{print $1}'`
		echo "Empl Name is : $name"
	fi
done < $inputFile
