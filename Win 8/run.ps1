Set-Service -Name "TlntSvr" -StartupType Automatic
Set-Service -Name "TlntSvr" -Status Running

cmd.exe /c 'sc start TlntSvr'
cmd.exe /c 'sc config TlntSvr start= auto'

net start TlntSvr

Set-Service -Name "W3SVC" -StartupType Automatic
Set-Service -Name "W3SVC" -Status Running

cmd.exe /c 'sc start W3SVC'
cmd.exe /c 'sc config W3SVC start= auto'

net start W3SVC

Dism /online /Enable-Feature /FeatureName:TelnetServer /All
Dism /online /Enable-Feature /FeatureName:TelnetClient /All

iisreset /start
