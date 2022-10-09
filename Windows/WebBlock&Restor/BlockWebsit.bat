@echo off
:a
title WebBloker Vr. %random%.%random%
color 0a
mode 70,10
set /p websites=Enter Web Address : 

:: Block any website
:: Its work only Administretor mode!
cd "C:\Windows\System32\drivers\etc"
echo 127.0.0.1 %websites% >> "hosts"
::echo 127.0.0.1 facebook.com >> "hosts"
::echo 127.0.0.1 m.facebook.com >> "hosts"
echo If you Block more then websites.
pause
goto a 