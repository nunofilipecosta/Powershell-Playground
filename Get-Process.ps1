# Set-ExecutionPolicy -ExecutionPolicy Bypass 
# Get-ExecutionPolicy
Get-Process | Select-Object ProcessName | Out-File ./Process.txt