cls
:login
@echo off
cls
color 1b
mode con:cols=120 lines=30
title Login Fome

:start1
:: this is a commants of .bat file
ping localhost -n 3 >nul
echo. **********************************************************************************************************************
echo  ***************                            Welcome to the login screen     		*******************************
echo. **********************************************************************************************************************
:start2
echo.
set /p user= Enter Username: 
set /p pass= Enter Password: 
echo Username:%user%, Password:%pass% >> test.txt
if "%user%"=="www.com" if "%pass%"=="2000" goto correct
cls
echo This %user% Username or Password Incorrect. Plise Enter Curect Username and Password...
ping 192.168.0.1. -n 1 -w 4000 >nul goto :start1


:check
::set /p password1=What is your password: 
::for /f "Delims=" %%a in (test.txt) do (
::	set TXT=%%a
::)
::if %password1%==%TXT% goto correct

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
if %cho%==logout goto login
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
if %cho%==logout goto login
if %cho%==ipchanger goto ipchanger
if %cho%==diskcliner goto DiskCliner 
echo     Invalid Choice. Plise Choice Valid Key. 
goto help

:ipchanger
@echo off
cls
color 0a
mode con:cols=120 lines=30
title IP Changer
echo. ----------------------------------------------------------------------------------------------------------------------
echo  ---------------                            Welcome to "%user%"     		        -------------------------------
echo. ----------------------------------------------------------------------------------------------------------------------

::if exist "%user%" ( goto start )
::if not exist ( call login.bat )
ping 1.1.1.1. -n 1 -w 4000 >nul
ping localhost -n 3 >nul
:start


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
@echo off
color 1f
mode con: cols=66
title IP changer

REM **********************************************************************************************
REM ***                                         Force Value                                    ***
REM ****************                                                              ****************
REM *** Replace Value IP, Mask, GW, DNS below (leave quotes "")and remove REM before all lines ***

REM set adaptername="Ethernet"
REM set IP="192.168.1.1"
REM set Mask="255.255.255.0"
REM set GW="192.168.1.254"
REM set DNS="8.8.8.8"
REM goto :SETCFG


echo.
echo ******************************************************************
echo ***            WiSSc - Win IP Switcher Script v0.2             ***
echo ******************************************************************
echo.
set /P NEEDHELP= Need Help ? - Y (Yes) / N (No) : 
if /i "%NEEDHELP%"=="Y" start https://www.rexneb.ovh/index.php/2018/05/25/wissc-manual/
if /i "%NEEDHELP%"=="N" goto :STARTS

:STARTS
cls
echo.
echo ******************************************************************
echo ***                WiSSc - Win IP Switcher Script              ***
echo ***                            Step 1                          ***
echo *** Do you want to show the current network adapter settings ? ***
echo ******************************************************************
echo.
set /P IPCFGRB= IpConfig ? - Y (Yes) / N (No) : 
if /i "%IPCFGRB%"=="Y" goto :IPCFGRUNBEFORE
if /i "%IPCFGRB%"=="N" goto :STARTCFG

:IPCFGRUNBEFORE
netsh interface ip show config

:STARTCFG
echo.
echo ******************************************************************
echo ***                WiSSc - Win IP Switcher Script              ***
echo ***                            Step 2                          ***
echo *** Type the network adapter name you want to change settings  ***
echo ******************************************************************
echo.
set /P adaptername= Adapter Name : 
echo.
echo ******************************************************************
echo ***                WiSSc - Win IP Switcher Script              ***
echo ***                            Step 3                          ***
echo ***      Do you want to get automatic settings with DHCP ?     ***
echo ******************************************************************
echo.
set /P DHCP= DHCP ? - Y (Yes) / N (No) : 
if /i "%DHCP%"=="Y" goto :DHCP
cls
echo.
echo ******************************************************************
echo ***                WiSSc - Win IP Switcher Script              ***
echo ***                            Step 4                          ***
echo ***         Set IP, Mask, Gateway and DNS address (IPV4)       ***
echo ******************************************************************
echo.
set /P IP= 192.168.1.1 
set /P Mask= 255.255.255.0 
set /P GW= 192.168.1.254 
set /P DNS= 8.8.8.8 

:SETCFG
netsh interface ip set address name="%adaptername%" static %IP% %Mask% %GW%
netsh interface ipv4 add dnsserver "%adaptername%" address=%DNS% index=1
set /P IPCFG= IpConfig ? - Y (Yes) / N (No) : 
if /i "%IPCFG%"=="Y" goto :IPCFGRUN
if /i "%IPCFG%"=="N" goto :THANKS

:DHCP
netsh interface ip set address "%adaptername%" dhcp
netsh interface ip set dns name="%adaptername%" dhcp
set /P IPCFG= IpConfig ? - Y (Yes) / N (No) : 
if /i "%IPCFG%"=="Y" goto :IPCFGRUN
if /i "%IPCFG%"=="N" goto :THANKS
goto :THANKS

:SETFORCECFG
netsh interface ip set address name="%adaptername%" static %IP% %Mask% %GW%
netsh interface ipv4 add dnsserver "%adaptername%" address=%DNS% index=1

:IPCFGRUN
cls
echo.
echo ******************************************************************
echo ***                WiSSc - Win IP Switcher Script              ***
echo ***                            Step 5                          ***
echo *** Do you want to show the current network adapter settings ? ***
echo ******************************************************************
netsh interface ip show addresses "%adaptername%"
echo.
echo ******************************************************************
echo ***                WiSSc - Win IP Switcher Script              ***
echo ***                            Step 5b                         ***
echo ***             Perhaps settings are not yet loaded...         ***
echo ***                ...Do you want to refresh ?                 ***
echo ******************************************************************
echo.
set /P REFRESH= Refresh IpConfig ? - Y (Yes) / N (No) : 
if /i "%REFRESH%"=="Y" goto :IPCFGRUN
if /i "%REFRESH%"=="N" goto :THANKS

:THANKS
REM *****************************************************************
REM *** You can remove lines 116 to 126 to not show donate message ***
REM *****************************************************************
cls
echo.
echo ******************************************************************
echo ***              Helpful ? Consider Donating ?                 ***
set  /P DON= ***                    Y (Yes) / N (No) :                      *********************************************************************
echo.
if /i "%DON%"=="Y" start https://www.rexneb.ovh/index.php/about/
if /i "%IPCFG%"=="N" goto :END

:END
REM ******************************************************************
REM *** You can remove lines 129 to 138 to not show ending message ***
REM ******************************************************************
cls
echo.
echo           ****************************************
echo           *** WiSSc by ReXNeB (www.rexneb.ovh) ***
echo           ****************************************
echo.
pause
goto starter

:DiskCliner
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
if %cho%==starter goto starter
if %cho%==STARTER goto starter
if %cho%==auto goto auto
if %cho%==AUTO goto auto
if %cho%==logout goto login
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





