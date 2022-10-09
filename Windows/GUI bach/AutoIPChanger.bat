cls
@echo off
mode con cols=80 lines=15 >nul
color 0a
title Auto IP Changer 1.0.0.10

if exist C:\ (goto A) if not exist C:\ (goto exit)
:A
ipconfig /all >> e:\ipall.txt. -t
ipconfig /release >> E:\iprelease.txt. -t
ipconfig /release6
timeout 10 /nobreak
goto B
:B
ipconfig /renew >> E:\iprenew.txt. -t
ipconfig /renew6
ipconfig /registerdns
goto A 


:exit
exit