#!/bin/bash

SOURCE="/home/leo/projects"
BACKUP_DIR="/home/leo/backups"

DATE=$(date +%Y-%m-%d)

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" "$SOURCE"

echo "Backup completed."