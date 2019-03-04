$enc = [System.Text.Encoding]::GetEncoding('ISO-8859-1')
$utf8Bytes = [System.Text.Encoding]::UTF8.GetBytes($args)

$notificationPayload = @{ 
    text = $enc.GetString($utf8Bytes);
    username = "Unyo Bot"; 
    icon_url = "https://dl.dropboxusercontent.com/u/1518975/metro-powershell-logo.png"
}

Invoke-RestMethod -Uri "***" -Method Post -Body (ConvertTo-Json $notificationPayload)
