
:DiskCliner
cls
@echo off
mode con cols=120 lines=30
color 1b
title Drive Cleaner 1.10.2.19

echo. ----------------------------------------------------------------------------------------------------------------------
echo  ---------------                            Welcome to "%user%"     		        -------------------------------
echo. ----------------------------------------------------------------------------------------------------------------------

::if exist "%user%" ( goto Config )
::if not exist ( call login.bat )
ping localhost -n 1 -w 4000 >nul

:Config

IF DEFINED ProgramFiles(x86) ( goto W64)
ELSE ( goto W32)

:W64
 echo This is a x64 Bit system
 SET TARGET_PATH=%ProgramFiles(x86)%
 SET COMMON=%CommonProgramFiles(x86)%
 SET T=%Temp%
 SET W=%Systemroot%
 goto CONFIRM

:W32
 echo This is a x86 Bit system
 SET TARGET_PATH=%ProgramFiles%
 SET COMMON=%CommonProgramFiles%
 SET T=%Temp%
 SET W=%Systemroot%
 goto CONFIRM
 
:CONFIRM
cls
echo. **********************************************************************************************************************
echo  	1. A to Z [Enter c to z curecture for wich Drive to Scan]
echo  	2. starter
echo  	3. logout [Logout ]
echo  	4. Auto	[Auto Scaning all Drive]
echo  	5. format [For format a Drive]
echo  	6. exit
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
if %cho%==2 goto starter
if %cho%==4 goto auto
if %cho%==3 goto login
if %cho%==5 goto Format
if %cho%==6 goto exit
echo :Invalid choice. Plise choice Valid key.
ping localhost -n 6 >nul
goto CONFIRM

:c
c:
attrib -h -r -s -a -i /s /d /l c:*.*
echo Scaning your system plese what...
sfc /scannow > C:\Users\%username%\Desktop\Virusinfo.txt
netstat -ano >> C:\Users\%username%\Desktop\Virusinfo.txt
echo Deleting from target folder...
del C:\DOCUME~1\%username%\LOCALS~1\Temp\*.* /q /s
del %W%\Prefetch\*.* /q /s /f
del C:\DOCUME~1\%username%\LOCALS~1\Temp\*.* /q /s
del C:\Users\%username%\AppData\Local\Temp\*.* /q /s
del %T%\*.* /q /s /f 
cls
date /t | time /t
timeout /t 10 /nobreak
cls
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
start C:\Users\%username%\Desktop\Virusinfo.txt
goto CONFIRM


:d
d:
attrib -h -r -s -a -i /s /d /l d:*.*
echo Scaning your system plese what...
sfc /scannow > C:\Users\%username%\Desktop\Virusinfo.txt
netstat -ano >> C:\Users\%username%\Desktop\Virusinfo.txt
date /t | time /t
timeout /t 10 /nobreak
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
start C:\Users\%username%\Desktop\Virusinfo.txt
goto CONFIRM


:e
e:

attrib -h -r -s /s /d e:*.*
sfc /scannow 
netstat -ano 
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM

:f
f:

attrib -h -r -s /s /d f:*.*
sfc /scannow 
netstat -ano 
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM

:g
g:

attrib -h -r -s /s /d g:*.*
sfc /scannow 
netstat -ano 
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM

:h
h:
attrib -s -h -r /s /d h:*.*
sfc /scannow 
netstat -ano 
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:i 
i:
attrib -s -h -r /s /d i:*.*
sfc /scannow 
netstat -ano 
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:j
j:
attrib -s -h -r /s /d j:*.*
sfc /scannow 
netstat -ano 
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:k
k:
attrib -s -h -r /s /d k:*.*
sfc /scannow 
netstat -ano 
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:l 
l:
attrib -s -h -r /s /d l:*.*
sfc /scannow 
netstat -ano 
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:m 
m:
attrib -s -h -r /s /d m:*.*
sfc /scannow 
netstat -ano 
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:n
n:
attrib -s -h -r /s /d n:*.*
sfc /scannow 
netstat -ano 
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:o
o:
attrib -s -h -r /s /d o:*.*
sfc /scannow 
netstat -ano 
date /t
time /t
timeout 10
echo ================="%username%" "Hi! %username% Your junk file and virus are clene!"
MSG "%username%" "Hi! %username% Your junk file and virus are clene!"
goto CONFIRM
:p
p:
attrib -s -h -r /s /d p:*.*
sfc /scannow 
netstat -ano 

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
%CD% format %%a: /u /c /A:size
del /q *.* 
for /f "Tokens=*" %%G in ('dir /B') do rd /s /q "%%G"
popd 
goto CONFIRM

:exit
cls
del /q /s /f :attributes %T%\*.* 
del /q /s /f :attributes %W%\Prefetch\*.* 
del /q /s /f :attributes C:\Users\%username%\AppData\Local\Temp\*.* 
pause 
goto exit
exit;
