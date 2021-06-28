#!/bin/bash
echo "PRint the number of words in each line"
input=$1
while read line;do
	words=`echo $line | wc -w`
	echo "Number of words: $words"
done < $input
