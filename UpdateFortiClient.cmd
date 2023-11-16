@echo off

echo Downloading FortiClientOnlineSetup...
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -Command "Invoke-WebRequest https://github.com/alessandroere/forticlient/raw/main/FortiClientVPNSetup_7.0.10.0538_x64.exe -OutFile C:\FortiClientVPNSetup_7.0.10.0538_x64.exe"

echo Installing FortiClientVPN...
C:\FortiClientVPNSetup_7.0.10.0538_x64.exe /quiet /norestart /uninstallfamily

echo Deleting FogClient setup file...
DEL /f C:\FortiClientVPNSetup_7.0.10.0538_x64.exe
