
@echo off
cls
color 1f
mode con:cols=120 lines=30
title Starter...
echo. ----------------------------------------------------------------------------------------------------------------------
echo  ---------------                            Welcome to "%user%"     		        -------------------------------
echo. ----------------------------------------------------------------------------------------------------------------------
::if  "%user%" exist ( goto command )
::if not exist ( call login.bat )
ping 1.1.1.1. -n 1 -w 4000 >nul
ping localhost -n 3 >nul
:command
:: this is a LogOut Form
echo. **********************************************************************************************************************
echo  *************** If find all Programe Command Type help and View all Command.******************************************
echo  **********************************************************************************************************************
echo.
set /p cho=Enter your command: 
if %cho%==help goto help
if %cho%==Help goto help
if %cho%==logout call login.bat
if %cho%==ipchanger goto ipchanger
if %cho%==diskcliner goto DiskCliner 
echo     Invalid Choice. Plise Choice Valid Key.
goto command
:help
cls
echo  ====================================**************************************************************==================
echo  ========================	  Command List:  help,logout,ipchanger,diskcliner.         ==========================
echo  =====================================**************************************************************=================
set /p cho=Enter Command: 
if %cho%==help goto help
if %cho%==HELP goto help
if %cho%==logout call login.bat
if %cho%==ipchanger goto ipchanger
if %cho%==diskcliner goto DiskCliner 
echo     Invalid Choice. Plise Choice Valid Key. 
goto help

:login
call login.bat
goto help
:ipchanger
call ip-changer.bat
goto help
:DiskCliner
call DiskCliner.bat
goto help
:cliner

goto help
