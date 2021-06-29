#!/bin/bash
echo "To check the status of a service"
services="tomcat java jenkins"
for i in $services;do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "The $i status is stopped."
	fi
done

