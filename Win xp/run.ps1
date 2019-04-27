Set-Service -Name "OracleServiceORCL" -StartupType Automatic
Set-Service -Name "OracleServiceORCL" -Status Running

cmd.exe /c 'sc start OracleServiceORCL'
cmd.exe /c 'sc config OracleServiceORCL start= auto'

net start OracleServiceORCL

Set-Service -Name "OracleOraDb11g_home1TNSListener" -StartupType Automatic
Set-Service -Name "OracleOraDb11g_home1TNSListener" -Status Running

cmd.exe /c 'sc start OracleOraDb11g_home1TNSListener'
cmd.exe /c 'sc config OracleOraDb11g_home1TNSListener start= auto'

net start OracleOraDb11g_home1TNSListener