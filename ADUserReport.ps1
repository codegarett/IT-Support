<#
.SYNOPSIS
    Generates an Active Directory user report.

.DESCRIPTION
    Retrieves AD users and shows:
    - Display Name
    - Username (sAMAccountName)
    - Email
    - Department
    - Account Status (Enabled/Disabled, Locked, Password Expired)

.PARAMETER SearchBase
    Optional OU to search within (default: entire domain)

.PARAMETER ExportCSV
    Optional path to export results as a CSV file

.EXAMPLE
    .\Get-ADUserReport.ps1
    # Shows a quick report of all AD users

.EXAMPLE
    .\Get-ADUserReport.ps1 -SearchBase "OU=Sales,DC=YourDomain,DC=local"
    # Only queries users in the Sales OU

.EXAMPLE
    .\Get-ADUserReport.ps1 -ExportCSV "C:\Reports\ADUserReport.csv"
    # Exports the report to a CSV
#>

param(
    [string]$SearchBase,
    [string]$ExportCSV
)

# Ensure AD module is available
if (-not (Get-Module ActiveDirectory -ListAvailable)) {
    Write-Error "ActiveDirectory module not found. Run this on a domain-joined machine with RSAT installed."
    exit
}

Import-Module ActiveDirectory

Write-Host "Retrieving Active Directory user info..." -ForegroundColor Cyan

# Build query
if ($SearchBase) {
    $users = Get-ADUser -Filter * -SearchBase $SearchBase -Properties DisplayName,EmailAddress,Department,Enabled,LockedOut,PasswordExpired
} else {
    $users = Get-ADUser -Filter * -Properties DisplayName,EmailAddress,Department,Enabled,LockedOut,PasswordExpired
}

# Format results
$report = $users | Select-Object `
    @{Name="DisplayName";Expression={$_.DisplayName}},
    @{Name="Username";Expression={$_.SamAccountName}},
    @{Name="Email";Expression={$_.EmailAddress}},
    @{Name="Department";Expression={$_.Department}},
    @{Name="Enabled";Expression={$_.Enabled}},
    @{Name="LockedOut";Expression={$_.LockedOut}},
    @{Name="PasswordExpired";Expression={$_.PasswordExpired}}

# Output to console
$report | Format-Table -AutoSize

# Optional CSV export
if ($ExportCSV) {
    $report | Export-Csv -Path $ExportCSV -NoTypeInformation
    Write-Host "`nReport exported to $ExportCSV" -ForegroundColor Green
}