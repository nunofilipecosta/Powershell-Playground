$ComputerName = Read-Host "Enter Computer Name"

Write-Host $ComputerName
Get-WmiObject -Class Win32_ComputerSystem -Property Name

Get-Command | Select-Object Name, Noun -Last 5 | Format-Table -AutoSize
Get-Command | Select-Object Noun | Sort-Object Noun -Unique | measure
Get-Command | Select-Object Noun | Sort-Object Noun | ? like "*user*"
Get-Command | Select-Object Noun | Sort-Object Noun | Where-Object -Property Noun -EQ "*user*"