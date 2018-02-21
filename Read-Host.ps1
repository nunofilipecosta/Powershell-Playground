$ComputerName = Read-Host "Enter Computer Name"

Write-Host $ComputerName
Get-WmiObject -Class Win32_ComputerSystem -Property Name
