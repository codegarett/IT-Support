# Get-System-Info.ps1
# Gathers basic system information and outputs it to a log file

$logPath = "$env:USERPROFILE\\Desktop\\SystemInfoReport.txt"
$datetime = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

Write-Host "Generating system information report..." -ForegroundColor Cyan
Add-Content $logPath "System Information Report - $datetime"
Add-Content $logPath "----------------------------------------"

# OS Info
Add-Content $logPath "`n[Operating System]"
Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version, OSArchitecture | Format-List | Out-String | Add-Content $logPath

# CPU Info
Add-Content $logPath "`n[Processor]"
Get-CimInstance Win32_Processor | Select-Object Name, NumberOfCores, NumberOfLogicalProcessors | Format-List | Out-String | Add-Content $logPath

# RAM Info
Add-Content $logPath "`n[Memory (RAM)]"
Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum | ForEach-Object {
    $ramGB = [math]::Round($_.Sum / 1GB, 2)
    Add-Content $logPath "Total Installed RAM: $ramGB GB"
}

# Disk Info
Add-Content $logPath "`n[Drives]"
Get-PSDrive -PSProvider 'FileSystem' | ForEach-Object {
    Add-Content $logPath "$($_.Name): Used = $([math]::Round(($_.Used/1GB), 2)) GB, Free = $([math]::Round(($_.Free/1GB), 2)) GB"
}

# IP Address
Add-Content $logPath "`n[IP Address]"
(Get-NetIPAddress | Where-Object { $_.AddressFamily -eq "IPv4" -and $_.PrefixOrigin -ne "WellKnown" }).IPAddress |
    ForEach-Object { Add-Content $logPath "IP Address: $_" }

Write-Host "System info saved to $logPath" -ForegroundColor Green
