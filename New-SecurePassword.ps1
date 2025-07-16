<#
.SYNOPSIS
    Generates secure random passwords.

.DESCRIPTION
    Creates one or more random passwords with complexity:
    - Uppercase letters
    - Lowercase letters
    - Numbers
    - Special characters

.PARAMETER Count
    Number of passwords to generate (default: 1)

.PARAMETER Length
    Length of each password (default: 12)

.EXAMPLE
    .\New-SecurePassword.ps1
    # Generates one 12-character password

.EXAMPLE
    .\New-SecurePassword.ps1 -Count 5 -Length 16
    # Generates 5 passwords, each 16 characters long

.NOTES
    Author: Cody Garrett
    Version: 1.0
#>

param(
    [int]$Count = 1,
    [int]$Length = 12
)

function New-SecurePassword($length) {
    $upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    $lower = 'abcdefghijklmnopqrstuvwxyz'
    $numbers = '0123456789'
    $special = '!@#$%^&*()-_=+[]{};:,.<>?'
    $allChars = $upper + $lower + $numbers + $special

    # Ensure at least one of each required type
    $password =  (Get-Random -InputObject ($upper.ToCharArray())) +
                 (Get-Random -InputObject ($lower.ToCharArray())) +
                 (Get-Random -InputObject ($numbers.ToCharArray())) +
                 (Get-Random -InputObject ($special.ToCharArray()))

    # Fill the rest
    for ($i = $password.Length; $i -lt $length; $i++) {
        $password += Get-Random -InputObject ($allChars.ToCharArray())
    }

    # Shuffle the password so it’s not predictable
    $password = ($password.ToCharArray() | Sort-Object {Get-Random}) -join ''
    return $password
}

for ($i = 1; $i -le $Count; $i++) {
    $pwd = New-SecurePassword -length $Length
    Write-Host "[$i] $pwd"
}