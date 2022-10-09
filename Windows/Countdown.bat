@echo off
title Countdown Timer
mode 60,15
echo Enter time in Seconds 
set /p time=Enter you time : 
::pause
:loop
set /a time=%time%-1
if %time%==0 goto timesup
echo %time%
ping localhost -n 2 > nul
goto loop
:timesup
echo Your Time is Up!
echo Press any key to exit!
pause > nul
exit