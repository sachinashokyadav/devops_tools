#!/bin/bash

##################################################
#Created by Sachin Yadav
#Date 26th April 2025
#Script for Automated System Health Monitoring & Reporting
###################################################

#set -x #debug mode
set -e #script will stop any error occured

# Check if running as root 
if [ $EUID -ne 0 ]
then
	echo "This option requires sudo priviledges."
	exit 1
fi


echo "------------System Health Report------------------" > /home/admin/logs/systemhealth.log
echo "" >> /home/admin/logs/systemhealth.log


# To check disk usage
echo "Disk Usage log on (Date : $(date) )" >> /home/admin/logs/systemhealth.log
df -h >> /home/admin/logs/systemhealth.log


echo "--------------------------------------------------------" >> /home/admin/logs/systemhealth.log


#To check running services
echo "Running Services log on (Date : $(date) )" >> /home/admin/logs/systemhealth.log
systemctl list-units --type=service --state=running >> /home/admin/logs/systemhealth.log


echo "--------------------------------------------------------" >> /home/admin/logs/systemhealth.log


# To check memory usage
echo "Memory Usage log on ( Date: $(date) )" >> /home/admin/logs/systemhealth.log
free -h >> /home/admin/logs/systemhealth.log


echo "-------------------------------------------------------" >> /home/admin/logs/systemhealth.log

# To check cpu performane
echo "CPU Performance log on ( Date : $(date) )" >> /home/admin/logs/systemhealth.log
top -b -n1 | head -20 >> /home/admin/logs/systemhealth.log

echo "" >> /home/admin/logs/systemhealth.log

echo "Report generated successfully"
