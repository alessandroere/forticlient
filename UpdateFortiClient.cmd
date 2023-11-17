@echo off

echo Downloading FortiClientOnlineSetup...
curl --location --output "C:\FortiClientVPNSetup7010.exe" "https://github.com/alessandroere/forticlient/raw/main/FortiClientVPNSetup_7.0.10.0538_x64.exe"

echo Installing FortiClientVPN...
C:\FortiClientVPNSetup7010.exe /quiet /norestart

REM timeout /t 60 /nobreak

echo Deleting FogClient setup file...
DEL /f C:\FortiClientVPNSetup7010.exe

set /p DUMMY=All done. Please reboot to complete installation as soon as possible...