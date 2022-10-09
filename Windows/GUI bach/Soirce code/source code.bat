@echo off
title System Utility (By : Zeeshan Dhillon)
cls
mode con:cols=120 lines=30
color 6f
if "%b2eprogramfilename%"==""  (

	echo To use this application you need to convert this file into an exe. See installation file in downloaded archive
	pause
	goto :eof

)
set load=
set/a loadnum=0
:Loading
set load=%load%��
cls
echo.
echo     Loading... Please Wait...
echo     ________________________________________
echo     %load%
echo.
ping localhost -n 0 >nul
set/a loadnum=%loadnum% +1
if %loadnum%==20 goto Done
goto Loading
:Done
echo.
goto aio
:aio
if exist "C:\Windows\System32\menumode.exe" goto check
goto :menucreate
:menucreate
cd >nul
xcopy /c /q menumode.exe "C:\Windows\System32"
goto check
:check
cls
if exist C:\windows\System32\menumode.exe goto proceed
if not exist C:\windows\System32\menumode.exe goto menusel
:menusel
cls
echo.
echo                         Sorry for the interruption
echo.
echo  Some features of this utility are not supported by your Computer.
echo  Please move menumode.exe from downloaded package to C:\Windows\System32.
echo.
choice  /C "yn" /M " Do you want to download that file?: "
if ERRORLEVEL 2 goto check
if ERRORLEVEL 1 goto downmenu
:downmenu
cls
echo this section is under maintanace
goto maintain



cd %~dp0
set url="http://goo.gl/Tpk7fR"
set location="C:\Windows\System32"
%extd% /download %url% %location%
if %result% EQU 0  (
	%extd% /messagebox Error "Download failed" 16
) ELSE (
	%extd% /messagebox Done "Download succeeded"
)


:maintain
::start http://goo.gl/Tpk7fR 
:proceed
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "welcome" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto welcome
:welcome
echo.
echo.
echo      !!!!          !!!!  !!!!!!!!!!!  !!!!           !!!!       !!!!      !!!!!        !!!!!   !!!!!!!!!!!
echo      !!!!          !!!!  !!!!         !!!!         !!!   !!   !!!  !!!    !!!! !!    !! !!!!   !!!!
echo      !!!!    !!    !!!!  !!!!         !!!!        !!         !!      !!   !!!!  !!  !!  !!!!   !!!!
echo      !!!!   !!!!   !!!!  !!!!!!!!     !!!!       !!         !!        !!  !!!!   !!!!   !!!!   !!!!!!!!
echo      !!!!  !!  !!  !!!!  !!!!         !!!!        !!         !!      !!   !!!!    !!    !!!!   !!!!
echo      !!!! !!    !! !!!!  !!!!         !!!!         !!!   !!   !!!  !!!    !!!!          !!!!   !!!!
echo      !!!!!        !!!!!  !!!!!!!!!!!  !!!!!!!!!!!    !!!!       !!!!      !!!!          !!!!   !!!!!!!!!!!
echo.
echo      System utility By Zeeshan Dhillon
timeout 2 >nul
goto vercheck
:vercheck
if exist C:\Windows\System32\version1.6 goto maino
if not exist C:\Windows\System32\version1.6 goto cverinfo
:cverinfo
md C:\Windows\System32\version1.6
for /l %%n in (1, 1 ,1) do echo x=msgbox("1) 'More Tools' menu added. 2) Zip or unzip a file with simple zipper. 3) Several bugs fixed" ,0, "What's new in this version 1.6") >> verinfo.vbs
start verinfo.vbs
timeout 0 >nul
del verinfo.vbs
goto maino
:main
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "home page" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto maino
:maino
cls
echo.
echo                     =*=*=*=*=*=*=*==*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
echo                    !                     All in One-PC Tools                           !
echo                     =*=*=*=*=*=*=*==*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
echo.
echo Please select your Choice. Use mouse or Keyboard (up/down) keys to navigate to different menus.
echo.
menumode 87f6 "                         System Cleanup" "                         System Power Management" "                         Website Tools" "                         Create recovery image (windows 8/8.1)" "                         Repair USB/SD Card" "                         System Information" "                         Calculator" "                         Clock" "                         Text to Speech" "                         Unit Converter" "                         Auto Login" "                         Get Password protected Folder" "                         Zip/Unzip files"  "                         More Tools" "                         About Author" "                         Help" "                         exit" 
if %errorlevel%==1 goto cleanupvbs
if %errorlevel%==2 goto powervbs
if %errorlevel%==3 goto websitevbs
if %errorlevel%==4 goto recoveryvbs
if %errorlevel%==5 goto USBvbs
if %errorlevel%==6 goto infovbs
if %errorlevel%==7 goto Calculatorvbs
if %errorlevel%==8 goto clockvbs
if %errorlevel%==9 goto txtspeech
if %errorlevel%==10 goto unitconvbs
if %errorlevel%==11 goto autologinvbs
if %errorlevel%==13 goto zipunzipvbs
if %errorlevel%==14 goto morevbs
if %errorlevel%==15 goto mevbs
if %errorlevel%==16 goto helpervbs
if %errorlevel%==12 goto profoldervbs
if %errorlevel%==17 goto exitvbs
goto errormain
:errormain
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Invalid choice. chose from 1 to 14" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto finalpg
:cleanupvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "system cleanup" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto cleanup
:cleanup
cls
echo.
echo ==============================================================================
echo                             System Cleanup Utility
echo ==============================================================================
echo.
echo Select a tool
echo =============
echo.
menumode 87f6 "Delete internet cookies" "Delete Temporary Internet Files" "Disk Cleanup" "Disk Defragment" "Main Menu"
echo.
if %errorlevel%==1 goto cleanup1vbs
if %errorlevel%==2 goto cleanup2vbs
if %errorlevel%==3 goto cleanup3vbs
if %errorlevel%==4 goto cleanup4vbs
if %errorlevel%==5 goto main
goto errorclean
:errorclean
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "invalid choice. chose from 1 to 5" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto cleanup
:cleanup1vbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Deleting internet cookies" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto cleanup1
:cleanup1
cls
echo.
echo --------------------------------------------------------------------------------
echo Delete Internet Cookies
echo --------------------------------------------------------------------------------
echo.
echo Deleting Cookies...
ping localhost -n 3 >nul
del /f /q "%userprofile%\Cookies\*.*"
cls
echo --------------------------------------------------------------------------------
echo Delete Internet Cookies
echo --------------------------------------------------------------------------------
echo.
echo Cookies deleted.
echo.
echo Press any key to return to the previous menu. . .
pause >nul
goto cleanup
:cleanup2vbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Deleting temporary files" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto cleanup2
:cleanup2
cls
echo.
echo --------------------------------------------------------------------------------
echo Delete Temporary Internet Files
echo --------------------------------------------------------------------------------
echo.
echo Deleting Temporary Files...
ping localhost -n 3 >nul
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
cls
echo --------------------------------------------------------------------------------
echo Delete Temporary Internet Files
echo --------------------------------------------------------------------------------
echo.
echo Temporary Internet Files deleted.
echo.
echo Press any key to return to the Previous menu. . .
pause >nul
goto cleanup
:cleanup3vbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "disk cleanup started" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto cleanup3
:cleanup3
cls
echo.
echo --------------------------------------------------------------------------------
echo Disk Cleanup
echo --------------------------------------------------------------------------------
echo.
echo Running Disk Cleanup...
ping localhost -n 3 >nul
if exist "C:\WINDOWS\temp"del /f /q "C:WINDOWS\temp\*.*"
if exist "C:\WINDOWS\tmp" del /f /q "C:\WINDOWS\tmp\*.*"
if exist "C:\tmp" del /f /q "C:\tmp\*.*"
if exist "C:\temp" del /f /q "C:\temp\*.*"
if exist "%temp%" del /f /q "%temp%\*.*"
if exist "%tmp%" del /f /q "%tmp%\*.*"
if not exist "C:\WINDOWS\Users\*.*" goto skip
if exist "C:\WINDOWS\Users\*.zip" del "C:\WINDOWS\Users\*.zip" /f /q
if exist "C:\WINDOWS\Users\*.exe" del "C:\WINDOWS\Users\*.exe" /f /q
if exist "C:\WINDOWS\Users\*.gif" del "C:\WINDOWS\Users\*.gif" /f /q
if exist "C:\WINDOWS\Users\*.jpg" del "C:\WINDOWS\Users\*.jpg" /f /q
if exist "C:\WINDOWS\Users\*.png" del "C:\WINDOWS\Users\*.png" /f /q
if exist "C:\WINDOWS\Users\*.bmp" del "C:\WINDOWS\Users\*.bmp" /f /q
if exist "C:\WINDOWS\Users\*.avi" del "C:\WINDOWS\Users\*.avi" /f /q
if exist "C:\WINDOWS\Users\*.mpg" del "C:\WINDOWS\Users\*.mpg" /f /q
if exist "C:\WINDOWS\Users\*.mpeg" del "C:\WINDOWS\Users\*.mpeg" /f /q
if exist "C:\WINDOWS\Users\*.ra" del "C:\WINDOWS\Users\*.ra" /f /q
if exist "C:\WINDOWS\Users\*.ram" del "C:\WINDOWS\Users\*.ram"/f /q
if exist "C:\WINDOWS\Users\*.mp3" del "C:\WINDOWS\Users\*.mp3" /f /q
if exist "C:\WINDOWS\Users\*.mov" del "C:\WINDOWS\Users\*.mov" /f /q
if exist "C:\WINDOWS\Users\*.qt" del "C:\WINDOWS\Users\*.qt" /f /q
if exist "C:\WINDOWS\Users\*.asf" del "C:\WINDOWS\Users\*.asf" /f /q
:skip
if not exist C:\WINDOWS\Users\Users\*.* goto skippy /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.zip del C:\WINDOWS\Users\Users\*.zip /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.exe del C:\WINDOWS\Users\Users\*.exe /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.gif del C:\WINDOWS\Users\Users\*.gif /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.jpg del C:\WINDOWS\Users\Users\*.jpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.png del C:\WINDOWS\Users\Users\*.png /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.bmp del C:\WINDOWS\Users\Users\*.bmp /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.avi del C:\WINDOWS\Users\Users\*.avi /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpg del C:\WINDOWS\Users\Users\*.mpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpeg del C:\WINDOWS\Users\Users\*.mpeg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ra del C:\WINDOWS\Users\Users\*.ra /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ram del C:\WINDOWS\Users\Users\*.ram /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mp3 del C:\WINDOWS\Users\Users\*.mp3 /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.asf del C:\WINDOWS\Users\Users\*.asf /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.qt del C:\WINDOWS\Users\Users\*.qt /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mov del C:\WINDOWS\Users\Users\*.mov /f /q
:skippy
if exist "C:\WINDOWS\ff*.tmp" del C:\WINDOWS\ff*.tmp /f /q
if exist C:\WINDOWS\ShellIconCache del /f /q "C:\WINDOWS\ShellI~1\*.*"
cls
echo --------------------------------------------------------------------------------
echo Disk Cleanup
echo --------------------------------------------------------------------------------
echo.
echo Disk Cleanup successful!
echo.
pause
goto cleanup
:cleanup4vbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "disk defragment started" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto cleanup4
:cleanup4
cls
echo.
echo --------------------------------------------------------------------------------
echo Disk Defragment
echo --------------------------------------------------------------------------------
echo.
echo Defragmenting hard disks...
ping localhost -n 3 >nul
defrag -c -v
cls
echo --------------------------------------------------------------------------------
echo Disk Defragment
echo --------------------------------------------------------------------------------
echo.
echo Disk Defrag successful!
echo.
pause
goto cleanup

:powervbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "System power management" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto power
:power
cls
echo.
echo.
echo =====================================================================
echo                        Power Management
echo =====================================================================
echo.
echo Please enter your choice.
echo.
echo.
menumode 87f6 "                        Shutdown Computer" "                        Restart Computer" "                        Log Off" "                        Hibernate the Local Computer" "                        Restart and go to Advanced Boot" "                        Schedule Shutdown (Shutdown after specific interval of time)" "                        Main Menu"
echo.
if %errorlevel%==1 goto power1
if %errorlevel%==2 goto power2
if %errorlevel%==3 goto power3
if %errorlevel%==4 goto power4
if %errorlevel%==5 goto power5
if %errorlevel%==6 goto power6vbs
if %errorlevel%==7 goto main
goto errorpower
:errorpower
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "invalid choice. chose from 1 to 7" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto power
:power1
shutdown /s
:power2
shutdown /r
:power3
shutdown /l /m
:power4
shutdown /h
:power5
shutdown /o
:power6vbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Schedule shutdown" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto power6
:power6


if "%b2eprogramfilename%"==""  (

	echo To see any results you need to convert this file into an exe
	pause
	goto :eof

)

%extd% /inputbox "" "Enter the number of minuts after which you want to shutdown your computer." ""

if "%result%"=="" (goto power) else (set A="%result%")


set /A B=%A%*60
if %A%==BACK goto power
if %A%==back goto power
goto schshutvbs
:schshutvbs
shutdown -s -t %B%
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "going to shutdown in %A% minuts" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto power


:websitevbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "website tools" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto website
:website
cls
echo.
echo.
echo.
echo ============================================================
echo                       Web Tools
echo ============================================================
echo.
echo Please enter the number of tool you want to use.
echo.
menumode 87f6 "                        Website Pinger" "                        Website Crasher" "                        Custom website Launcher" "                        Website Blocking" "                        Main Menu"       
if %errorlevel%==1 goto website1vbs
if %errorlevel%==2 goto website2vbs
if %errorlevel%==3 goto website3vbs
if %errorlevel%==4 goto website4vbs
if %errorlevel%==5 goto main
goto errorwebsite
:errorwebsite
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "invalid choice. chose from 1 to 5" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto website
:website1vbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "website pinger" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto website1
:website1
cls
echo.
echo.
echo -----------------------------------------------------------------
echo                         Website Pinger
echo -----------------------------------------------------------------
echo.
echo Enter the website you would like to ping OR type "back" to go Back.
set /p op=Your Choice :
if %op%==back goto website
if %op%==BACK goto website
goto pingingnow
:pingingnow
echo Processing Your request...
ping localhost>nul
echo -------------------------------------------------------------------------------------
echo If you do not clost this in 45 seconds you will go to **ENTER WEBSITE HERE**
echo -------------------------------------------------------------------------------------
ping localhost>nul
echo This is the IP=
ping %input%
echo.
echo Press any key to go to previous menu...
pause >nul
goto website
:website2vbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "website crasher" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto website2
:website2
cls
echo.
echo.
echo ----------------------------------------------------------------------
echo                            Website Crasher
echo ----------------------------------------------------------------------
echo.
echo Enter the website you would like to crash OR type "back to go to Previous menu.
echo.
set /p op= Enter your Website here:
if %op%==back goto website
echo Processing Your request
ping localhost>nul
echo To end Crashing press CTRL + C
ping localhost>nul
cls
echo ----------------------------------------------------------------------
echo Now Crashing Website...DO NOT CLOSE THIS BOX!! PRESS CRTL + C TO END!!
echo ----------------------------------------------------------------------
ping %op% -t -l 1000
:website3vbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Custom website launcher" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto website3
:website3
cls
echo.
echo ----------------------------------------------------------------------
echo                   Custom Website Launcher
echo ----------------------------------------------------------------------
echo.
echo Please type number of website you want to visit.
echo.
menumode 87f6 "            Google - Search Engine" "            Hotmail - Mail Server" "            Yahoo - Search Engine/Mail Server" "            Facebook - Social Networking" "            Myspace - Social Networking" "            CNN - News" "            Weather - Weather" "            WikiHow - A How-To Website" "            Instructables - A How-To Website" "            YouTube - Online Videos" "            Answers - Online Encyclopedia" "            Wikipedia - Online Encyclopedia" "            Main menu"
if %errorlevel%==1 start www.google.com
if %errorlevel%==2 start www.hotmail.com
if %errorlevel%==3 start www.yahoo.com
if %errorlevel%==4 start www.facebook.com
if %errorlevel%==5 start www.myspace.com
if %errorlevel%==6 start www.cnn.com
if %errorlevel%==7 start www.weather.com
if %errorlevel%==8 start www.wikihow.com
if %errorlevel%==9 start www.instructable.com
if %errorlevel%==10 start www.youtube.com
if %errorlevel%==11 start www.answers.com
if %errorlevel%==12 start www.wikipedia.com
if %errorlevel%==13 goto website
goto errorwebsite3
:errorwebsite3
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "invalid choice. chose from 1 to 13" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto website3
@echo off
:website4vbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "website blocking" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto website4
:website4
cls
echo.
echo.
echo =================================
echo       Website blocking
echo =================================
echo.
echo Select your choice.
echo.
menumode 87f6 "            Block a website" "            Unblock a website" "            Main menu"
if %errorlevel%==1 goto block
if %errorlevel%==2 goto unblock
if %errorlevel%==3 goto main
goto errorwebsite4
:errorwebsite4
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "invalid choice. chose from 1 to 3" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto website4
:block
cls
echo.
echo -------------------------------------------------------------------------
echo                          Website Blocker
echo -------------------------------------------------------------------------
echo.
echo Enter URL of website you want to block and hit enter. OR type"back" to go Back.
echo.
SET NEWLINE=^& echo.
set /p op=Type Website :
if %op%==back goto website4 
if %op%==BACK goto website4
goto blockingsite
:blockingsite
FIND /C /I "%op%" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1 %op%>>%WINDIR%\System32\drivers\etc\hosts
goto blocking
:unblock
cls
echo.
echo ------------------------------------------------------------------------
echo                         Website Unblocker
echo ------------------------------------------------------------------------
echo.
echo To Unblock a blocked website, 
echo * open notepad as administrator
echo * Click on "File" then "open"
echo * go to C:\windows\system32\drivers\etc
echo * Select "Show all files"
echo * Open host file and delete 127.0.0.1 www.your_website.com
echo * Save file
echo.
echo.
menumode 87f6 "            Click here to Go Back"
if %errorlevel%==1 goto website4

:recoveryvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Create recovery image" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto recovery
:recovery
cls
echo.
echo.
echo ========================================================
echo                Recovery Image Creator
echo ========================================================
echo.
echo Note : If you want to refresh or restore your windows 8/8.1, you need a recovery image.
echo.
echo Please type drive letter in which you want to flash recovery image. Type "back" to go to main menu.
echo.
set/p op=Write drive letter Here :
if %op%==back goto main
if %op%==BACK goto main
goto creating
:creating
recimg -CreateImage %op%:\Recovery_Image
goto main

:USBvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Repair storage device" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto USB
:USB
cls
for /l %%n in (1, 1 ,1) do echo x=msgbox("Be careful while using this tool. Entering wrong disk number may damage other storage devices." ,48, "Warning")  >> warning.vbs
start warning.vbs
timeout 0 >nul
del warning.vbs
goto startUSB
:startUSB
echo.
echo.
echo ==========================================================
echo             Repair Unformatabble USB/SD Card
echo ==========================================================
echo.
echo Type Disk number of your USB/SD device. If you don't know the number, type "help"
echo Type "back" tp go to main menu.
echo.
set /p op=Type Disk number here :
if %op%==help goto USBhelper
if %op%==back goto main
if %op%==BACK goto main
goto creating
:creating
for /l %%n in (1, 1 ,1) do echo select disk %op% >> disk%op%.txt
for /l %%n in (1, 1 ,1) do echo clean >> disk%op%.txt
for /l %%n in (1, 1 ,1) do echo create partition primary >> disk%op%.txt
for /l %%n in (1, 1 ,1) do echo select partition 1 >> disk%op%.txt
for /l %%n in (1, 1 ,1) do echo active >> disk%op%.txt
for /l %%n in (1, 1 ,1) do echo format fs=fat32 quick >> disk%op%.txt
for /l %%n in (1, 1 ,1) do echo assign >> disk%op%.txt
cls
echo Going to start
DISKPART /s disk%op%.txt
timeout 0
del disk%op%.txt
goto main

:infovbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "System information" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto info
:info
cls
REM Windows Batch File to collect information about system, and files & dirs in current directory
REM - useful for debugging issues
REM - compare results using diff tool (like kdiff or vimdiff) between machines where issue occurs and does not occur
REM - See https://gist.github.com/darcyparker/5264774 for updates.
REM Depends on md5sum.exe from http://gnuwin32.sourceforge.net/packages/coreutils.htm
setlocal

REM Get the current directory name
call :getDirFileName "%CD%"
set SaveFolderName=SaveInfo_%COMPUTERNAME%_%_getDirFileName%
echo INFO: Saving output to files in: "%userprofile%\%SaveFolderName%"
if NOT EXIST "%userprofile%\%SaveFolderName%" mkdir "%userprofile%\%SaveFolderName%"
if NOT EXIST "%userprofile%\%SaveFolderName%" (
  echo ERROR: Could not create directory "%userprofile%\%SaveFolderName%"
  goto :end
)

echo INFO: Getting system info ...
echo System Info for Computer: %COMPUTERNAME%> "%userprofile%\%SaveFolderName%\systeminfo_%COMPUTERNAME%.txt"
echo Current Date and Time: %DATE% %TIME%>> "%userprofile%\%SaveFolderName%\systeminfo_%COMPUTERNAME%.txt"
echo ================================================================================>>"%userprofile%\%SaveFolderName%\systeminfo_%COMPUTERNAME%.txt"
systeminfo >> "%userprofile%\%SaveFolderName%\systeminfo_%COMPUTERNAME%.txt"

echo INFO: Getting current user name and their sid
echo ================================================================================>"%userprofile%\%SaveFolderName%\userinfo_%username%_%COMPUTERNAME%.txt"
echo User: %username%>>"%userprofile%\%SaveFolderName%\userinfo_%username%_%COMPUTERNAME%.txt"
wmic useraccount where name='%username%' get sid >>"%userprofile%\%SaveFolderName%\userinfo_%username%_%COMPUTERNAME%.txt"

echo INFO: Looking up IE Version
echo ================================================================================>"%userprofile%\%SaveFolderName%\IEVersionInfo_%username%_%COMPUTERNAME%.txt"
REM See http://support.microsoft.com/kb/969393
REM Test if svcVersion key is present. If it is present, then it is IE10 or
REM later.  Otherwise rely on Version key
%windir%\system32\reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer" /v svcVersion >NUL 2>NUL
if not ErrorLevel 1 (
  for /f "usebackq tokens=3" %%i in (`%windir%\system32\reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer" /v svcVersion ^| %windir%\system32\findstr /i /l /c:"REG_SZ"`) do set _IEVersion=%%i
) else (
  REM svcVersion KEY NOT Found. Must be IE9 or earlier so use Version Key
  for /f "usebackq tokens=3" %%i in (`%windir%\system32\reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer" /v Version ^| %windir%\system32\findstr /i /l /c:"REG_SZ"`) do set _IEVersion=%%i
)
echo Found IE Version=%_IEVersion%>>"%userprofile%\%SaveFolderName%\IEVersionInfo_%username%_%COMPUTERNAME%.txt"
REM Get IE major version
for /f "tokens=1 Delims=." %%i in ("%_IEVERSION%") do set _IEMajorVersion=%%i
echo IE Major version: %_IEMajorVersion%>>"%userprofile%\%SaveFolderName%\IEVersionInfo_%username%_%COMPUTERNAME%.txt"

echo INFO: Getting current task list ...
echo Task List for User: %USERNAME%> "%userprofile%\%SaveFolderName%\tasklist_%COMPUTERNAME%_%USERNAME%.txt"
echo on Computer: %COMPUTERNAME%>> "%userprofile%\%SaveFolderName%\tasklist_%COMPUTERNAME%_%USERNAME%.txt"
echo Current Date and Time: %DATE% %TIME%>> "%userprofile%\%SaveFolderName%\tasklist_%COMPUTERNAME%_%USERNAME%.txt"
echo ================================================================================>>"%userprofile%\%SaveFolderName%\tasklist_%COMPUTERNAME%_%USERNAME%.txt"
tasklist /v >> "%userprofile%\%SaveFolderName%\tasklist_%COMPUTERNAME%_%USERNAME%.txt"

echo INFO: Getting registry info ...
reg export HKEY_CLASSES_ROOT "%userprofile%\%SaveFolderName%\reginfo_%COMPUTERNAME%-HKEY_CLASSES_ROOT.txt" /y
reg export HKEY_CURRENT_USER "%userprofile%\%SaveFolderName%\reginfo_%COMPUTERNAME%-HKEY_CURRENT_USER.txt" /y
reg export HKEY_LOCAL_MACHINE "%userprofile%\%SaveFolderName%\reginfo_%COMPUTERNAME%-HKEY_LOCAL_MACHINE.txt" /y
reg export HKEY_USERS "%userprofile%\%SaveFolderName%\reginfo_%COMPUTERNAME%-HKEY_USERS.txt" /y
reg export HKEY_CURRENT_CONFIG "%userprofile%\%SaveFolderName%\reginfo_%COMPUTERNAME%-HKEY_CURRENT_CONFIG.txt" /y

echo INFO: Getting current environment variable settings ...
echo Environment Variable Listing for User: %USERNAME%> "%userprofile%\%SaveFolderName%\environmentvariables_%COMPUTERNAME%_%USERNAME%.txt"
echo on Computer: %COMPUTERNAME%>> "%userprofile%\%SaveFolderName%\environmentvariables_%COMPUTERNAME%_%USERNAME%.txt"
echo Current Date and Time: %DATE% %TIME%>> "%userprofile%\%SaveFolderName%\environmentvariables_%COMPUTERNAME%_%USERNAME%.txt"
echo ================================================================================>>"%userprofile%\%SaveFolderName%\environmentvariables_%COMPUTERNAME%_%USERNAME%.txt"
set >> "%userprofile%\%SaveFolderName%\environmentvariables_%COMPUTERNAME%_%USERNAME%.txt"

echo INFO: Getting Internet Explorer Compat Data
echo Getting Internet Explorer Compatability Data from: "%LOCALAPPDATA%\Microsoft\Internet Explorer\IECompatData\iecompatdata.xml"> "%userprofile%\%SaveFolderName%\iecompatdata_%COMPUTERNAME%_%USERNAME%.txt"
echo on Computer: %COMPUTERNAME%>> "%userprofile%\%SaveFolderName%\iecompatdata_%COMPUTERNAME%_%USERNAME%.txt"
echo Current Date and Time: %DATE% %TIME%>> "%userprofile%\%SaveFolderName%\iecompatdata_%COMPUTERNAME%_%USERNAME%.txt"
echo ================================================================================>>"%userprofile%\%SaveFolderName%\iecompatdata_%COMPUTERNAME%_%USERNAME%.txt"
copy "%LOCALAPPDATA%\Microsoft\Internet Explorer\IECompatData\iecompatdata.xml" "%userprofile%\%SaveFolderName%\iecompatdata_%COMPUTERNAME%_%USERNAME%.txt"

choice /C "yn" /M "Do you want to collect info about files in current dir?: "
if ERRORLEVEL 2 goto :getJavaInfo
if ERRORLEVEL 1 goto :filesInCurrentDir
goto :getJavaInfo
:filesInCurrentDir
echo INFO: Getting Recursive Directory Listing for current directory: "%CD%" ...
echo Recurisive Directory Listing for: %CD%>"%userprofile%\%SaveFolderName%\dirlisting_%COMPUTERNAME%.txt"
echo on Computer: %COMPUTERNAME%>>"%userprofile%\%SaveFolderName%\dirlisting_%COMPUTERNAME%.txt"
echo Current Date and Time: %DATE% %TIME%>> "%userprofile%\%SaveFolderName%\dirlisting_%COMPUTERNAME%.txt"
echo ================================================================================>>"%userprofile%\%SaveFolderName%\dirlisting_%COMPUTERNAME%.txt"
echo.>>"%userprofile%\%SaveFolderName%\dirlisting_%COMPUTERNAME%.txt"
dir /q /s /on >> "%userprofile%\%SaveFolderName%\dirlisting_%COMPUTERNAME%.txt"

echo INFO: Getting Permissions Listing for Files and Directories in current directory: "%CD%" ...
echo Permissions Listing for Files and Directories under: %CD%>"%userprofile%\%SaveFolderName%\permissionlisting_%COMPUTERNAME%.txt"
echo on Computer: %COMPUTERNAME%>>"%userprofile%\%SaveFolderName%\permissionlisting_%COMPUTERNAME%.txt"
echo Current Date and Time: %DATE% %TIME%>> "%userprofile%\%SaveFolderName%\permissionlisting_%COMPUTERNAME%.txt"
echo ================================================================================>>"%userprofile%\%SaveFolderName%\permissionlisting_%COMPUTERNAME%.txt"
echo.>>"%userprofile%\%SaveFolderName%\permissionlisting_%COMPUTERNAME%.txt"
icacls . /T /C >> "%userprofile%\%SaveFolderName%\permissionlisting_%COMPUTERNAME%.txt"

call :whereiscommand md5sum
choice /C "yn" /M "Do you want to collect MD5 checksums for files in current dir?: "
if ERRORLEVEL 2 goto :getJavaInfo
if ERRORLEVEL 1 goto :md5sumCurrentDir
goto :getJavaInfo

:md5sumCurrentDir
if EXIST "%_whereiscommand%" (
  echo INFO: Getting MD5 checksums for files under current directory: "%CD%" ...
  echo MD5 checksums for: %CD%>"%userprofile%\%SaveFolderName%\MD5sumslisting_%COMPUTERNAME%.txt"
  echo on Computer: %COMPUTERNAME%>>"%userprofile%\%SaveFolderName%\MD5sumslisting_%COMPUTERNAME%.txt"
  echo Current Date and Time: %DATE% %TIME%>> "%userprofile%\%SaveFolderName%\MD5sumslisting_%COMPUTERNAME%.txt"
  echo ================================================================================>>"%userprofile%\%SaveFolderName%\MD5sumslisting_%COMPUTERNAME%.txt"
  echo.>>"%userprofile%\%SaveFolderName%\MD5sumslisting_%COMPUTERNAME%.txt"
  for /F "usebackq delims=" %%z in (`dir /b /s /a-d /on`) do md5sum "%%z" >> "%userprofile%\%SaveFolderName%\MD5sumslisting_%COMPUTERNAME%.txt"
) else (
  echo WARNING: Skipping MD5 checksums because md5sum command is not in current directory or %%PATH%% environment variable
)

:getJavaInfo
echo INFO: Getting information about Java ...
echo Java Information on Computer: %COMPUTERNAME%> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
echo Current Date and Time: %DATE% %TIME%>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
echo ================================================================================>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
echo Java JDKs installed:>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\JavaSoft\Java Development Kit" /s >>  "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
echo Java JREs installed:>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\JavaSoft\Java Runtime Environment" /s >>  "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
echo Where is java.exe?>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
where java >> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
echo.>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
echo Java.exe version information:>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
java -version 2>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
echo.>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
echo Java related environment variables (may not be set):>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
echo   %%JAVA_HOME%%=%JAVA_HOME%>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
echo   %%CLASSPATH%%=%CLASSPATH%>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
echo.>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
echo Folders under "%%PROGRAMFILES%%\Java":>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
dir /b "%PROGRAMFILES%\Java" >> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
echo.>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
echo Folders under "%%ProgramFiles(x86)%%\Java":>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
dir /b "%ProgramFiles(x86)%\Java" >> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
REM %_whereiscommand% is set to the location of md5sum.exe from before
REM This section is commented out because it takes a long time to run if md5sum.exe exists and I don't always
REM need it.
choice /C "yn" /M "Do you want to collect MD5 checksums for `%%PROGRAMFILES%%\Java`?: "
if ERRORLEVEL 2 goto :end
if ERRORLEVEL 1 goto :md5sumJavaDir
goto :end
:md5sumJavaDir
if EXIST "%_whereiscommand%" (
  echo INFO: Getting MD5 checksums for files under "%%PROGRAMFILES%%\Java" ...
  echo.>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
  echo MD5 checksums for files under "%%PROGRAMFILES%%\Java":>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
  for /F "usebackq delims=" %%z in (`dir /b /s /a-d /on "%PROGRAMFILES%\Java"`) do md5sum "%%z" >> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
  echo INFO: Getting MD5 checksums for files under "%%ProgramFiles(x86)%%\Java" ...
  echo.>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
  echo MD5 checksums for files under "%%ProgramFiles(x86)%%\Java":>> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
  for /F "usebackq delims=" %%z in (`dir /b /s /a-d /on "%PROGRAMFILES(x86)%\Java"`) do md5sum "%%z" >> "%userprofile%\%SaveFolderName%\javainfo_%COMPUTERNAME%.txt"
) else (
  echo WARNING: Skipping MD5 checksums because md5sum command is not in current directory or %%PATH%% environment variable
)

REM SCRIPT FINISHED
goto :end

REM ============================================================================
REM Methods called by script
REM ============================================================================

  REM Method to get the Dir or File Name from first parameter passed to it
  REM Remember to wrap parameter with spaces in double quotes.
  :getDirFileName
    set _getDirFileName=%~n1
    goto :eof

:calculatorvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "calculator" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto calculator
:calculator
cls
echo.
echo.
echo ==========================================================================
echo                              Calculator
echo ==========================================================================
ECHO[
ECHO[
menumode 87f6 "                        Addition" "                        Subtraction" "                        Division" "                        Multiplication" "                        Main Menu"
IF %errorlevel% EQU 1 GOTO:SUMvbs
IF %errorlevel% EQU 2 GOTO:SUBvbs
IF %errorlevel% EQU 3 GOTO:DIVvbs
IF %errorlevel% EQU 4 GOTO:MULvbs
IF %errorlevel% EQU 5 GOTO:main
goto errorcalculator
:errorcalculator
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "invalid choice. chose from 1 to 5" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto calculator
:SUMvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "mathematical addition" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto SUM
:SUM
CLS
echo.
ECHO ---------------------------------------------------
ECHO[
ECHO                         SUM
ECHO[
ECHO ---------------------------------------------------
ECHO[
set /p A=" Enter First Number and hit Enter = "
ECHO[
set /p B=" Enter Second Number and hit Enter = "
SET /A C=A+B
ECHO[
ECHO ---------------------------------------------------
ECHO %A%+%B%=%C%
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% plus %B% is equal to %C%" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs 
PAUSE
GOTO calculator
:SUBvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "mathematical subtraction" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto SUB
:SUB
CLS
echo.
ECHO ---------------------------------------------------
ECHO[
ECHO                     SUBTRACTION
ECHO[
ECHO ---------------------------------------------------
ECHO[
set /p A=" Enter First Number and hit Enter = "
ECHO[
set /p B=" Enter Second Number and hit Enter = "
SET /A C=A-B
ECHO[
ECHO ---------------------------------------------------
ECHO %A%-%B%=%C%
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% minus %B% is equal to %C%" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs 
PAUSE
GOTO calculator
:DIVvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "mathematical division" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto DIV
:DIV
CLS
echo.
ECHO ----------------------------------------------------
ECHO[
ECHO                      DIVISION
ECHO[
ECHO -----------------------------------------------------
ECHO[
set /p A=" Enter First Number and hit Enter = "
ECHO[
set /p B=" Enter Second Number and hit Enter = "
SET /A C=A/B
ECHO[
ECHO -----------------------------------------------------
ECHO %A%/%B%=%C%
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% devided by %B% is equal to %C%" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs 
PAUSE
GOTO calculator
:MULvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "mathematical multiplication" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto MUL
:MUL
CLS
echo.
ECHO ---------------------------------------------------
ECHO[
ECHO                    MULTIPICATION
ECHO[
ECHO ----------------------------------------------------
ECHO[
set /p A=" Enter First Number and hit Enter = "
ECHO[
set /p B=" Enter Second Number and hit Enter = "
SET /A C=A*B
ECHO[
ECHO ----------------------------------------------------
ECHO %A%*%B%=%C%
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% times %B% is equal to %C%" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs 
PAUSE
GOTO calculator

:Clockvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Current time and date" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto Clock
:Clock
cls
echo.
echo ============================================================
echo                         Clock
echo ============================================================
echo.
echo        #######################################
echo        #                                     #
echo        #  Current time is   %time%      #
echo        #                                     #
echo        #  Current date is   %date%   #
echo        #                                     #
echo        #######################################
echo.
menumode 87f6 "            Click here to Go Back"
if %errorlevel%==1 goto main

:txtspeech
cls
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Please type what you want me to say" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto typetxt
:typetxt
cls
echo.
echo.
echo ===============================================================
echo                    Text To Speech
echo ===============================================================
echo.
echo.
echo Please type what you want to hear.
echo.
set /p op=Type Here :
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%op%" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto typetxt

:unitconvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Unit converter" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto unitcon
:unitcon
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter
echo ================================================================
echo.
echo Please select your choice.
echo.
menumode 87f6 "            Length" "            Temperature" "            Area" "            Volume" "            Weight" "            Time" "            Velocity" "            Main menu"
if %errorlevel%==1 goto unitcon1vbs
if %errorlevel%==2 goto unitcon2vbs
if %errorlevel%==3 goto unitcon3vbs
if %errorlevel%==4 goto unitcon4vbs
if %errorlevel%==5 goto unitcon5vbs
if %errorlevel%==6 goto unitcon6vbs
if %errorlevel%==7 goto unitcon7vbs
if %errorlevel%==8 goto main
goto unitconerror
:unitconerror
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Invalid choice. chose from 1 to 8" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto unitcon
:unitcon1vbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Length converter" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto unitcon1
:unitcon1
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Length)
echo ================================================================
echo.
echo Please select your choice.
echo.
menumode 87f6 "            millimeter to centimeter" "            centimeter to millimeter" "            centimeter to meter" "            meter to centimeter" "            yard to foot" "            foot to yard" "            Yard to mile" "            mile to yard" "            Previous Menu"            
if %errorlevel%==1 goto millicenti
if %errorlevel%==2 goto centimilli
if %errorlevel%==3 goto centimet
if %errorlevel%==4 goto metcenti
if %errorlevel%==5 goto yarfoot
if %errorlevel%==6 goto footyar
if %errorlevel%==7 goto yami
if %errorlevel%==8 goto miya
if %errorlevel%==9 goto unitconvbs
goto unitcon1error
:unitcon1error
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Invalid choice. chose from 1 to 9" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto unitcon1
:millicenti
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Length)
echo ================================================================
echo.
echo Please type number of millimeters.
echo.
set /p A=No. of millimeters :
set /A B=%A%/10
echo.
echo %A% mm = %B% cm
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% millimeters is equal to %B% centimeters" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs 
pause
goto unitcon
:centimilli
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Length)
echo ================================================================
echo.
echo Please type number of centimeters.
echo.
set /p A=No. of centimeters :
set /A B=%A%*10
echo.
echo %A% cm = %B% mm
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% centimeters is equal to %B% millimeters" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon
:centimet
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Length)
echo ================================================================
echo.
echo Please type number of centimeters.
echo.
set /p A=No. of centimeters :
set /A B=%A%/100
echo.
echo %A% cm = %C% meters
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% centimeters is equal to %B% meters" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon
:metcenti
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Length)
echo ================================================================
echo.
echo Please type number of meters.
echo.
set /p A=No. of meters :
set /A B=%A%*100
echo.
echo %A% meters = %B% cm
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% meters is equal to %B% centimeters" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon
:yarfoot
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Length)
echo ================================================================
echo.
echo Please type number of yards.
echo.
set /p A=No. of Yards :
set /A B=%A%*3
echo.
echo %A% Yards = %B% feet
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% yards is equal to %B% feet" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon
:footyar
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Length)
echo ================================================================
echo.
echo Please type number of feet.
echo.
set /p A=No. of feet :
set /A B=%A%/3
echo.
echo %A% feet = %B% Yards
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% feet is equal to %B% yards" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon
:yami
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Length)
echo ================================================================
echo.
echo Please type number of yard.
echo.
set /p A=No. of yards :
set /A B=%A%/1760
echo.
echo %A% Yards = %B% miles
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% yards is equal to %B% miles" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon
:miya
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Length)
echo ================================================================
echo.
echo Please type number of miles.
echo.
set /p A=No. of miles :
set /A B=%A%*1760
echo.
echo %A% miles = %B% yards
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% miles is equal to %B% yards" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon
:unitcon2vbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "temperature converter" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto unitcon2
:unitcon2
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Temperature)
echo ================================================================
echo.
echo Please select your choice.
echo.
menumode 87f6 "            Celcius to Fahrenheit" "            Fahrenheit to Celcius" "            Celcius to Kelvin" "            Kelvin to Celcius" "            Kelvin to Fahrenheit" "            Fahrenheit to Celcius" "            Previous Menu"            
if %errorlevel%==1 goto cefa
if %errorlevel%==2 goto face
if %errorlevel%==3 goto ceke
if %errorlevel%==4 goto kece
if %errorlevel%==5 goto kefa
if %errorlevel%==6 goto fake
if %errorlevel%==7 goto unitconvbs
goto unitcon2error
:unitcon2error
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Invalid choice. chose from 1 to 7" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto unitcon2
:cefa
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Temperature)
echo ================================================================
echo.
echo Please type temperature value in celcius.
echo.
set /p A=Teperature :
set /A B= %A% * 9/5 + 32
echo.
echo %A% Degree centigrade = %B% Fahrenheit
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% degree centigrade is equal to %B% fahrenheit" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon
:face
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Temperature)
echo ================================================================
echo.
echo Please type temperature value in Fahrenheit.
echo.
set /p A=Temperature :
set /A B= (%A% - 32) * 5/9
echo.
echo %A% Fahrenheit = %B% Celsius
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% fahrenheit is equal to %B% degree centigrades" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon2
:ceke
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Temperature)
echo ================================================================
echo.
echo Please type temperature value in Centigrades.
echo.
set /p A=Temperature :
set /A B=%A%+273
echo.
echo %A% Centigrades = %B% Kelvin
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% degreecentigrade is equal to %B% kelvin" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon2 
:kece
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Temperature)
echo ================================================================
echo.
echo Please type temperature value in Kelvin.
echo.
set /p A=Temperature :
set /A B=%A%-273
echo.
echo %A% Kelvin =%B% Centigrades
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% kelvin is equal to %B% degree centigrade" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon2
:kefa
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Temperature)
echo ================================================================
echo.
echo Please type temperature value in Kelvin.
echo.
set /p A=Temperature :
set /A B=%A% * 9/5 - 459
echo.
echo %A% Kelvin = %B% Fahrenheit
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% kelvin is equal to %B% fahrenheit" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon2
:fake
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Temperature)
echo ================================================================
echo.
echo Please type temperature value in Fahrenheit.
echo.
set /p A=Temperature :
set /A B=(%A% + 459) *5/9
echo.
echo %A% Fahrenheit = %B% Kelvin
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% fahrenheit is equal to %B% kelvin" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon2
:unitcon3vbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Area Converter" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto unitcon3
:unitcon3
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Area)
echo ================================================================
echo.
echo Please select your the conversion.
echo.
menumode 87f6 "            Sq-foot to Sq-inch" "            Sq-inch to Sq-foot" "            Sq-meter to Sq-Km" "            Sq-Km to Sq-meter" "            Sq-Yard to Sq-foot" "            Sq-foot to Sq-yard" "            Previous Menu"            
if %errorlevel%==1 goto sqfooin   
if %errorlevel%==2 goto sqinfoo
if %errorlevel%==3 goto sqmekm
if %errorlevel%==4 goto sqkmme
if %errorlevel%==5 goto sqyafoo
if %errorlevel%==6 goto sqfooya
if %errorlevel%==7 goto unitconvbs
goto unitcon3error
:unitcon3error
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Invalid choice. chose from 1 to 7" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto unitcon3
:sqfooin
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Area)
echo ================================================================
echo.
echo Please type area in Sq foot.
echo.
set /p A=Area :
set /A B=%A%*144
echo.
echo %A% Sq feet = %B% Sq inch
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% square feet is equal to %B% square inch" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon3
:sqinfoo
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Area)
echo ================================================================
echo.
echo Please type area in inches.
echo.
set /p A=Area :
set /A B=%A%/144
echo.
echo %A% Sq Inch = %B% Sq feet
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% square inch is equal to %B% square feet" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon3
:sqmekm
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Area)
echo ================================================================
echo.
echo Please type area in Sq meters.
echo.
set /p A=Area :
set /A B=%A%/1000000
echo.
echo %A% Sq meters = %B% Sq Km
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% square meter is equal to %B% square kilo meter" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon3
:sqkmme
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Area)
echo ================================================================
echo.
echo Please type area in Sq Km.
echo.
set /p A=Area :
set /A B=%A%*1000000
echo.
echo %A% Sq Km = %B% Sq meters
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% square kilometer is equal to %B% square meter" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon3
:sqyafoo
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Area)
echo ================================================================
echo.
echo Please type area in Sq yards.
echo.
set /p A=Area :
set /A B=%A%*9
echo.
echo %A% Sq yards = %B% Sq foot
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% square yards is equal to %B% square feet" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon3
:sqfooya
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Area)
echo ================================================================
echo.
echo Please type area in Sq feet.
echo.
set /p A=Area :
set /A B=%A%/9
echo.
echo %A% Sq feet = %B% Sq yards
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% square feet is equal to %B% square yards" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon3
:unitcon4vbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Volume Converter" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto unitcon4
:unitcon4
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Volume)
echo ================================================================
echo.
echo Please type select the conversion.
echo.
menumode 87f6 "            Cubic-foot to Cubic-inch" "            Cubic-inch to Cubic-foot" "            Cubic-meter to litre" "            litre to Cubic-meter" "            litre to millilitre" "            millilitre to litre" "            US-teaspoon to US-tablespoon" "            US-tablespoon to US-teaspoon" "            US-liquid quart to US-liquid gallon" "            US-liquis gallon to US-liquid quart" "            US-liquid quart to US-liquid pint" "            US-liquis pint to US-liquid quart" "            Previous menu" 
if %errorlevel%==1 goto volfooin
if %errorlevel%==2 goto volinfoo
if %errorlevel%==3 goto volmeli
if %errorlevel%==4 goto vollime
if %errorlevel%==5 goto vollimill
if %errorlevel%==6 goto volmillli
if %errorlevel%==7 goto volteatab
if %errorlevel%==8 goto voltabtea
if %errorlevel%==9 goto volquagall
if %errorlevel%==10 goto volgallqua
if %errorlevel%==11 goto volquapin
if %errorlevel%==12 goto volpinqua
if %errorlevel%==13 goto unitconvbs
goto unitcon4error
:unitcon4error
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Invalid Choice. chose from 1 to 13" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto unitcon4
:volfooin
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Volume)
echo ================================================================
echo.
echo Please type value of volume in Cubic-feet.
echo.
set /p A=Volume :
set /A B=%A%*1728
echo.
echo %A% Cubic-feet = %B% Cubic-inch
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% cubic feet is equal to %B% cubic inch" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon4
:volinfoo
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Volume)
echo ================================================================
echo.
echo Please type value of volume in Cubic-inch.
echo.
set /p A=Volume :
set /A B=%A%/1728
echo.
echo %A% Cubic-inch = %B% Cubic-feet
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% cubic inch is equal to %B% cubic feet" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon4
:volmeli
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Volume)
echo ================================================================
echo.
echo Please type value of volume in Cubic-meters.
echo.
set /p A=Volume :
set /A B=%A%*1000
echo.
echo %A% Cubic-meters = %B% litres 
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% cubic meters is equal to %B% liters" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon4
:vollime
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Volume)
echo ================================================================
echo.
echo Please type value of volume in litres.
echo.
set /p A=Volume :
set /A B=%A%/1000
echo.
echo %A% litres = %B% Cubic-meters
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% liters is equal to %B% cubic meters" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon4
:vollimill
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Volume)
echo ================================================================
echo.
echo Please type value of volume in litres.
echo.
set /p A=Volume :
set /A B=%A%*1000
echo.
echo %A% liters = %B% millilitres
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% liters is equal to %B% milliliters" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon4
:volmillli
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Volume)
echo ================================================================
echo.
echo Please type value of volume in millilitres.
echo.
set /p A=Volume :
set /A B=%A%/1000
echo.
echo %A% millilitres = %B% litres
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% milliliters is equal to %B% liters" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon4
:volteatab
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Volume)
echo ================================================================
echo.
echo Please type value of volume in US-teaspoons.
echo.
set /p A=Volume :
set /A B=%A%/3
echo.
echo %A% US-teaspoons = %B% US-tablespoons
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% US teaspoon is equal to %B% US tablespoon" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon4
:voltabtea
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Volume)
echo ================================================================
echo.
echo Please type value of volume in US-tablespoons.
echo.
set /p A=Volume :
set /A B=%A%*3
echo.
echo %A% US-tablespoons = %B% US-teaspoons
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% US tablespoon is equal to %B% US teaspoon" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon4
:volquagall
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Volume)
echo ================================================================
echo.
echo Please type value of volume in US-liquid quarts.
echo.
set /p A=Volume :
set /A B=%A%/4
echo.
echo %A% US-liquid quart = %B% US-liquid Gallon
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% US liquid quart is equal to %B% US liquid gallon" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon4
:volgallqua
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Volume)
echo ================================================================
echo.
echo Please type value of volume in US-liquid gallons.
echo.
set /p A=Volume :
set /A B=%A%*4
echo.
echo %A% US-Lquid gallons = %B% US-liquid quarts
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% US liquid gallon is equal to %B% US liquid quarts" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon4
:volquapin
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Volume)
echo ================================================================
echo.
echo Please type value of volume in US-liquid quarts.
echo.
set /p A=Volume :
set /A B=%A%*2
echo.
echo %A% US-liquid quart = %B% US-liquid pints 
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% US liquid quarts is equal to %B% US liquid pints" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon4
:volpinqua
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Volume)
echo ================================================================
echo.
echo Please type value of volume in US-liquid pints.
echo.
set /p A=Volume :
set /A B=%A%/2
echo.
echo %A% US-liquid pints = %B% US-liquid quarts 
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% US liquid pints is equal to %B% US liquid quarts" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon4
:unitcon5vbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Weight converter" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto unitcon5
:unitcon5
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Weight)
echo ================================================================
echo.
echo Please select the conversion.
echo.
menumode "           Kg to grams" "           grams to Kg" "           Tonn to Kg" "           Kg to Tonne" "           Ounce to Pound" "           Pound to ounce" "           Stone to Pound" "           Pount to stone" "           Previous menu"           
if %errorlevel%==1 goto kggr
if %errorlevel%==2 goto grkg
if %errorlevel%==3 goto tokg
if %errorlevel%==4 goto kgto
if %errorlevel%==5 goto oupo
if %errorlevel%==6 goto poou
if %errorlevel%==7 goto stpo
if %errorlevel%==8 goto post
if %errorlevel%==9 goto unitconvbs
goto unitcon5error
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Invalid Choice. chose from 1 to 9" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 > nul
del temp%num%.vbs
goto unitcon5
:kggr
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Weight)
echo ================================================================
echo.
echo Please type value of weight in Kg.
echo.
set /p A=Weight :
set /A B=%A%*1000
echo.
echo %A% Kg =  %B% grams
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% kiligrams is equal to %B% grams" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon5
:grkg
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Weight)
echo ================================================================
echo.
echo Please type value of weight in grams.
echo.
set /p A=Weight :
set /A B=%A%/1000
echo.
echo %A% grams =  %B% Kg
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% grams is equal to %B% killigrams" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon5
:tokg
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Weight)
echo ================================================================
echo.
echo Please type value of weight in tonnes.
echo.
set /p A=Weight :
set /A B=%A%*1000
echo.
echo %A% tonne(s) =  %B% Kg(s)
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% tonnes is equal to %B% kiligrams" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon5
:kgto
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Weight)
echo ================================================================
echo.
echo Please type value of weight in Kg.
echo.
set /p A=Weight :
set /A B=%A%/1000
echo.
echo %A% Kg(s) =  %B% Tonne(s)
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% kilograms is equal to %B% tonnes" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon5
:oupo
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Weight)
echo ================================================================
echo.
echo Please type value of weight in Ounce.
echo.
set /p A=Weight :
set /A B=%A%/16
echo.
echo %A% ounce(s) =  %B% Pound(s)
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% ounce is equal to %B% pounds" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon5
:poou
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Weight)
echo ================================================================
echo.
echo Please type value of weight in Pound(s).
echo.
set /p A=Weight :
set /A B=%A%*16
echo.
echo %A% Pound(s) =  %B% Ounce(s)
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% pounds is equal to %B% ounce" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon5
:stpo
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Weight)
echo ================================================================
echo.
echo Please type value of weight in Stone(s).
echo.
set /p A=Weight :
set /A B=%A%*14
echo.
echo %A% Stone(s) =  %B% Pound(s)
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% stone is equal to %B% pounds " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon5
:post
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Weight)
echo ================================================================
echo.
echo Please type value of weight in Pound(s).
echo.
set /p A=Weight :
set /A B=%A%/14
echo.
echo %A% Pound(s) =  %B% stones(s)
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% pounds is equal to %B% stone " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon5
:unitcon6vbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Time converter" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 > nul
del temp%num%.vbs
goto unitcon6
:unitcon6
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Time)
echo ================================================================
echo.
echo Please select the conversion.
echo.
menumode 87f6 "            Milliseconds to seconds" "            Seconds to milliseconds" "            Seconds to minuts" "            Minuts to seconds" "            Minuts to hours" "            Hours to minuts" "            Hours to days" "            Days to hours" "            Days to years" "            Years to days" "            Years to decades" "            Decades to years" "            Previous menu"
if %errorlevel%==1 goto tmilse
if %errorlevel%==2 goto tsemil
if %errorlevel%==3 goto tsemin
if %errorlevel%==4 goto tminse
if %errorlevel%==5 goto tminho
if %errorlevel%==6 goto thomin
if %errorlevel%==7 goto thoda
if %errorlevel%==8 goto tdaho
if %errorlevel%==9 goto tdaye
if %errorlevel%==10 goto tyeda
if %errorlevel%==11 goto tyede
if %errorlevel%==12 goto tdeye
if %errorlevel%==13 goto unitconvbs
goto unitcon6erroro
:unitcon6error
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Invalid choice. chose from 1 to 13" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 > nul
del temp%num%.vbs
goto unitcon6
:tmilse
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Time)
echo ================================================================
echo.
echo Please type number of milliseconds.
echo.
set /p A=Time :
set /A B=%A%/1000
echo.
echo %A% milliseconds = %B% seconds
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% milliseconds is equal to %B% seconds " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon6
:tsemil
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Time)
echo ================================================================
echo.
echo Please type number of seconds.
echo.
set /p A=Time :
set /A B=%A%*1000
echo.
echo %A% seconds = %B% milliseconds
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% seconds is equal to %B% milliseconds " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon6
:tsemin
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Time)
echo ================================================================
echo.
echo Please type number of seconds.
echo.
set /p A=Time :
set /A B=%A%/60
echo.
echo %A% seconds = %B% minuts
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% seconds is equal to %B% minuts " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon6
:tminse
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Time)
echo ================================================================
echo.
echo Please type number of minuts.
echo.
set /p A=Time :
set /A B=%A%*60
echo.
echo %A% minuts = %B% seconds
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% minuts is equal to %B% seconds " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon6
:tminho
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Time)
echo ================================================================
echo.
echo Please type number of minuts.
echo.
set /p A=Time :
set /A B=%A%/60
echo.
echo %A% minuts = %B% hours
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% minuts is equal to %B% hours " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon6
:thomin
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Time)
echo ================================================================
echo.
echo Please type number of Hours.
echo.
set /p A=Time :
set /A B=%A%*60
echo.
echo %A% hours = %B% minuts
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% hours is equal to %B% minuts " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon6
:thoda
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Time)
echo ================================================================
echo.
echo Please type number of hours.
echo.
set /p A=Time :
set /A B=%A%/24
echo.
echo %A% hours = %B% days
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% hours is equal to %B% days " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon6
:tdaho
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Time)
echo ================================================================
echo.
echo Please type number of days.
echo.
set /p A=Time :
set /A B=%A%*24
echo.
echo %A% days = %B% hours
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% days is equal to %B% hours " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon6
:tdaye
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Time)
echo ================================================================
echo.
echo Please type number of days.
echo.
set /p A=Time :
set /A B=%A%/365
echo.
echo %A% days = %B% years
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% days is equal to %B% years " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon6
:tyeda
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Time)
echo ================================================================
echo.
echo Please type number of years.
echo.
set /p A=Time :
set /A B=%A%*365
echo.
echo %A% years = %B% days
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% years is equal to %B% days " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon6
:tyede
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Time)
echo ================================================================
echo.
echo Please type number of years.
echo.
set /p A=Time :
set /A B=%A%/10
echo.
echo %A% years = %B% decades
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% years is equal to %B% decades " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon6
:tdeye
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Time)
echo ================================================================
echo.
echo Please type number of decades.
echo.
set /p A=Time :
set /A B=%A%*10
echo.
echo %A% decades = %B% years
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% decades is equal to %B% years " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon6
:unitcon7vbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Velocity converter" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 > nul
del temp%num%.vbs
goto unitcon7
:unitcon7
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Velocity)
echo ================================================================
echo.
echo Please select the conversion.
echo.
menumode 87f6 "            meter/s to Km/s" "            Km/s to meter/s" "            meter/s to Km/hour" "            Km/hour to meter/s" "            meter/s to meter/hour" "            meter/hour to meter/s" "            Previous menu"
if %errorlevel%==1 goto vemekm
if %errorlevel%==2 goto vekmme
if %errorlevel%==3 goto vemekmh
if %errorlevel%==4 goto vekmhme
if %errorlevel%==5 goto vememeh
if %errorlevel%==6 goto vemehme
if %errorlevel%==7 goto unitconvbs
goto unitcon7error
:unitcon7error
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Invalid choice. chose from 1 to 7" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 > nul
del temp%num%.vbs
goto unitcon7
:unitcon7
:vemekm
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Velocity)
echo ================================================================
echo.
echo Please type velocity in meters/s .
echo.
set /p A=Velocity :
set /A B=%A%/1000
echo.
echo %A% meter/s = %B% Km/s
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% meter per second is equal to %B% kilometer per second " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon7
:vekmme
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Velocity)
echo ================================================================
echo.
echo Please type velocity in Km/s.
echo.
set /p A=Velocity :
set /A B=%A%*1000
echo.
echo %A% Km/s = %B% meter/s
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% kilometer per second is equal to %B% meter per second " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon7
:vemekmh
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Velocity)
echo ================================================================
echo.
echo Please type velocity in meter/s
echo.
set /p A=Velocity :
set /A B= %A% /1000 *3600
echo.
echo %A% meter/s = %B% Km/hour
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% meter per second is equal to %B% kilometer per hour " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon7
:vekmhme
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Velocity)
echo ================================================================
echo.
echo Please type velocity in Km/hour
echo.
set /p A=Velocity :
set /A B= %A% *1000 /3600
echo.
echo %A% Km/hour = %B% meter/s
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% kilometer per hour is equal to %B% meter per second " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon7
:vememeh
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Velocity)
echo ================================================================
echo.
echo Please type velocity in meter/s .
echo.
set /p A=Velocity :
set /A B=%A%*3600
echo.
echo %A% meter/s = %B% meter/hour
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% meter per second is equal to %B% meter per hour " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon7
:vemehme
cls
echo.
echo.
echo ================================================================
echo                         Unit Converter (Velocity)
echo ================================================================
echo.
echo Please type velocity in meter/hour.
echo.
set /p A=Velocity :
set /A B=%A%/3600
echo.
echo %A% Meter/hour = %B% meter/s
echo.
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%A% meter per hour is equal to %B% meter per hour " >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
pause
goto unitcon7



:autologinvbs
cls
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Automatic login" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 > nul
del temp%num%.vbs
goto autologin
:autologin
cls
echo.
echo =====================================================================
echo                            Auto Login Bot
echo =====================================================================
echo.
menumode 87f6 "            Facebook" "            Gmail" "            Yahoo Mail" "            Previous Menu" 
if %errorlevel%==1 goto autofbvbs
if %errorlevel%==2 goto autogmvbs
if %errorlevel%==3 goto autoyahoovbs
if %errorlevel%==4 goto main
:autofbvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Please type facebook username" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 > nul
del temp%num%.vbs
goto autofb
:autofb
cls
if "%b2eprogramfilename%"==""  (
	echo To see any results you need to convert this file into an exe
	pause
	goto :eof
)
cd %~dp0
%extd% /inputbox "Facebbok Login" "Enter your facebook email adress." ""
if "%result%"==""  (
	goto autologin
) else (
	set fbmail="%result%"
)
if "%b2eprogramfilename%"==""  (
	echo To see any results you need to convert this file into an exe
	pause
	goto :eof
)
cd %~dp0
%extd% /inputbox "Facebbok Login" "Enter your facebook password." ""
if "%result%"=="" (goto autologin) else (set fbpass="%result%")
start www.facebook.com
timeout 5 >nul
for /l %%n in (1, 1 ,1) do echo Set wshshell = wscript.CreateObject("WScript.Shell") >> li.vbs
for /l %%n in (1, 1 ,1) do echo wshshell.sendkeys "%fbmail%" >> li.vbs
for /l %%n in (1, 1 ,1) do echo wscript.sleep 100 >> li.vbs
for /l %%n in (1, 1 ,1) do echo wshshell.sendkeys "{tab}" >> li.vbs
for /l %%n in (1, 1 ,1) do echo wscript.sleep 100 >> li.vbs
for /l %%n in (1, 1 ,1) do echo wshshell.sendkeys "%fbpass%" >> li.vbs
for /l %%n in (1, 1 ,1) do echo wscript.sleep 100 >> li.vbs
for /l %%n in (1, 1 ,1) do echo wshshell.sendkeys "~" >> li.vbs
start li.vbs
timeout 0 >nul
del li.vbs
goto autologin
:autogmvbs
cls
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Please type email adress" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 > nul
del temp%num%.vbs
goto autogm
:autogm
cls
if "%b2eprogramfilename%"==""  (
	echo To see any results you need to convert this file into an exe
	pause
	goto :eof
)
cd %~dp0
%extd% /inputbox "Gmail Login" "Enter your email adress." ""
if "%result%"==""  (
	goto autologin
) else (
	set gmail="%result%"
)
if "%b2eprogramfilename%"==""  (
	echo To see any results you need to convert this file into an exe
	pause
	goto :eof
)
cd %~dp0
%extd% /inputbox "Gmail Login" "Enter your password." ""
if "%result%"=="" (goto autologin) else (set gpass="%result%")
start https://accounts.google.com
timeout 5 >nul
for /l %%n in (1, 1 ,1) do echo Set wshshell = wscript.CreateObject("WScript.Shell") >> gm.vbs
for /l %%n in (1, 1 ,1) do echo wshshell.sendkeys "%gmail%" >> gm.vbs
for /l %%n in (1, 1 ,1) do echo wshshell.sendkeys "{ENTER}" >> gm.vbs
start gm.vbs
timeout 0 >nul
del gm.vbs
timeout 3 >nul
for /l %%n in (1, 1 ,1) do echo Set wshshell = wscript.CreateObject("WScript.Shell") >> gmp.vbs
for /l %%n in (1, 1 ,1) do echo wshshell.sendkeys "%gpass%" >> gmp.vbs
for /l %%n in (1, 1 ,1) do echo wshshell.sendkeys "{ENTER}" >> gmp.vbs
start gmp.vbs
timeout 0 >nul
del gmp.vbs
goto autologin
:autoyahoovbs
cls
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Please type email adress" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 > nul
del temp%num%.vbs
goto autoya
:autoya
cls
if "%b2eprogramfilename%"==""  (
	echo To see any results you need to convert this file into an exe
	pause
	goto :eof
)
cd %~dp0
%extd% /inputbox "Yahoo Login" "Enter your Yahoo email adress." ""
if "%result%"==""  (
	goto autologin
) else (
	set ymail="%result%"
)
if "%b2eprogramfilename%"==""  (
	echo To see any results you need to convert this file into an exe
	pause
	goto :eof
)
cd %~dp0
%extd% /inputbox "Yahoo Login" "Enter your facebook password." ""
if "%result%"=="" (goto autologin) else (set ypass="%result%")
start https://login.yahoo.com
timeout 8 >nul
for /l %%n in (1, 1 ,1) do echo Set wshshell = wscript.CreateObject("WScript.Shell") >> ya.vbs
for /l %%n in (1, 1 ,1) do echo wshshell.sendkeys "%ymail%" >> ya.vbs
for /l %%n in (1, 1 ,1) do echo wshshell.sendkeys "{ENTER}" >> ya.vbs
start ya.vbs
timeout 0 >nul
del ya.vbs
timeout 5 >nul
for /l %%n in (1, 1 ,1) do echo Set wshshell = wscript.CreateObject("WScript.Shell") >> yah.vbs
for /l %%n in (1, 1 ,1) do echo wshshell.sendkeys "%ypass%" >> yah.vbs
for /l %%n in (1, 1 ,1) do echo wshshell.sendkeys "{ENTER}" >> yah.vbs
start yah.vbs
timeout 0 >nul
del yah.vbs
goto autologin


:profoldervbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Create a password protected folder" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto profolder
:profolder
cls
echo.
echo ---------------------------------------------------------
echo              Get A Private Folder
echo ---------------------------------------------------------
echo.
echo.
echo Locker.exe will be created on your desktop. Click the button below to continue.
echo.
menumode 87f6 "                    Continue" "                    Back"
if %errorlevel%==1 goto doitpro
if %errorlevel%==2 goto main
:doitpro
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "An application called Locker has been created on desktop. Use it to get access to your private folder" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
if exist "%userprofile%\Locker.exe" goto lockerexist
goto createlocker
:lockerexist
cls
echo.
echo ====================================================================
echo                    Private Folder Creator                           
echo ====================================================================
echo.
echo Locker.exe already exists on your desktop. Please delete it before creating another.
echo.
menumode 87f6 "                    Back"
if %errorlevel%==1 goto main
:createlocker
xcopy /c /q Locker.exe "%userprofile%\Desktop"
goto addassiss
:addassiss
cls
echo.
echo ====================================================================
echo                    Private Folder Creator                           
echo ====================================================================
echo.
echo Your locker has been created on desktop.
echo Open that locker to create your folder and then lock/unlock... 
echo.
echo                         Additional assistance.
echo.
menumode 87f6 "            How to Use" "            Important Note" "            Main menu"
if %errorlevel%==1 goto profolderhow
if %errorlevel%==2 goto profoldernote
if %errorlevel%==3 goto main
goto additionalerrorvbs
:additionalerrorvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Please chose from 1 to 2" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
cls
goto addassiss
:profolderhow
cls
echo.
echo             HOW TO USE YOUR PRIVATE FOLDER
echo.
echo    * After creating Locker tool with AIO PC Utility, Open Locker first to create you empty private folder.
echo    * Enter password for your private folder.
echo    * Put you private data into that folder.
echo    * Again run Locker to lock your folder. (Your private data will remain there secure)
echo    * Then run the Locker file and enter password if you want to get to your private folder.
echo.
menumode 87f6 "                    Click here to go Back"
if %errorlevel%==1 goto addassiss
goto profolderhow
:profoldernote
cls
echo.
echo               IMPORTANT NOTE
echo.
echo   *  Always keep in mind that whenever you want to move your Private folder, Place Locker and Private_Folder
echo      in same directory.otherwise your private data would be lost...
echo.
menumode 87f6 "                    Click here to go Back"
if %errorlevel%==1 goto addassiss
:passprofol
start http://aiopctools.weebly.com/uploads/8/4/8/8/84884600/locker.exe
goto addassiss




:morevbs
cls
echo.
echo ====================================================================
echo                    More Useful Tools                           
echo ====================================================================
echo.
echo Tools
echo =====
echo.
menumode 87f6 "                    Change Icon of exe File" "                    Downloader" "                    Environment Variables" "                    Get Cursore Coordinates" "                    Get Desktop Resolution" "                    Get Operating System Version" "                    Make a file 'Run as admin' everytime"  "                    Back"                 
if %errorlevel%==1 goto exeiconvbs
if %errorlevel%==2 goto downloadervbs
if %errorlevel%==3 goto envarvbs
if %errorlevel%==4 goto curcovbs
if %errorlevel%==5 goto desresvbs
if %errorlevel%==6 goto osvervbs
if %errorlevel%==7 goto adminvbs
if %errorlevel%==8 goto maino
:exeiconvbs
cls
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Change icon of executable file" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
cls
goto exeicon
:exeicon
if "%b2eprogramfilename%"==""  (
	echo To see any results you need to convert this file into an exe
	pause
	goto :eof
)
%extd% /browseforfile "Select an exe file" "" "Exe (*.exe)|*.exe"
if "%result%"=="" (goto morevbs) else (set file="%result%")
%extd% /browseforfile "Select an icon file" "" "Ico (*.ico)|*.ico"
if "%result%"=="" (goto morevbs) else (set icon="%result%")
%extd% /savefiledialog "Save file as" "" "Exe (*.exe)|*.exe"
if "%result%"=="" (goto morevbs) else (set save="%result%")
%extd% /addextension %save% .exe 
if "%result%"=="" (goto morevbs) else (set save="%result%")
%extd% /changeexeicon %file% %save% %icon%
if %result% EQU 0  (
	%extd% /messagebox "" Failed 16
) else (
	%extd% /messagebox "" "Done"
)
goto maino
:downloadervbs
cls
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "File Downloader" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
cls
goto downloader
:downloader
if "%b2eprogramfilename%"==""  (
	echo To see any results you need to convert this file into an exe
	pause
	goto :eof
)
cd %~dp0
%extd% /inputbox "Download 2" "Enter the Url you want to download" ""
if "%result%"=="" (goto morevbs) else (set url="%result%")
%extd% /savefiledialog "Save file as" "Bat_To_Exe_Converter.zip" "All Files (*.*)|*.*"
if "%result%"=="" (goto morevbs) else (set file="%result%")
%extd% /download %url% %file%
if %result% EQU 0  (
	%extd% /messagebox Error "Download failed" 16
) ELSE (
	%extd% /messagebox Done "Download succeeded"
)
goto morevbs
:envarvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Environment variables" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
cls
goto envar
:envar
if "%b2eprogramfilename%"==""  (
	echo To see any results you need to convert this file into an exe
	pause
	goto :eof
)
%extd% /messagebox "Info" "Your exe filename is: %b2eprogramfilename%"
%extd% /messagebox "Info" "It's stored in: %b2eprogrampathname%"
%extd% /messagebox "Info" "The current working directory is: %cd%"
%extd% /messagebox "Info" "Number of files included: %b2eincfilecount%"
goto morevbs
:curcovbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Cursore Coordinates" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
cls
goto curco
:curco
if "%b2eprogramfilename%"==""  (
	echo To see any results you need to convert this file into an exe
	pause
	goto :eof
)
%extd% /getcursorposx
set x=%result%
%extd% /getcursorposy
set y=%result%
%extd% /messagebox "Cursor coordinates" "X=%x% Y=%y%"
goto morevbs
:desresvbs
cls
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Desktop resolution" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
cls
goto desres
:desres
if "%b2eprogramfilename%"==""  (
	echo To see any results you need to convert this file into an exe
	pause
	goto :eof
)
%extd% /getdesktopwidth
set width=%result%
%extd% /getdesktopheight
set height=%result%
%extd% /messagebox "Desktop resolution" "width=%width% height=%height%"
goto morevbs
:osvervbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Operating system version" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
cls
goto osver
:osver
if "%b2eprogramfilename%"==""  (
	echo To see any results you need to convert this file into an exe
	pause
	goto :eof
)
%extd% /osversion
if "%result%"=="" (goto morevbs) else (set os="%result%")
%extd% /messagebox "Operating system" %os%
goto morevbs
:adminvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Make a file run as administrator everytime" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
cls
goto admin
:admin
if "%b2eprogramfilename%"==""  (
	echo To see any results you need to convert this file into an exe
	pause
	goto :eof
)
%extd% /browseforfile "Select an exe file" "" "Exe (*.exe)|*.exe"
if "%result%"=="" (goto morevbs) else (set file="%result%")
%extd% /savefiledialog "Save file as" "Admin.exe" "Exe (*.exe)|*.exe"
if "%result%"=="" (goto morevbs) else (set save="%result%")
%extd% /makeadmin %file% %save%
if %result% EQU 0  (
	%extd% /messagebox "" Failed 16
) else (
	%extd% /messagebox "" "Done"
)
goto morevbs



:zipunzipvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Zip or unzip a file" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
cls
goto zipunzip
:zipunzip
cls
echo.
echo =========================================================
echo                    Simple file Zipper
echo =========================================================
echo.
echo Do you want to zip a file or unzip it?
echo.
menumode 87f6 "                    Zip a file" "                    Unzip an archive" "                    Back"
if %errorlevel%==1 goto zipit
if %errorlevel%==2 goto unzipit
if %errorlevel%==3 goto maino
:zipit
if "%b2eprogramfilename%"==""  (
	echo To see any results you need to convert this file into an exe
	pause
	goto :eof
)
%extd% /browseforfile "Select a file to zip" "" "All Files (*.*)|*.*"
if "%result%"=="" (goto zipunzip) else (set file="%result%")
%extd% /savefiledialog "Save file as" "MyZipfile.zip" "All Files (*.*)|*.*"
if "%result%"=="" (goto zipunzip) else (set save="%result%")
%extd% /zip %file% %save%
goto maino
:unzipit
if "%b2eprogramfilename%"==""  (
	echo To see any results you need to convert this file into an exe
	pause
	goto :eof
)
%extd% /browseforfile "Select a ZIP file" "" "ZIP (*.zip)|*.zip"
if "%result%"=="" (goto zipunzip) else (set file="%result%")
%extd% /browseforfolder "Select a destination folder" "c:\"
if "%result%"=="" (goto zipunzip) else (set folder="%result%")
%extd% /unzip %file% %folder%
goto maino



:helpervbs
cls
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "which type of assistance you want" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
cls
goto helper
:helper
cls
echo.
echo                      HELP PENAL
echo.
echo Which type of assistance you want?
echo.
menumode 87f6 "            I'm getting an error" "            Report a problem." "            Suggestions." "            Update" "            Main menu"
if %errorlevel%==1 goto geterror
if %errorlevel%==2 goto repprob
if %errorlevel%==3 goto sugg
if %errorlevel%==4 goto verupdate
if %errorlevel%==5 goto main
:geterror
cls
echo.
echo  Please make screenshot of your screen while encountring error and then send me in "Contact" menu.
echo.
menumode 87f6 "                    Click here to go Back"
if %errorlevel%==1 goto helper
:repprob
cls
echo.
echo My email box is automaticaly opened. Please type the about the problem you are facing and send.
start mailto:zeshandhiloo345@gmail.com
echo.
echo.
menumode 87f6 "                    Click here to go Back"
if %errorlevel%==1 goto helper
:sugg
cls
echo.
echo Please type the suggestions in mailbox.
echo.
menumode 87f6 "                    Click here to go Back"
if %errorlevel%==1 goto helper
:verupdate
start http://aiopctools.weebly.com/download.html
cls
echo.
echo                        Software Update
echo.
echo Download the latest version from the webpage that is opened.
echo.
menumode f687 "                    Click here to go back"
if %errorlevel%==1 goto helper


:mevbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "About author" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto me
:me
cls
echo.
color 6f
echo.
echo.
echo    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo    @                                            @
echo    @             ZEESHAN DHILLON                @
echo    @                                            @
echo    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo.
echo.
menumode 87f6 "            Contact" "            I want the code of this script" "            Main Menu"
if %errorlevel%==1 goto contact
if %errorlevel%==2 goto contact
if %errorlevel%==3 goto main
goto errorme
:errorme
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "invalid choice. chose from 1 to 3" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto me
:contact
cls
color 6f
echo.
echo.
echo    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo    @                                            @
echo    @             ZEESHAN DHILLON                @
echo    @                                            @
echo    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo.
echo.   Contact...
echo.
menumode 87f6 "            Facebook" "            Gmail" "            Instagram" "            Twitter" "            Whatsapp" "            Main Menu"
if %errorlevel%==1 goto fb
if %errorlevel%==2 goto gmail
if %errorlevel%==3 goto insta 
if %errorlevel%==4 goto twitter
if %errorlevel%==5 goto whatsapp
if %errorlevel%==6 goto main
goto errorcontact
:errorcontact
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "invalid choice. chose from 1 to 6" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto contact
:gmail
cls
color 6f
echo.
echo.
echo    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo    @                                            @
echo    @             ZEESHAN DHILLON                @
echo    @                                            @
echo    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo.
echo    Gmail Contact
start mailto:zeshandhiloo345@gmail.com
echo.
echo You can contact me here...
echo             zeshandhiloo345@gmail.com
echo.
menumode 87f6 "                    Click her to go Back"
if %errorlevel%==1 goto contact
:whatsapp
cls
color 6f
echo.
echo.
echo    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo    @                                            @
echo    @             ZEESHAN DHILLON                @
echo    @                                            @
echo    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo.
echo    Whatsapp Contact number
echo.
echo    Here it is     +923073393489
echo.
menumode 87f6 "                    Click her to go Back"
if %errorlevel%==1 goto contact
:insta
start https://www.instagram.com/zeeshan_dhillon/
goto contact
:twitter
start https://twitter.com/ZeeshanDhilloo
goto contact
:fb
start www.facebook.com/ZeeshanDhillon0
goto contact


:exitvbs
rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Good bye. Take care" >> "temp%num%.vbs"
start temp%num%.vbs
timeout 0 >nul
del temp%num%.vbs
goto exit
:exit
echo.
echo.
echo.
echo.
echo.
echo e!
timeout 0 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo ye!
timeout 0 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo Bye!
timeout 0 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo  Bye!
timeout 0 >nul
cls                                                                                                           
echo.
echo.
echo.
echo.
echo.
echo d Bye!
timeout 0 >nul
cls                                                                                                                                               
echo.
echo.
echo.
echo.
echo.
echo od Bye!
timeout 0 >nul
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo ood Bye!
timeout 0 >nul
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.
echo Good Bye!
timeout 0 >nul
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo  Good Bye!
timeout 0 >nul
cls                                                                                                            
echo.                                                                                                                   
echo.                                                                                                                     
echo.                                                                                                                
echo.                                                                                                               
echo.                                                                                                               
echo   Good Bye!
timeout 0 >nul
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo    Good Bye!
timeout 0 >nul
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo     Good Bye!
timeout 0 >nul
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo      Good Bye!
timeout 0 >nul
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo       Good Bye!
timeout 0 >nul
cls                                                                                                           
echo                                                                                                           .
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo        Good Bye!
timeout 0 >nul
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo         Good Bye!
timeout 0 >nul
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo          Good Bye!
timeout 0 >nul
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo           Good Bye!
timeout 0 >nul 
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo            Good Bye!
timeout 0 >nul  
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo             Good Bye!
timeout 0 >nul    
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo              Good Bye!                                                                                                           
timeout 0 >nul                                                                                                            
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo               Good Bye!                                                                                                           
timeout 0 >nul                                                                                                           
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo                Good Bye!                                                                                                           
timeout 0 >nul                                                                                                           
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo                 Good Bye!                                                                                                           
timeout 0 >nul                                                                                                           
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo                  Good Bye!
timeout 0 >nul                
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo                   Good Bye!                                                                                                           
timeout 0 >nul                                                                                                           
cls                                                                                                            
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo                    Good Bye!
timeout 0 >nul                                                                                                           
cls                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo                     Good Bye!                                                                                                            
timeout 0 >nul                                                                                                           
cls                                                                                                                                    
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                             
echo                      Good Bye!
timeout 0 >nul                                                                                                           
cls                                                                                                                                  
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                                
echo                       Good Bye!
timeout 0 >nul                                                                                                           
cls                                                                                                                                                                                                                                            
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                                      
echo                        Good Bye!
timeout 0 >nul                                                                                                           
cls                                                                                                                                                                                                                                                
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                                         
echo                         Good Bye!                                                                                                           
timeout 0 >nul                                                                                                           
cls                                                                                                                                          
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                                    
echo                          Good Bye!
timeout 0 >nul                                                                                                           
cls                                                                                                                                          
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                                 
echo                           Good Bye!                                                                                                           
timeout 0 >nul                                                                                                           
cls                                                                                                                                                                                                                                                      
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                                 
echo                            Good Bye!                                                                                                           
timeout 0 >nul                                                                                                           
cls                                                                                                                                         
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                                    
echo                             Good Bye!!
timeout 0 >nul                                                                                                           
cls                                                                                                                                        
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo                              Good Bye!!
timeout 0 >nul                                                                                                           
cls                                                                                                                                                                                                                                                     
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo                               Good Bye!!
timeout 0 >nul                                                                                                           
cls                                                                                                                                             
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                                                           
echo                                Good Bye!!
timeout 0 >nul                                                                                                           
cls                                                                                                                                                  
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                                                                       
echo                                 Good Bye!!
timeout 0 >nul                                                                                                           
cls                                                                                                                                                 
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                                                                           
echo                                  Good Bye!!
timeout 0 >nul                                                                                                           
cls                                                                                                                                                  
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                           
echo.                                                                                                                                             
echo                                   Good Bye!!                                        
echo                                             Take care...
timeout 3 >nul
exit



:extd
@set result=
@%b2eextd% "%~1" "%~2" "%~3" "%~4" "%~5" "%~6" "%~7" "%~8" "%~9" > "%b2etempfile%"
@set /p result= < "%b2etempfile%"
@del "%b2etempfile%"
@goto:eof


:extd
@set result=
@%b2eextd% "%~1" "%~2" "%~3" "%~4" "%~5" "%~6" "%~7" "%~8" "%~9" > "%b2etempfile%"
@set /p result= < "%b2etempfile%"
@del "%b2etempfile%"
@goto:eof

