#!/bin/bash
ls *.html > output
while read line;do
	name=`echo $line | awk -F "." '{print $1}'`
	echo "Name of the html:$name"
	mv $name.html $name.txt
done < output
