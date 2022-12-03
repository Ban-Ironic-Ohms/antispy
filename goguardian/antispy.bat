@echo off

setlocal

:loop

for /f "tokens=2" %%i in ('tasklist ^| find "guardian"') do taskkill /f /im "%%i"

timeout /t 1 >nul

goto loop