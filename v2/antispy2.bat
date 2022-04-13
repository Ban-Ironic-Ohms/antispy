@echo off

:loop

tasklist /fi "ImageName eq Chromium.Goguardian.GGWindowsHost.exe" /fo csv 2>NUL | find /I "Chromium.Goguardian.GGWindowsHost.exe">NUL
if "%ERRORLEVEL%"=="0" goto :kill
timeout 1
goto :loop

:kill
TASKKILL /F /IM "Chromium.Goguardian.GGWindowsHost.exe"
goto :loop