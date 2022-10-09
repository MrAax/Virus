@echo off
mod 120,900

:start
cls
echo.
echo.
echo 		01) Create (Create Password)
echo 		02) Check (Check Password)
echo 		99) Exit  (For Exit)
echo.
set /p PROGRAM= What do you want to do?: 
goto %PROGRAM%



:create
:1
cls
set /p PASSWORD= Create your password: 
echo %PASSWORD% >> Password.txt
pause
goto start


:Check
:2
cls
set /p PASSWORD1= What is your password?: 
for /f "Delims=" %%a in (Password.txt) do (
set text=%%a
)

if %PASSWORD1%==%text% goto correct
echo you are wrong!!!
pause
goto start

:correct
echo you are right!!!
pause
goto start

:Exit
:99
exit
