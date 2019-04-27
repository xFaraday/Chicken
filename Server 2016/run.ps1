Set-Service -Name "DnsServer" -StartupType Automatic
Set-Service -Name "DnsServer" -Status Running

Set-Service -Name "Dnscache" -StartupType Automatic
Set-Service -Name "Dnscache" -Status Running

Start-Service -Name "DnsServer"

Start-Service -Name "Dnscache"

cmd.exe /c 'sc start DnsServer'
cmd.exe /c 'sc config DnsServer start= auto'

cmd.exe /c 'sc start Dnscache'
cmd.exe /c 'sc config Dnscache start= auto'

cmd.exe /c 'net start DnsServer'

net start DnsServer

cmd.exe /c 'net start Dnscache'

net start Dnscache

#smb
Set-SmbServerConfiguration -EnableSMB2Protocol $true

