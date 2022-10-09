@echo off
:: This funtion run all setup file without admin right or admin password!
set /p setup=Enter your setup name 'With Extention' : 
set __COMPAT_LAYER=RunAsInvoker
start %setup%
pause
