@echo off
:start
cls
echo -create (create password)
echo -check (check password)
echo.
:create
cls
set /p PASSWORD= what do you want your Password:
echo %PASSWORD% > test.txt
pause
goto check 

:check
cls
set /p password1=What is your password: 
for /f "Delims=" %%a in (test.txt) do (
set TEXT=%%a
)
if %password1%==%TEXT% goto correct
echo you are wrong password 
pause
goto start
:correct
echo you are right
pause
goto start