@echo off

echo Downloading FortiClientOnlineSetup...
curl --location --output "C:\FortiClientVPNSetup7010.exe" "https://github.com/alessandroere/forticlient/raw/main/FortiClientVPNSetup_7.0.10.0538_x64.exe"

echo Installing FortiClientVPN...
C:\FortiClientVPNSetup7010.exe /quiet /norestart

echo Deleting FogClient setup file...
DEL /f C:\FortiClientVPNSetup7010.exe
