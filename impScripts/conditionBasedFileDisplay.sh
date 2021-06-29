#!/bin/bash
count=`ls -l | wc -l`
echo "Number of files found in the Dir: `expr $count - 1`"

echo "Enter the number of files to be displayed:"
read n
#a=`ls -lrt`
#echo $a
ls -lrt | awk '(NR>1){print $0}'| head -${n} > result1.txt
cat result1.txt
