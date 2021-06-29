#!/bin/bash
inputFile=$1
echo "Input file is : $inputFile "
l=`wc -l $inputFile | cut -d " " -f1`
echo "$inputFile has $l lines"
wordsOfLine=0
totalWords=0
lineNum=1
while [ $lineNum -le $l ]
do 
	line=`sed -n ${lineNum}p $inputFile`
	echo "Line is $line"
	wordsOfLine=`sed -n ${lineNum}p $inputFile | wc -w | awk '{print $1}'`
	echo "Line $lineNum has $wordsOfLine"
	lineNum=`expr $lineNum + 1`
	totalWords=`expr $totalWords + $wordsOfLine`
	wordsOfLine=0
done
echo "Total number of words are: $totalWords"
