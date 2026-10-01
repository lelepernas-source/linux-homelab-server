# Troubleshooting Log

## Issue#001 — Backup file not created

**Date:** 2026-10-01

### Problem

The backup script displayed:

Backup completed successfully.

However, the backup directory was empty:

total 0


### Investigation

The `backup.sh` script was checked and the backup directory path was found to be incorrect.

Incorrect:
bash
BACKUP_DIR="home/sanrepdev/backups"

The path was missing the `/` at the beginning.

### Cause

The script was using a relative path instead of the intended absolute path.

### Solution

Changed:
bash
BACKUP_DIR="home/sanrepdev/backups"

to:
bash
BACKUP_DIR="/home/sanrepdev/backups"

### Verification

The backup script was executed again:
bash
./backup.sh

The backup file was then successfully created in:

/home/sanrepdev/backups/

### Lesson Learned

Linux distinguishes between absolute and relative paths.

An absolute path starts with `/`, while a path without `/` at the beginning is relative to the current directory.