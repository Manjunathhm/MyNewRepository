#!/bin/bash/
echo "Display the files based on the pattern."
echo "Enter the pattern to be searched : "
read pattern
`echo grep -R -l * $pattern` > list
while read line;do
	echo $line 
done > list
