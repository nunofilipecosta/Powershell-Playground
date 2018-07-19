$ComputerName = Read-Host "Enter Computer Name"

Write-Host $ComputerName
Get-WmiObject -Class Win32_ComputerSystem -Property Name

Get-Command | Select-Object Name, Noun -Last 5 | Format-Table -AutoSize
Get-Command | Select-Object Noun | Sort-Object Noun -Unique | Measure-Command
Get-Command | Select-Object Noun | Sort-Object Noun | Where-Object -Property Noun -Like "*user*"
Get-Command | Select-Object Noun | Sort-Object Noun | Where-Object -Property Noun -EQ "*user*"
Get-Help Get-Command -ShowWindow
Show-Command Get-Command

Get-ADUser -Filter * -Properties * | Select-Object -Last 1 | Get-Member | Measure-Command

powershell -executionpolicy remotesigned -command build.ps1



Add-Type -AssemblyName System.Speech
$talk = New-Object System.Speech.Synthesis.SpeechSynthesizer

$talk.Speak("Hi Pluralsight Fans")

$talk | Get-Member

$talk.GetInstalledVoices() | Format-Table -AutoSize

$talk.GetIntalledVoice().VoiceInfo | Get-Member

Get-Service s* | Where-Object {$_.status -eq "running"} | Sort-Object -Property DisplayName | Select-Object -Property DisplayName

# Modules
$env:PSModulePath

Get-Module
Get-Module -ListAvailable

Import-Module Microsoft.Powershell.Utility
Get-Module
Remove-Module Microsoft.Powershell.Utility
Write-Host "Hello World"
Get-Module

Get-Command -Module <ModuleName>

Get-Service wuauserv -computer (get-content c:\work\computers.txt
