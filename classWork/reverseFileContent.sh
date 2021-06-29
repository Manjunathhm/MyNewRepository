#!/bin/bash
echo "To reverse the input file and write it into outputfile"
file=$1
a=`cat $file | wc -l`
while [ $a -gt 0 ];do
	head -$a $file | tail -1 >> reversedOutput.txt
	a=`expr $a - 1`
done;
cat reversedOutput.txt
