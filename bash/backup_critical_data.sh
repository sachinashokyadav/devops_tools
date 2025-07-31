#!/bin/bash

#This script will backup critical data
#  - You can schedule it via cron for automated backups.


# Exit on error
set -e

SOURCE=(
   "/home/sachin/imp_file"
   "/tmp/imp_file"
)

BACKUP_DIR="/home/sachin/backups"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="critical_backup_$DATE.tgz"
LOG_FILE="/home/sachin/backups/backup_script.log"

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Logging Starts
echo "[$(date)] Starting backup | tee -a $LOG_FILE"

# Create Backup
tar -czf $BACKUP_DIR/$BACKUP_NAME ${SOURCE[@]}

# Logging finish
echo "[$(date)] Backup Completed: $BACKUP_DIR/$BACKUP_NAME" | tee -a $LOG_FILE

