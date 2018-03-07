$ComputerName = Read-Host "Enter Computer Name"

Write-Host $ComputerName
Get-WmiObject -Class Win32_ComputerSystem -Property Name

Get-Command | Select-Object Name, Noun -Last 5 | Format-Table -AutoSize
Get-Command | Select-Object Noun | Sort-Object Noun -Unique | measure
Get-Command | Select-Object Noun | Sort-Object Noun | ? Noun -Like "*user*"
Get-Command | Select-Object Noun | Sort-Object Noun | Where-Object -Property Noun -EQ "*user*"
Get-Help Get-Command -ShowWindow
Show-Command Get-Command

Get-ADUser -Filter * -Properties * | Select-Object -Last 1 | Get-Member | measure

