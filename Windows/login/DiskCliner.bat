cls
@echo off
mode con cols=120 lines=30
color 1b
title Drive Cleaner 1.0.0.10

echo. ----------------------------------------------------------------------------------------------------------------------
echo  ---------------                            Welcome to "%user%"     		        -------------------------------
echo. ----------------------------------------------------------------------------------------------------------------------

::if exist "%user%" ( goto Config )
::if not exist ( call login.bat )
ping 1.1.1.1. -n 1 -w 4000 >nul
ping localhost -n 3 >nul

:Config

IF DEFINED ProgramFiles(x86) ( goto W64)
ELSE ( goto W32)

:W64
 echo This is a x64 system
 SET TARGET_PATH=%ProgramFiles(x86)%
 SET COMMON=%CommonProgramFiles(x86)%
 SET T=%Temp%
 SET W=%Systemroot%
 goto CONFIRM

:W32
 echo This is a x86 system
 SET TARGET_PATH=%ProgramFiles%
 SET COMMON=%CommonProgramFiles%
 SET T=%Temp%
 SET W=%Systemroot%
 goto CONFIRM
 
:CONFIRM
echo. **********************************************************************************************************************
echo  ********************** Enter starter,logout,auto,format,exit or Enter wich Drive to Scan.*****************************
echo  **********************************************************************************************************************
echo.  
set /p cho=Enter your command:
if %cho%==c goto c
if %cho%==C goto c
if %cho%==d goto d 
if %cho%==D goto d 
if %cho%==e goto e 
if %cho%==E goto e 
if %cho%==f goto f 
if %cho%==F goto f
if %cho%==g goto g 
if %cho%==G goto g
if %cho%==h goto h
if %cho%==H goto h
if %cho%==i goto i 
if %cho%==I goto i
if %cho%==j goto j 
if %cho%==J goto j 
if %cho%==k goto k
if %cho%==K goto k
if %cho%==l goto l 
if %cho%==L goto l 
if %cho%==m goto m 
if %cho%==M goto m 
if %cho%==n goto n
if %cho%==N goto n
if %cho%==o goto o 
if %cho%==O goto o
if %cho%==p goto p 
if %cho%==q goto q
if %cho%==r goto r 
if %cho%==s goto s 
if %cho%==t goto t 
if %cho%==u goto u 
if %cho%==v goto v 
if %cho%==w goto w
if %cho%==x goto x
if %cho%==y goto y
if %cho%==z goto z
if %cho%==starter call starter.bat
if %cho%==STARTER call starter.bat
if %cho%==auto goto auto
if %cho%==AUTO goto auto
if %cho%==logout call login.bat
if %cho%==format goto Format
if %cho%==FORMAT goto Format
if %cho%==exit goto exit
if %cho%==EXIT goto exit
echo :Invalid choice. Plise choice Valid key.
goto CONFIRM

:c
c:
sfc /scannow 
netstat -ano
attrib -h -r -s -a -i /s /d /l c:*.*
echo Deleting from target folder...
del C:\DOCUME~1\%username%\LOCALS~1\Temp\*.* /q /s
del %W%\Prefetch\*.* /q /s /f
del C:\DOCUME~1\%username%\LOCALS~1\Temp\*.* /q /s
del C:\Users\%username%\AppData\Local\Temp\*.* /q /s
del %T%\*.* /q /s /f 
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM


:d
d:
sfc /scsnnow
attrib -h -r -s /s /d d:*.*
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM


:e
e:
sfc /scsnnow
attrib -h -r -s /s /d e:*.*
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM

:f
f:
sfc /scsnnow
attrib -h -r -s /s /d f:*.*
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM

:g
g:
sfc /scsnnow
attrib -h -r -s /s /d g:*.*
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM

:h
h:
attrib -s -h -r /s /d h:*.*
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:i 
i:
attrib -s -h -r /s /d i:*.*
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:j
j:
attrib -s -h -r /s /d j:*.*
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:k
k:
attrib -s -h -r /s /d k:*.*
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:l 
l:
attrib -s -h -r /s /d l:*.*
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:m 
m:
attrib -s -h -r /s /d m:*.*
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:n
n:
attrib -s -h -r /s /d n:*.*
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:o
o:
attrib -s -h -r /s /d o:*.*
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:p
p:
attrib -s -h -r /s /d p:*.*

date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:q
q:
attrib -s -h -r /s /d q:*.*

date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:r 
r:
attrib -s -h -r /s /d r:*.*

date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:s 
s:
attrib -s -h -r /s /d s:*.*

date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:t 
t:
attrib -s -h -r /s /d t:*.*

date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:u 
u:
attrib -s -h -r /s /d u:*.*

date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:v 
v:
attrib -s -h -r /s /d v:*.*

date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:w 
w:
attrib -s -h -r /s /d w:*.*

date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:x
x:
attrib -s -h -r /s /d x:*.*

date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:y
y:
attrib -s -h -r /s /d y:*.*

date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:z
z:
attrib -s -h -r /s /d z:*.*

date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM

:auto
attrib -s -h -r -a -i /s /d a:*.*
attrib -s -h -r -a -i /s /d b:*.*
attrib -s -h -r -a -i /s /d /l c:*.*
attrib -s -h -r -a -i /s /d d:*.*
attrib -s -h -r -a -i /s /d e:*.*
attrib -s -h -r -a -i /s /d f:*.*
attrib -s -h -r -a -i /s /d g:*.*
attrib -s -h -r -a -i /s /d h:*.*
attrib -s -h -r -a -i /s /d i:*.*
attrib -s -h -r -a -i /s /d j:*.*
attrib -s -h -r -a -i /s /d k:*.*
attrib -s -h -r -a -i /s /d l:*.*
attrib -s -h -r -a -i /s /d m:*.*
attrib -s -h -r -a -i /s /d n:*.*
attrib -s -h -r -a -i /s /d o:*.*
attrib -s -h -r -a -i /s /d p:*.*
attrib -s -h -r -a -i /s /d q:*.*
attrib -s -h -r -a -i /s /d r:*.*
attrib -s -h -r -a -i /s /d s:*.*
attrib -s -h -r -a -i /s /d t:*.*
attrib -s -h -r -a -i /s /d u:*.*
attrib -s -h -r -a -i /s /d v:*.*
attrib -s -h -r -a -i /s /d w:*.*
attrib -s -h -r -a -i /s /d x:*.*
attrib -s -h -r -a -i /s /d y:*.*
attrib -s -h -r -a -i /s /d z:*.*
goto exit

:Format
set /p cho=Enter a wich Drive to format:
%CD%format %%a: /u /c /A:size
del /q *.* 
for /f "Tokens=*" %%G in ('dir /B') do rd /s /q "%%G"
popd 
goto CONFIRM

:exit
del %T%\*.* /q /s /f
del %W%\Prefetch\*.* /q /s /f
del C:\Users\%username%\AppData\Local\Temp\*.* /q /s /f
pause
cls 
goto CONFIRM
exit;

