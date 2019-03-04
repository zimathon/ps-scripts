$db = $args[0]
$dt = (Get-Date).ToString("yyyyMMddhhmmss")
Write-Host $dt
Invoke-Sqlcmd "BACKUP DATABASE ${db} TO DISK = 'C:\sqlbkup\${db}_${dt}.bak' WITH FORMAT, NAME = '${db}_${dt}'" -ServerInstance "localhost" -QueryTimeout 300