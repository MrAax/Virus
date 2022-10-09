@echo off

:start
cls
echo. *********************************************************************************************
echo.  	***************          Welcome to the login screen     *********************
echo. *********************************************************************************************
echo 1.Login && echo 2.Create (create Username and Password)
set /p cho=Enter your command:
if %cho%==1 goto check
if %cho%==2 goto create
echo Envelid chous!
ping localhost -w 10000 >nul
goto :start
:create
md C:\ProgramData\Password
::echo Username: , Password: >> Password.text
move "Password.text" "C:\ProgramData\Password\" >nul
::start notepad password.text 
cls
set /p USERNAME= What do you want your Username:
set /p PASSWORD= What do you want your Password:
echo Username: %USERNAME% >> Password.text
echo Password: %PASSWORD% >> Password.text
move "Password.text" "C:\ProgramData\Password\" >nul
pause
goto check 

:check
cls
set /p usern1= What is your Username:
set /p password1= What is your Password: 
for /f "Delims=" %%a in (C:\ProgramData\Password\Password.text) do (
set TEXT=%%a
)
if %password1%==%TEXT% goto correct
color 0c 
echo Wrong Username or  Password !
pause
color 0F 
goto check2
:check2
cls
set /p usern1= What is your Username:
set /p password1= What is your Password: 
for /f "Delims=" %%a in (C:\ProgramData\Password\Password.text) do (
set TEXT=%%a
)
if %password1%==%TEXT% goto correct
color 0c
echo Wrong Username or Password !
echo You trye next time 
ping localhost -w 10000 >nul
color 0F
goto start
::exit
:correct
echo you are right
pause
goto starter
cls
:login
@echo off
cls
color 1b
mode con:cols=120 lines=30
title Login Fome

:start1
cls
:: this is a comment of .bat file
ping localhost -n 3 >nul
echo. **********************************************************************************************************************
echo  ***************                            Welcome to the login screen     		*******************************
echo. **********************************************************************************************************************
:start2
echo.
set /p user= Enter Username: 
set /p pass= Enter Password: 

if "%user%"=="www.mlucky.com" if "%pass%"=="2000" goto correct
echo Username:%user%, Password:%pass% > Password.txt
cls
echo %user% Username or Password Incorrect. Plise Enter Curect Username and Password...
timeout /t 5 /nobreak 
ping 192.168.0.1. -n 1 -w 4000 >nul goto :start1


goto start1
:correct
pause
goto starter

:starter
@echo off
cls
color 1f
mode con:cols=120 lines=30
title Starter...
echo. ----------------------------------------------------------------------------------------------------------------------
echo  ---------------                 Welcome to "%usern1%"     		        -------------------------------
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
if %cho%==logout goto start
if %cho%==ipchanger goto ipchanger
if %cho%==diskcliner goto DiskCliner 
echo     Invalid Choice. Plise Choice Valid Key.
pause
goto command
:help
cls
echo  ====================================**************************************************************==================
echo  				=======================	  Command Lists:=============================
echo 	1.  help
echo 	2.  logout
echo 	3.  ipchanger
echo 	4.  diskcliner 
echo  =====================================**************************************************************=================
set /p cho=Enter Command: 
if %cho%==1 goto help
if %cho%==2 goto start
if %cho%==3 goto ipchanger
if %cho%==4 goto DiskCliner 
echo     Invalid Choice. Plise Choice Valid Key. 
pause
goto help

:ipchanger
@echo off
cls
color 0a
mode con:cols=120 lines=30
title IP Changer
echo. ----------------------------------------------------------------------------------------------------------------------
echo  ---------------                            Welcome to "%usern1%"     		        -------------------------------
echo. ----------------------------------------------------------------------------------------------------------------------

::if exist "%user%" ( goto start ) ::if not exist ( call login.bat )
ping 1.1.1.1. -n 1 -w 4000 >nul
ping localhost -n 3 >nul

:IP1

netsh interface ipv4 set address name="Local Area Connection" static 192.168.1.121 255.255.255.0 192.168.1.1
netsh interface ipv4 set dns name="Local Area Connection" static 8.8.8.8

timeout 5
GOTO IP2
:IP2
netsh interface ipv4 set address name="Local Area Connection" static 192.168.1.122 255.255.255.0 192.168.1.1
netsh interface ipv4 set dns name="Local Area Connection" static 8.8.8.8
timeout 5
goto IP3
:IP3
netsh interface ipv4 set address name="Local Area Connection" static 192.168.1.123 255.255.255.0 192.168.2.1
netsh interface ipv4 set dns name="Local Area Connection" static 8.8.8.8
timeout 5
goto IP4
:IP4
:: this funtion use to menuyale chang ip 

:DiskCliner
cls
@echo off
mode con cols=120 lines=30
color 1b
title Drive Cleaner 1.10.2.19

echo. ----------------------------------------------------------------------------------------------------------------------
echo  ---------------                            Welcome to "%usern1%"     		        -------------------------------
echo. ----------------------------------------------------------------------------------------------------------------------

::if exist "%user%" ( goto Config )
::if not exist ( call login.bat )
ping 1.1.1.1. -n 1 -w 4000 >nul
ping localhost -n 3 >nul

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
echo. ----------------------------------------------------------------------------------------------------------------------
echo  ---------------                            Welcome to "%usern1%"     		        -------------------------------
echo. ----------------------------------------------------------------------------------------------------------------------

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
if %cho%==3 goto start
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
del %T%\*.* /q /s /f
del %W%\Prefetch\*.* /q /s /f
del C:\Users\%username%\AppData\Local\Temp\*.* /q /s /f
exit;





