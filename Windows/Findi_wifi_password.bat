@ECHO OFF
REM BFCPEOPTIONSTART
REM BFCPEICONINDEX=0
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=1.0.0.0
REM BFCPEVERPRODUCT=Wifi-Password-Finder
REM BFCPEVERDESC=Product Description
REM BFCPEVERCOMPANY=Your Company
REM BFCPEVERCOPYRIGHT=Copyright Info
REM BFCPEOPTIONEND
@ECHO ON
@echo off
color 0a
title Windows Wifi Password Finder 
mode 70,20
echo ====================================
echo    Welcome to Wifi Password Finder. 
echo ====================================
pause
goto B
:A
cls
echo ==========================
echo  Enter anuther wifi Name. 
echo ==========================
:B
netsh wlan show profile
set /p wifiname=Enter your wifi name: 

netsh wlan show profile %wifiname% key=clear >wifikey.txt

goto A

