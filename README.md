# Automated_Backup_PowerShell_Script
Automated Backup PowerShell Script
Overview

This PowerShell script automates the backup of important files on a Windows server. It creates a timestamped backup directory, copies specified files, logs the backup operation, and removes old backups based on a defined retention policy.

Features

Automated Backups: Automatically backs up files from a source directory to a designated destination with a timestamp.
Logging: Records each backup operation, providing a clear history of activities.
Old Backup Cleanup: Automatically deletes backups older than a specified number of days.

Prerequisites

Windows PowerShell
Sufficient disk space on the destination drive
Appropriate permissions to read from the source and write to the destination directories

Usage

Download the Script: Save the script to your server.
Set Paths:
  Update the $sourcePath variable with the path of the directory to back up.
  Update the $destinationPath variable with the path where backups will be stored.
Configure Backup Retention:
  Modify the $backupRetentionDays variable to specify how many days old backups should be retained.
Run the Script:
  Execute manually or set up a scheduled task for automated runs.

Logging

Logs all backup operations in backup_log.txt.
Each entry includes the date, time, and destination path.

Backup Retention Policy

Backups older than the specified number of days are automatically deleted.
Adjust the $backupRetentionDays variable as needed.

License

This project is licensed under the MIT License. See the LICENSE file for details.

Contributing    

Contributions are welcome! Please open an issue or submit a pull request with improvements or bug fixes.
