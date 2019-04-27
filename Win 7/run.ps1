Set-Service -Name "MySql" -StartupType Automatic
Set-Service -Name "MySql" -Status Running

cmd.exe /c 'sc start MySql'
cmd.exe /c 'sc config MySql start= auto'

net start MySql