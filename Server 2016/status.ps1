#rip kerberos | smb and dns

Get-Service "krbtjt"
Get-Service "DnsServer"
Get-Service "Dnscache"
Get-WindowsOptionalFeature -Online -FeatureName SMB1Protocol
Get-SmbServerConfiguration | Select EnableSMB2Protocol


Get-Service | Where-Object {$_.Status -eq "Running"} > running.txt

net share > shares.txt