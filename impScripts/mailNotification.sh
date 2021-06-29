#!/bin/bash
usage=`df -h .| awk '(NR>1) {print $5}' | sed 's/%//g'`
echo "Usage of disk is : $usage"
if [ $usage -gt 20 ]
then
	echo "Crossed the Usage, hence sending a notification to the user."
	mail -s "Disc Usage have reached the limit. Kindly remove the unwanted files to avoid the breakage." manjuhm.hm958@gmail.com
fi

