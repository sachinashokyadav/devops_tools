#!/bin/bash

#Description: Monitor Disk usage and send alert if partition exceeds a threshold
#Date Created: 14th May 2025

THRESHOLD=10
DATE=$(date "+%Y-%m-%d %H-%M-%S")
LOG_FILE="$HOME/disk_usage_script.log"

df -h | grep -i ^/dev/ | while read line
do
	USAGE=$(echo $line | awk '{print $5}' | tr -d %)
	PARTITION=$(echo $line | awk '{print $6}')
	if [ $USAGE -ge $THRESHOLD ]
	then
		ALERT_MSG="[$DATE] WARNING: $PARTITION is at ${USAGE}% Disk Usage!"

		# Append to Log
		echo $ALERT_MSG | tee -a $LOG_FILE

		# Optionally: send an email alert (uncomment below and configure 'mail' command)
		#echo $ALERT_MSG | mail -s "Disk alert on $(hostname)" you@example.com
	fi
done
