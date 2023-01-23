@echo off
:startup
cls
title Display DNS Data and Clean DNS Data
mode 70,35 && color 1f
ipconfig /displaydns
ping localhost -w 5 >nul
ipconfig /flushdns
ping localhost -n 3 >nul
goto :startup
:: Show in ram speed 
wmic memorychip get speed && echo MB
