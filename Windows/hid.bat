@echo off
color 0a
:configration
echo================================
echo Wellcome to my software !
echo================================
set /p cho=Enter code : 
if %cho%==hid goto hid
if %cho%==unhid goto unhid
if %cho%==e goto exit
:hid
attrib +h +s +r f:\soft
attrib +h +s +r f:\Win10
goto configration
:unhid
attrib -h -s -r f:\soft
attrib -h -s -r f:\Win10
goto configration
:exit
exit