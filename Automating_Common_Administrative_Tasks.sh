#!/bin/bash
#
##############################################################
# Created by Sachin Yadav
# Date 01st May 2025
# Automating Common Administrative Tasks Using Bash Scripts
################################################################

set -e #exit script on any error

LOG_DIR="/home/admin/logs"
BACKUP_DIR="/home/admin/logs_backup"
LOG_FILE="systemhealth.log"


# Retention Period in Days
RETENTION=7
EXTENSION="*.tar.gz"

# Checking the root user
if [ "$EUID" -ne 0 ];
then
        echo "Please run as root"
        exit 1
fi

# cd "$BACKUP_DIR"

echo "Cleaning up old backups........."
# rm -f *.log.tar.gz

# Find and delete logs.tar.gz files older than Retension days
find "$BACKUP_DIR" -type f -name "$EXTENSION" -mtime +"$RETENTION" -exec rm -f {} \;


cd "$LOG_DIR"

echo "Compression of logs........"
tar -cvf logs.tar "$LOG_FILE"
gzip logs.tar


echo "Copying compressed log to backup directory..."
mv logs.tar.gz "$BACKUP_DIR"

echo "Updating system packages........"
sudo apt update && sudo apt upgrade -y

echo "Checking disk usage of root filesystem:"
THRESHOLD=10
DISK_USAGE=$(df / | awk 'NR==2 {gsub(/%/, "", $5); print $5}')

if [ "$DISK_USAGE" -ge "$THRESHOLD" ]
then
         echo " $(date)  WARNING: Disk Usage High "$DISK_USAGE"% ! "
         #mail -s "Disk alert on $(hostname)" sy16997@gmail.com
fi



#echo "nginx is down. Attempting to restart....."
#sudo systemctl restart "$SERVICE"
#systemctl status "$SERVICE" | awk -F" " 'NR==3{print $2}'

SERVICE="nginx"
SERVICE_STATUS="$(systemctl status "$SERVICE" | awk -F" " 'NR==3{print $2}')"

if [ $SERVICE_STATUS != "active" ];then
        echo "nginx is down. Attempting to restart....."
        sudo systemctl restart "$SERVICE"
fi


echo "script executed successfully"

