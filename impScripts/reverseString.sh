#!/bin/bash
echo "Enter the value to be reversed:"
read original
count=`expr length "$original"`

#Because index always starts from 0"
len=`expr $count - 1`

while [ $len -ge 0 ]
do
	reverse=`echo $reverse${original:$len:1}`
	len=`expr $len - 1`
done
echo "Reversed value is : $reverse"
