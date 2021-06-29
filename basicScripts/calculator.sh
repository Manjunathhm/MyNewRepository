#!/bin/bash
echo -e "***Calculator***\nChoose an option from the below list:\n1.Addition\n2.Subtraction\n3.Multiplication\n4.Division"
read option
if [ $option -gt 4 ];then
	echo "Invalid option!! Choose a correct option "
	exit
fi
echo -e "Enter first number:"
read a
echo -e "Enter second number:"
read b
result=0
case $option in
'1')
	result=`expr $a + $b`
	echo "Addition of Numbers is : $result"
	;;
'2')
	result=`expr $a - $b`
	echo "Subtraction of Numbers is: $result"
	;;
'3')
	result=`expr $a \* $b`
	echo "Multiplication of Numbers is: $result"
	;;
'4')
	result=`expr $a / $b`
	echo "Division of numbers is: $result"
esac
