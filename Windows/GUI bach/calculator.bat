@echo off
cls
color 1b
mode con: cols=50 lines=10
title Calculat your Equation ?
:start
set /p MATH=Enter your Equation:
set /a Result=%MATH%
echo.
echo =%Result%
if %Result%==5 start notepad.exe
pause >nul
cls
goto start