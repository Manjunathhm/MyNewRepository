#!/bin/bash
echo "To perform different operations based on the current Day"
case $1 in 
	'mon')
		echo "This is file1" > file1
		echo "This is file2." > file2
		;;
	'tue')
		mv file1 file1.html
		mv file2 file2.html
		;;
	'wed')
		mkdir -p tempDir
		mv file2.html ./tempDir/
		mv file1.html ./tempDir/
		;;
	'thu')
		cat ./tempDir/file1.html
		cat ./tempDir/file2.html
		;;
	'fri')
		rm -rf ./tempDir/
		;;
	'sat'|'sun')
		echo "*****Today is holiday,no active operations!!!!!"
esac
