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
set IP="192.168.1.1"
set Mask="255.255.255.0"
set GW="192.168.1.254"
set DNS="8.8.8.8"


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
set /P IP= IP : 
set /P Mask= Mask : 
set /P GW= Gateway : 
set /P DNS= DNS : 
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
