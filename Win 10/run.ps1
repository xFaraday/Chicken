Set-Service -Name "ftpsvc" -StartupType Automatic
Set-Service -Name "ftpsvc" -Status Running

Set-Service -Name "Msftpsvc" -StartupType Automatic
Set-Service -Name "Msftpsvc" -Status Running

Start-Service -Name "ftpsvc"

Start-Service -Name "Msftpsvc"

cmd.exe /c 'sc start ftpsvc'
cmd.exe /c 'sc config ftpsvc start= auto'

cmd.exe /c 'sc start Msftpsvc'
cmd.exe /c 'sc config Msftpsvc start= auto'

net start ftpsvc

net start Msftpsvc 

Dism /online /Enable-Feature /FeatureName:TFTP /All
