# Define source and destination paths
$sourcePath = "C:\ImportantData"
$destinationPath = "D:\Backups\ImportantDataBackup_$(Get-Date -Format yyyyMMddHHmmss)"

# Create the backup directory if it doesn't exist
if (-not (Test-Path $destinationPath)) {
    New-Item -ItemType Directory -Path $destinationPath
}

# Copy files from source to destination
Copy-Item -Path $sourcePath -Destination $destinationPath -Recurse -Force

# Log the backup operation
$logFile = "D:\Backups\backup_log.txt"
$logEntry = "$(Get-Date): Backup completed successfully to $destinationPath"
Add-Content -Path $logFile -Value $logEntry

# Optional: Clean up old backups (e.g., older than 30 days)
$backupRetentionDays = 30
Get-ChildItem -Path "D:\Backups" | Where-Object {
    $_.PSIsContainer -and ($_.LastWriteTime -lt (Get-Date).AddDays(-$backupRetentionDays))
} | Remove-Item -Recurse -Force
