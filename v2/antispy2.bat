@echo off

:loop

tasklist /fi "ImageName eq Chromium.Goguardian.GGWin" /fo csv 2>NUL | find /I "Chromium.Goguardian.GGWin">NUL
if "%ERRORLEVEL%"=="0" goto :kill
timeout 1
goto :loop

:kill
TASKKILL /F /IM "ClassroomWindows.exe"
goto :loop