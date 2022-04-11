@echo off

:loop

tasklist /fi "ImageName eq chrome.exe" /fo csv 2>NUL | find /I "chrome.exe">NUL
if "%ERRORLEVEL%"=="0" goto :kill
timeout 1
goto :loop

:kill
TASKKILL /F /IM "chrome.exe"
goto :loop