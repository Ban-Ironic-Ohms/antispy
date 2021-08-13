@echo off

:loop

tasklist /fi "ImageName eq ClassroomWindows.exe" /fo csv 2>NUL | find /I "classroomwindows.exe">NUL
if "%ERRORLEVEL%"=="0" goto :kill
timeout 1
goto :loop

:kill
TASKKILL /F /IM "ClassroomWindows.exe"
goto :loop
