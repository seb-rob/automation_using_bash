#!/bin/bash

<<comment
Check disk usage and send an alert if it exceeds a threshold.
comment

# set threshold
readonly thresold=80

# get usage
usage=$(df / | grep / | awk '{print $5}' | sed 's/%//g')

# check usage
if [[ $usage -gt $thresold ]];
then
	echo "Alert!!! Disk usage alert: $usage% used"
	exit 1
else
	echo "Disk usage under controle"
fi


