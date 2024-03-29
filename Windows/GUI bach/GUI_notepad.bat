::
::       //\
::      //|\\
::     // | \\
::    //  |  \\
::   //---|---\\
::  //    |    \\
:: //     |     \\
:://_GUI notepad_\\
::
::Codename Tentclip
::
::Only edit if you are a developer. Do not open GUI notepad
::inside of itself, as you may self destruct it, if you do so
::(save process requires initial file deletion, before saving
::data).
::
@echo off
set pathname=%1
set args=%2
set args2=%3
set "pathname=%pathname:+= %"
set "pathname=%pathname:"= %"
if "%pathname%"=="+= " set "pathname="
::Do not delete this line. This is required for infinite note functionality.
::Removing it will render viewing notes impossible.
setlocal EnableDelayedExpansion
set "tab=	"
for /l %%a in (1,1,1000) do set "bck=!bck!"
::Argument lines
if "%pathname%"=="" goto normalboot
if "%pathname%"=="/?" goto help_command
if "%pathname%"=="/V" goto verino
if "%pathname%"=="/v" goto verino
if "%pathname%"=="/N" set none=true
if "%pathname%"=="/n" set none=true
if "%args%"=="/N" set none=true
if "%args%"=="/n" set none=true
if "%args2%"=="/N" set none=true
if "%args2%"=="/n" set none=true
if "%pathname%"=="/Q" set cone=true
if "%pathname%"=="/q" set cone=true
if "%args%"=="/Q" set cone=true
if "%args%"=="/q" set cone=true
if "%args2%"=="/Q" set cone=true
if "%args2%"=="/q" set cone=true
if "%pathname%"=="/I" call :bg_binary_write&echo Command complited successfully&goto :eof
if "%pathname%"=="/i" call :bg_binary_write&echo Command complited successfully&goto :eof
if "%pathname:~0,2%"=="/E" call :typecmd&goto :eof
if "%pathname:~0,2%"=="/e" call :typecmd&goto :eof
if "%pathname:~0,2%"=="/C" goto convert_f
if "%pathname:~0,2%"=="/c" goto convert_f
::Normal bootup procceedure
:normalboot
if "%pathname%"=="/n" set "pathname="
if "%pathname%"=="/N" set "pathname="
if "%pathname%"=="/q" set "pathname="
if "%pathname%"=="/Q" set "pathname="
if "%none%"=="true" color 07&goto skipdisplay
::Splash screen
mode 80,25
color E0
cls
echo.
echo.
echo.
echo.
echo.                             ____
echo.                            ^|    ^|
echo.                            ^|^|^|^|^|^|
echo.                            ^|^|^|^|^|^|
echo.                            ^|^|^|^|^|^|   GUI notepad
echo.                            ^|^|^|^|^|^|   Version 2.01
echo.                            ^|^|^|^|^|^|   Public version
echo.                            ^|^|^|^|^|^|
echo.                            ^|^|^|^|^|^|
echo.                            ^|____^|
echo.                             \__/
echo.                              \/===================
echo.
echo.
echo.
ping localhost -n 2 >nul
bg.exe time>%temp%\l
set /p timeday=<%temp%\l
del %temp%\l
::End of splash screen
:skipdisplay
::Default values for color settings
set bg=0
set tx=7
set bgmen=7
set txmen=0
set bgsel=8
set txsel=7
set num1=1
set num2=2
set num3=3
set num4=4
set num5=5
set num6=6
set num7=7
set num8=8
set num9=9
set num10=10
set realine=1
set focus=Main  
if "%timeday:~5,2%"=="12" call :christmascheck
if not "%note%"=="" goto viewnote
bg cursor 0
if exist "%windir%\System32\bg.exe" set bgst=true
if exist "bg.exe" set bgst=true
if "%bgst%"=="" set bgst=false
if "%bgst%"=="false" goto errorport
if not "%pathname%"=="" title Loading %pathname%
if not "%pathname%"=="" goto loadother
cls
color %bg%%tx%
set da=t
set pathname=new.txt
@echo off
setlocal EnableDelayedExpansion
set "tab=	"
for /l %%a in (1,1,1000) do set "bck=!bck!"
goto main_interface
:christmascheck
if "%timeday:~8,2%"=="24" call :christmastheme
if "%timeday:~8,2%"=="25" call :christmastheme
if "%timeday:~8,2%"=="26" call :christmastheme
if "%timeday:~8,2%"=="27" call :christmastheme
if "%timeday:~8,2%"=="31" set neve=t
goto :eof

:christmastheme
set bg=0
set tx=2
set bgmen=4
set txmen=2
set bgsel=C
set txsel=A
set da=t
goto :eof
:funfactor
set /a timehour=0
set /a timeminute=0
set /a timesec=0
set /a timemilli=0
SET /A fnum=%RANDOM% * 26 / 32768 + 1
if "%neve%"=="t" call :neve&goto :eof
if "%fnum%"=="1" set ff1=You can use .prefix. in front of a line&set ff2=to add a prefix to a line.&goto :eof
if "%fnum%"=="2" set ff1=You can use .suffix. in front of a line&set ff2=to add a suffix to a line.&goto :eof
if "%fnum%"=="3" set ff1=Current date and time is %date% %time%&set "ff2="
if "%fnum%"=="4" set ff1=GUI notepad was created in Estonia&set "ff2="
if "%fnum%"=="5" set ff1=You can stil load older GUI notepad documents.&set ff2=They will be automatically converted to plain text.
if "%fnum%"=="6" set /a timehour=23-%time:~0,2%&set /a timeminute=59-%time:~3,2%&set /a timesec=59-%time:~6,2%&set /a timemilli=99-%time:~9,2%&set ff1=Time until the next day:&set ff2=%timehour% hours, %timeminute% minutes, %timesec% seconds, %timemilli% milliseconds
if "%fnum%"=="6" set /a timehour=23-%time:~0,2%&set /a timeminute=59-%time:~3,2%&set /a timesec=59-%time:~6,2%&set /a timemilli=99-%time:~9,2%&set ff1=Time until the next day:&set ff2=%timehour% hours, %timeminute% minutes, %timesec% seconds, %timemilli% milliseconds
if "%fnum%"=="7" set ff1=You are currently editing line %linenum%&set ff2=You are editing file ..%pathname:~0,-40%
if "%fnum%"=="8" set ff1=The pencil you see at the splash and about screen is not originally&set ff2=made by me, but I edited it a little bit.
if "%fnum%"=="9" set ff1=This batch file is codenamed Tentclip. It is&set ff2=a combination of a tent and a paperclip.
if "%fnum%"=="10" set ff1=This is a fun fact number 10&set "ff2="
if "%fnum%"=="11" set ff1=A Mask La Rum is an anagram for my name&set ff2=Steak Meal Re Gun is an anagram for my channel name.
if "%fnum%"=="12" set ff1=Sentence The quick brown fox jumped over the lazy dog&set ff2=contains every single letter from the English alphabet.
if "%fnum%"=="13" set ff1=This is a fact 13. You may not have a lot of luck.&set "ff2=Not a fact, but just saying"
if "%fnum%"=="14" set ff1=Lorem Ipsum is simply dummy text of the printing&set ff2=and typesetting industry. It has been so since 1500s.
if "%fnum%"=="15" set ff1=This is not a randomly generated number: %random%&set ff2=It used computer time to generate itself.
if "%fnum%"=="16" set ff1=When you're editing your document, you can simply&set ff2=press Enter/Return to use previously typed line (or use up/down arrow keys).
if "%fnum%"=="17" set ff1=You can't press ALT+F4 to close Command Prompt window&set "ff2="
if "%fnum%"=="18" set ff1=This fact got removed during the QA testing...&set ff2=It was about drugs.
if "%fnum%"=="19" set ff1=This fact can only be seen in the source code. Whatever the funfactor does, this fnum won't appear anywere
if "%fnum%"=="19" set ff1=MS-DOS stands for Microsoft Disk Operating System&set "ff2="
if "%fnum%"=="20" set ff1=Windows name came from its first version having&set ff2=windows user can interact with.
if "%fnum%"=="21" set ff1=XP in Windows XP's name stands for eXPerience.
if "%fnum%"=="22" set ff1=Linux was named by combining the name of its creator&set ff2=(Linus) and what it was built upon (Unix).
if "%fnum%"=="23" set ff1=Ubuntu was named so, because in Zulu and Xhosa languages&set ff2=in Africa, roughly means ^"humanity towards others^"
if "%fnum%"=="24" set ff1=USB stands for Universal Serial Bus, as it is a connection bus&set ff2=in a serial connection, that is meant to be universal.
if "%fnum%"=="25" set ff1=32-bit Unix time is going to end at 03:14:07 UTC &set ff2=on 19 January 2038.
if "%fnum%"=="26" set ff1=This batch file currently has 3370 lines of code.&set "ff2="
goto :eof

:neve
set /a timehour=23-%time:~0,2%
set /a timeminute=59-%time:~3,2%
set /a timesec=59-%time:~6,2%
set /a timemilli=99-%time:~9,2%
set ff1=Time until the next year:
set ff2=%timehour% hours, %timeminute% minutes, %timesec% seconds, %timemilli% milliseconds
goto :eof
::Main UX
:main_interface
if "%viewingnote%"=="true" goto checkpage
if "%editingnote%"=="true" goto mousenote
if "%demo%"=="true" set demo=
if "%noted%"=="exit" goto mousenote
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                     
Echo.                                                                     
Echo. To begin, click file and then New note.                                 
Echo. If you want to continue your previous work,                                   
Echo. click file and then Load note.                                                
Echo.                                                                               
Echo.                                                                       
Echo.                                                                            
Echo.                                                                       
Echo.                                                                              
Echo.                                                                            
Echo.                                                                           
Echo.                                                                             
Echo.                                                                          
Echo.                                                                           
Echo.                                                                          
Echo.                                                                            
Echo.                                                                                
Echo.                                                                             
Echo.                                                                            
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                     
Echo.                                                                     
Echo. To begin, click file and then New note.                                 
Echo. If you want to continue your previous work,                                   
Echo. click file and then Load note.                                                
Echo.                                                                               
Echo. Fun fact:
Echo.                                                                            
call :funfactor
:ref
Echo. %ff1%
Echo. %ff2%
Echo.                                                                            
Echo.                                                                           
Echo.                                                                             
Echo.                                                                          
Echo.                                                                           
Echo.                                                                          
Echo.                                                                            
Echo.                                                                                
Echo.                                                                             
Echo.                                                                            
:mi
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if %key% == 1x1 goto menu
if %key% == 1x2 goto menu
if %key% == 1x3 goto menu
if %key% == 1x4 goto menu
if %key% == 1x5 goto menu
if %key% == 1x6 goto menu
if %key% == 1x9 goto menu3
if %key% == 1x10 goto menu3
if %key% == 1x11 goto menu3
if %key% == 1x12 goto menu3
if %key% == 1x13 goto menu3
if %key% == 1x14 goto menu3
if %key% == 1x28 goto menu4
if %key% == 1x29 goto menu4
if %key% == 1x30 goto menu4
if %key% == 1x31 goto menu4
if %key% == 1x36 goto menu5
if %key% == 1x37 goto menu5
if %key% == 1x38 goto menu5
if %key% == 1x39 goto menu5
if %key% == 1x40 goto menu5
if %key% == 1x41 goto menu5
if %key% == 1x16 goto menu2
if %key% == 1x17 goto menu2
if %key% == 1x18 goto menu2
if %key% == 1x19 goto menu2
if %key% == 1x20 goto menu2
if %key% == 1x21 goto menu2
if %key% == 1x22 goto menu2
if %key% == 1x23 goto menu2
if %key% == 1x16 goto menu2
if %key% == 1x17 goto menu2
goto mi

:change_my_menu
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
echo.
echo.                                          
echo.                                          
echo.                                          
echo.                                          
if %key% == 1x1 goto menu
if %key% == 1x2 goto menu
if %key% == 1x3 goto menu
if %key% == 1x4 goto menu
if %key% == 1x5 goto menu
if %key% == 1x6 goto menu
if %key% == 1x9 goto menu3
if %key% == 1x10 goto menu3
if %key% == 1x11 goto menu3
if %key% == 1x12 goto menu3
if %key% == 1x13 goto menu3
if %key% == 1x14 goto menu3
if %key% == 1x28 goto menu4
if %key% == 1x29 goto menu4
if %key% == 1x30 goto menu4
if %key% == 1x31 goto menu4
if %key% == 1x36 goto menu5
if %key% == 1x37 goto menu5
if %key% == 1x38 goto menu5
if %key% == 1x39 goto menu5
if %key% == 1x40 goto menu5
if %key% == 1x41 goto menu5
if %key% == 1x16 goto menu2
if %key% == 1x17 goto menu2
if %key% == 1x18 goto menu2
if %key% == 1x19 goto menu2
if %key% == 1x20 goto menu2
if %key% == 1x21 goto menu2
if %key% == 1x22 goto menu2
if %key% == 1x23 goto menu2
if %key% == 1x16 goto menu2
if %key% == 1x17 goto menu2
goto :eof
:checkpage
set viewingnote=false
set /a page=%page%-1
if "%page%"=="0" set page=1
if "%page%"=="" set page=1
goto realview

:menu
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgsel%%txsel% "  File  "&bg print %bgmen%%txmen% "  Edit    Format    View    Help  "
Echo.
bg print %bgmen%%txmen% " New note     "
echo.
bg print %bgmen%%txmen% " Load note    "
echo.
bg print %bgmen%%txmen% " Save note    "
Echo.
bg print %bgmen%%txmen% " Exit         "
echo.
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if %key% == 1x1 goto main_interface
if %key% == 1x2 goto main_interface
if %key% == 1x3 goto main_interface
if %key% == 1x4 goto main_interface
if %key% == 1x5 goto main_interface
if %key% == 1x6 goto main_interface
if %key% == 2x1 set pathname=new.txt&goto newnote
if %key% == 2x2 set pathname=new.txt&goto newnote
if %key% == 2x3 set pathname=new.txt&goto newnote
if %key% == 2x4 set pathname=new.txt&goto newnote
if %key% == 2x5 set pathname=new.txt&goto newnote
if %key% == 2x6 set pathname=new.txt&goto newnote
if %key% == 2x7 set pathname=new.txt&goto newnote
if %key% == 2x8 set pathname=new.txt&goto newnote
if %key% == 4x1 goto savenote
if %key% == 4x2 goto savenote
if %key% == 4x3 goto savenote
if %key% == 4x4 goto savenote
if %key% == 4x5 goto savenote
if %key% == 4x6 goto savenote
if %key% == 4x7 goto savenote
if %key% == 4x8 goto savenote
if %key% == 4x9 goto savenote
if %key% == 3x1 goto loadnote
if %key% == 3x2 goto loadnote
if %key% == 3x3 goto loadnote
if %key% == 3x4 goto loadnote
if %key% == 3x5 goto loadnote
if %key% == 3x6 goto loadnote
if %key% == 3x7 goto loadnote
if %key% == 3x8 goto loadnote
if %key% == 3x9 goto loadnote
if %key% == 5x1 goto exit
if %key% == 5x2 goto exit
if %key% == 5x3 goto exit
if %key% == 5x4 goto exit
if %key% == 1x10 goto change_my_menu
if %key% == 1x11 goto change_my_menu
if %key% == 1x12 goto change_my_menu
if %key% == 1x13 goto change_my_menu
if %key% == 1x14 goto change_my_menu
if %key% == 1x28 goto change_my_menu
if %key% == 1x29 goto change_my_menu
if %key% == 1x30 goto change_my_menu
if %key% == 1x31 goto change_my_menu
if %key% == 1x36 goto change_my_menu
if %key% == 1x37 goto change_my_menu
if %key% == 1x38 goto change_my_menu
if %key% == 1x39 goto change_my_menu
if %key% == 1x40 goto change_my_menu
if %key% == 1x41 goto change_my_menu
if %key% == 1x16 goto change_my_menu
if %key% == 1x17 goto change_my_menu
if %key% == 1x18 goto change_my_menu
if %key% == 1x19 goto change_my_menu
if %key% == 1x20 goto change_my_menu
if %key% == 1x21 goto change_my_menu
if %key% == 1x22 goto change_my_menu
if %key% == 1x23 goto change_my_menu
if %key% == 1x16 goto change_my_menu
if %key% == 1x17 goto change_my_menu
goto main_interface

:savenote
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgsel%%txsel% "  File  "&bg print %bgmen%%txmen% "  Edit    Format    View    Help  "
Echo.
bg print %bgmen%%txmen% " New note     "
echo.
bg print %bgmen%%txmen% " Load note    "
Echo.
bg print %bgsel%%txsel% " Save note    "
Echo.
bg print %bgmen%%txmen% " Exit         "
echo.
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                     
Echo.                
bg print %bgmen%%txmen% "                                          "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% " Save as..                              "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% "                                        "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% "Enter file name:                        "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% "                                        "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% "                                          "
echo.
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                     
Echo.                
bg cursor 1
bg print %bgmen%%txmen% "                                          "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% " Save as..                              "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% "                                        "&bg print %bgmen%%txmen% " "
echo.
set /p pathname=ΫEnter file name:
:savingother
bg cursor 0
set "spi=0F \DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\n"
set "spi=%spi% 0F \DB c0 \DB\DB\DB 0c Saving.. c0 \DB\DB\DB 0F \DB\n"
set "spi=%spi%\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\n"
if not "%cone%"=="true" bg sprite 9 30 %spi%
if "%saveother%"=="true" set saveother=false&goto saev
if exist %pathname% del %pathname%
set save_num=0
set savepenalty=0
title DO NOT CANCEL THE PROCESS
goto fade_now
:fade_save
title Saving note (!save_num! lines saved)
:fade_now
if "!note%save_num%!"=="" set /a savepenalty=%savepenalty%+1
if "%savepenalty%"=="30" goto crappy
@echo.!note%save_num%!>>%pathname%
if not "!note%save_num%!"=="" set savepenalty=0
set /a save_num=%save_num%+1
goto fade_save
:crappy
title GUI notepad
set savepenalty=0
::if "%inhelp%"=="true" goto :eof
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                     
Echo.                
bg print %bgmen%%txmen% "                                          "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% " Save as..                              "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% "                                        "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% "Enter file name:                        "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% "Success                                 "&bg print %bgmen%%txmen% " "&bg print %bg%%tx% "       "   
echo.
bg print %bgmen%%txmen% "                                          "&bg print %bg%%tx% "       "\n
Echo.                                                 
Echo.                                                 
Echo.                                                 
ping localhost -n 3 >nul
goto main_interface


:saev
if exist %pathname% del %pathname%
for /f "delims=" %%a in (%note%%a%) do (
    SET "note!IDX!=%%i"
    @echo %%i>>%pathname%
    SET /A IDX+=1
)
if %IDX% GTR %endnote% goto finishsaev
goto saev
:finishsaev
set /a noteline=%idx%-1
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                     
Echo.                
bg print %bgmen%%txmen% "                                          "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% " Save as..                              "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% "                                        "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% "Enter file name:                        "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% "Success                                 "&bg print %bgmen%%txmen% " "&bg print %bg%%tx% "       "   
echo.
bg print %bgmen%%txmen% "                                          "&bg print %bg%%tx% "       "
echo.
Echo.                                                 
ping localhost -n 3 >nul
goto main_interface
:loadnote
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgsel%%txsel% "  File  "&bg print %bgmen%%txmen% "  Edit    Format    View    Help  "
Echo.
bg print %bgmen%%txmen% " New note     "
echo.
bg print %bgsel%%txsel% " Load note    "
Echo.
bg print %bgmen%%txmen% " Save note    "
Echo.
bg print %bgmen%%txmen% " Exit         "
:loadnote_now
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                     
Echo.                
bg print %bgmen%%txmen% "                                          "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% " Load..                                 "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% "                                        "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% "Enter file name:                        "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% "                                        "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% "                                          "
echo.
bg cursor 1
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                     
Echo.                
bg print %bgmen%%txmen% "                                          "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% " Load..                                 "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% "                                        "&bg print %bgmen%%txmen% " "
echo.
set "menu=false"
set /p pathname=ΫEnter file name:
echo.
echo.
echo.
echo.
call :newloop
set numeral=
if exist "%pathname:.cmd=%.cmd" set pathname=%pathname:.cmd=%&goto pnc
if not exist "%pathname%.cmd"  goto loadtxt
:pnc
set "spi=0F \DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\n"
set "spi=%spi% 0F \DB a0 \DB\DB 0a Loading... a0 \DB\DB 0F \DB\n"
set "spi=%spi%\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\n"
if not "%cone%"=="true" bg sprite 9 30 %spi%
bg cursor 0
call "%pathname%.cmd"
set pathname=/C:%pathname%
call :convert_f
set pathname=%pathname:~3%
goto mousenote

:loadtxt
echo %tab%%bck% 2>nul&set /p=<nul
if not exist "%pathname%.txt" goto loadother
bg cursor 0
echo.
echo.
echo.
echo.
bg print F0 "                "
echo.
bg print F0 " "&bg print 0A "  Loading...  "&bg print F0 " "
echo.
bg print F0 "                "
title Deleting any notes in the memory
set noteline=
SET IDX=1
title Loading note now... (loop started)
for /f "delims=" %%i in (%pathname%.txt) do (
    SET "note!IDX!=%%i"
    SET /A IDX+=1
    echo %tab%%bck% 2>nul&set /p=<nul
    echo %%i                                                                                                      
)
cls
set /a noteline=%idx%-1
set endnote=%idx%
call :resetpages
if "%bg%"=="" set bg=0
if "%fg%"=="" set fg=7
color %bg%%fg%
goto mousenote

:loadother
echo %tab%%bck% 2>nul&set /p=<nul
if not exist %pathname% goto loadnote_now
bg cursor 0
echo.
echo.
echo.
echo.
:loadingothers
set "spi=0F \DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\n"
set "spi=%spi% 0F \DB a0 \DB\DB 0a Loading... a0 \DB\DB 0F \DB\n"
set "spi=%spi%\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\n"
if not "%cone%"=="true" bg sprite 9 30 %spi%
:delmemories
title Deleting any notes in the memory
set noteline=
title Counting lines...
For /f %%j in ('Find "" /v /c ^<%pathname%') Do Set /a lc=%%j
title Loading note now... (loop started)
set IDX=0
set "checkvar="
for /f "delims=" %%i in (%pathname%) do (
    SET /A IDX+=1
    SET "note!IDX!=%%i"
    SET /A pc=!IDX!*100/!lc!
    title Loading note now... (!pc!%% loaded, line !IDX!/!lc!^)
)
if "%pathname:~-3%"=="exe" cls&echo This file is not supported by GUI_notepad&pause&goto menu
if "%pathname:~-3%"=="doc" cls&echo This file is not supported by GUI_notepad&pause&goto menu
if "%pathname:~-3%"=="pdf" cls&echo This file is not supported by GUI_notepad&pause&goto menu
if "%pathname:~-3%"=="docx" cls&echo This file is not supported by GUI_notepad&pause&goto menu
if "%pathname:~-3%"=="mp3" cls&echo What do you think you're trying to do? Play music in the office? Go out and get a life instead of wasting it for this bulls***&pause&goto menu
if "%pathname:~-3%"=="wav" cls&echo What do you think you're trying to do? Play music in the office? Go out and get a life instead of wasting it for this bulls***&pause&goto menu
if "%pathname:~-3%"=="ogg" cls&echo What do you think you're trying to do? Play music in the office? Go out and get a life instead of wasting it for this bulls***&pause&goto menu
if "%pathname:~-3%"=="aif" cls&echo What do you think you're trying to do? Play music in the office? Go out and get a life instead of wasting it for this bulls***&pause&goto menu
if "%pathname:~-3%"=="aiff" cls&echo What do you think you're trying to do? Play music in the office? Go out and get a life instead of wasting it for this bulls***&pause&goto menu
if "%pathname:~-4%"==".cmd" pause&call :checkold
if "%pathname:~-7%"=="cmd.old" cls&echo This file is not supported by GUI_notepad&pause&goto menu
if "%pathname%"=="GUI_notepad.bat" cls&echo Editing GUI notepad inside itself may end up having dangerous effects.&echo Do not save it inside itself, or the universe will explode.&pause
cls
title GUI notepad
set /a noteline=%idx%-1
set endnote=%idx%
call :resetpages
if "%nonexist%"=="true" set nonexist=false&del %pathname%
if not "%bf%"=="" set fg=%bf%&set "bf="
if "%bg%"=="" set bg=0
if "%fg%"=="" set fg=7
color %bg%%fg%
goto mousenote

:checkold
set "checkvar=%note2:~0,8%"
if "%checkvar%"=="set note" set pathname=/C:%pathname%
if "%checkvar%"=="set note" call :convert_f
if "%checkvar%"=="set note" set pathname=%pathname:~3%
if "%checkvar%"=="set note" goto delmemories
goto :eof

:menu2
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit  "&bg print %bgsel%%txsel% "  Format  "&bg print %bgmen%%txmen% "  View    Help  "
Echo.
bg print %bg%%tx% "%tab%%tab%"& bg print %bgmen%%txmen% " Colors..    "
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if %key% == 1x16 goto main_interface
if %key% == 1x17 goto main_interface
if %key% == 1x18 goto main_interface
if %key% == 1x19 goto main_interface
if %key% == 1x20 goto main_interface
if %key% == 1x21 goto main_interface
if %key% == 1x22 goto main_interface
if %key% == 1x23 goto main_interface
if %key% == 1x16 goto main_interface
if %key% == 1x17 goto main_interface
if %key% == 2x17 goto color_dialog
if %key% == 2x18 goto color_dialog
if %key% == 2x19 goto color_dialog
if %key% == 2x20 goto color_dialog
if %key% == 2x21 goto color_dialog
if %key% == 2x22 goto color_dialog
if %key% == 2x23 goto color_dialog
if %key% == 2x24 goto color_dialog
if %key% == 2x25 goto color_dialog
if %key% == 1x1 goto change_my_menu
if %key% == 1x2 goto change_my_menu
if %key% == 1x3 goto change_my_menu
if %key% == 1x4 goto change_my_menu
if %key% == 1x5 goto change_my_menu
if %key% == 1x6 goto change_my_menu
if %key% == 1x9 goto change_my_menu
if %key% == 1x10 goto change_my_menu
if %key% == 1x11 goto change_my_menu
if %key% == 1x12 goto change_my_menu
if %key% == 1x13 goto change_my_menu
if %key% == 1x14 goto change_my_menu
if %key% == 1x28 goto change_my_menu
if %key% == 1x29 goto change_my_menu
if %key% == 1x30 goto change_my_menu
if %key% == 1x31 goto change_my_menu
if %key% == 1x36 goto change_my_menu
if %key% == 1x37 goto change_my_menu
if %key% == 1x38 goto change_my_menu
if %key% == 1x39 goto change_my_menu
if %key% == 1x40 goto change_my_menu
if %key% == 1x41 goto change_my_menu
if %key% == 1x16 goto change_my_menu
if %key% == 1x17 goto change_my_menu
if %key% == 1x18 goto change_my_menu
if %key% == 1x19 goto change_my_menu
if %key% == 1x20 goto change_my_menu
if %key% == 1x21 goto change_my_menu
if %key% == 1x22 goto change_my_menu
if %key% == 1x23 goto change_my_menu
if %key% == 1x16 goto change_my_menu
if %key% == 1x17 goto change_my_menu
goto main_interface

:menu3
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File  "&bg print %bgsel%%txsel% "  Edit  "&bg print %bgmen%%txmen% "  Format    View    Help  "
Echo.
bg print %bg%%tx% "%tab%"&bg print %bgmen%%txmen% " Add Date and time..  "
Echo.
bg print %bg%%tx% "%tab%"&bg print %bgmen%%txmen% " Change line          "
Echo.
bg print %bg%%tx% "%tab%"&bg print %bgmen%%txmen% " Find                 "
Echo.
bg print %bg%%tx% "%tab%"&bg print %bgmen%%txmen% " Replace              "
Echo.
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if %key% == 1x9 goto main_interface
if %key% == 1x10 goto main_interface
if %key% == 1x11 goto main_interface
if %key% == 1x12 goto main_interface
if %key% == 1x13 goto main_interface
if %key% == 1x14 goto main_interface
if %key% == 2x9 goto add_time
if %key% == 2x10 goto add_time
if %key% == 2x11 goto add_time
if %key% == 2x12 goto add_time
if %key% == 2x13 goto add_time
if %key% == 2x14 goto add_time
if %key% == 2x15 goto add_time
if %key% == 2x16 goto add_time
if %key% == 2x17 goto add_time
if %key% == 2x18 goto add_time
if %key% == 2x19 goto add_time
if %key% == 2x20 goto add_time
if %key% == 2x21 goto add_time
if %key% == 2x22 goto add_time
if %key% == 2x23 goto add_time
if %key% == 2x24 goto add_time
if %key% == 2x25 goto add_time
if %key% == 2x26 goto add_time
if %key% == 2x27 goto add_time
if %key% == 3x9 goto edlin
if %key% == 3x10 goto edlin
if %key% == 3x11 goto edlin
if %key% == 3x12 goto edlin
if %key% == 3x13 goto edlin
if %key% == 3x14 goto edlin
if %key% == 3x15 goto edlin
if %key% == 3x16 goto edlin
if %key% == 3x17 goto edlin
if %key% == 3x18 goto edlin
if %key% == 3x19 goto edlin
if %key% == 3x20 goto edlin
if %key% == 4x9 goto flin
if %key% == 4x10 goto flin
if %key% == 4x11 goto flin
if %key% == 4x12 goto flin
if %key% == 4x13 goto flin
if %key% == 4x14 goto flin
if %key% == 4x15 goto flin
if %key% == 4x16 goto flin
if %key% == 4x17 goto flin
if %key% == 4x18 goto flin
if %key% == 4x19 goto flin
if %key% == 4x20 goto flin
if %key% == 5x9 goto rlin
if %key% == 5x10 goto rlin
if %key% == 5x11 goto rlin
if %key% == 5x12 goto rlin
if %key% == 5x13 goto rlin
if %key% == 5x14 goto rlin
if %key% == 5x15 goto rlin
if %key% == 5x16 goto rlin
if %key% == 5x17 goto rlin
if %key% == 5x18 goto rlin
if %key% == 5x19 goto rlin
if %key% == 5x20 goto rlin
if %key% == 1x1 goto change_my_menu
if %key% == 1x2 goto change_my_menu
if %key% == 1x3 goto change_my_menu
if %key% == 1x4 goto change_my_menu
if %key% == 1x5 goto change_my_menu
if %key% == 1x6 goto change_my_menu
if %key% == 1x9 goto change_my_menu
if %key% == 1x10 goto change_my_menu
if %key% == 1x11 goto change_my_menu
if %key% == 1x12 goto change_my_menu
if %key% == 1x13 goto change_my_menu
if %key% == 1x14 goto change_my_menu
if %key% == 1x28 goto change_my_menu
if %key% == 1x29 goto change_my_menu
if %key% == 1x30 goto change_my_menu
if %key% == 1x31 goto change_my_menu
if %key% == 1x36 goto change_my_menu
if %key% == 1x37 goto change_my_menu
if %key% == 1x38 goto change_my_menu
if %key% == 1x39 goto change_my_menu
if %key% == 1x40 goto change_my_menu
if %key% == 1x41 goto change_my_menu
if %key% == 1x16 goto change_my_menu
if %key% == 1x17 goto change_my_menu
if %key% == 1x18 goto change_my_menu
if %key% == 1x19 goto change_my_menu
if %key% == 1x20 goto change_my_menu
if %key% == 1x21 goto change_my_menu
if %key% == 1x22 goto change_my_menu
if %key% == 1x23 goto change_my_menu
if %key% == 1x16 goto change_my_menu
if %key% == 1x17 goto change_my_menu
goto main_interface

:menu4
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format  "&bg print %bgsel%%txsel% "  View  "&bg print %bgmen%%txmen% "  Help  "
Echo.
bg print %bgmen%%txmen% "                           Edit note    "
echo.
bg print %bgmen%%txmen% "                           View note    "
echo.
bg print %bgmen%%txmen% "                           Start screen "
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
@echo.set a=%%~n1>>%temp%\cmm.bat
@echo.@echo.set a=%%a%%^>^>
bg print %bgmen%%txmen% " Note: %~ni"
)
echo.
bg print %bgmen%%txmen% " Line: %realine%                "
echo.
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if %key% == 1x29 goto main_interface
if %key% == 1x30 goto main_interface
if %key% == 1x31 goto main_interface
if %key% == 1x32 goto main_interface
if %key% == 1x33 goto main_interface
if %key% == 1x34 goto main_interface
if %key% == 2x28 goto mousenote
if %key% == 2x29 goto mousenote
if %key% == 2x30 goto mousenote
if %key% == 2x31 goto mousenote
if %key% == 2x32 goto mousenote
if %key% == 2x33 goto mousenote
if %key% == 2x34 goto mousenote
if %key% == 2x35 goto mousenote
if %key% == 2x36 goto mousenote
if %key% == 3x28 goto goview
if %key% == 3x29 goto goview
if %key% == 3x30 goto goview
if %key% == 3x31 goto goview
if %key% == 3x32 goto goview
if %key% == 3x33 goto goview
if %key% == 3x34 goto goview
if %key% == 3x35 goto goview
if %key% == 3x36 goto goview
if %key% == 4x28 goto gostart
if %key% == 4x29 goto gostart
if %key% == 4x30 goto gostart
if %key% == 4x31 goto gostart
if %key% == 4x32 goto gostart
if %key% == 4x33 goto gostart
if %key% == 4x34 goto gostart
if %key% == 4x35 goto gostart
if %key% == 4x36 goto gostart
if %key% == 4x37 goto gostart
if %key% == 4x38 goto gostart
if %key% == 4x39 goto gostart
if %key% == 1x1 goto change_my_menu
if %key% == 1x2 goto change_my_menu
if %key% == 1x3 goto change_my_menu
if %key% == 1x4 goto change_my_menu
if %key% == 1x5 goto change_my_menu
if %key% == 1x6 goto change_my_menu
if %key% == 1x9 goto change_my_menu
if %key% == 1x10 goto change_my_menu
if %key% == 1x11 goto change_my_menu
if %key% == 1x12 goto change_my_menu
if %key% == 1x13 goto change_my_menu
if %key% == 1x14 goto change_my_menu
if %key% == 1x28 goto change_my_menu
if %key% == 1x29 goto change_my_menu
if %key% == 1x30 goto change_my_menu
if %key% == 1x31 goto change_my_menu
if %key% == 1x36 goto change_my_menu
if %key% == 1x37 goto change_my_menu
if %key% == 1x38 goto change_my_menu
if %key% == 1x39 goto change_my_menu
if %key% == 1x40 goto change_my_menu
if %key% == 1x41 goto change_my_menu
if %key% == 1x16 goto change_my_menu
if %key% == 1x17 goto change_my_menu
if %key% == 1x18 goto change_my_menu
if %key% == 1x19 goto change_my_menu
if %key% == 1x20 goto change_my_menu
if %key% == 1x21 goto change_my_menu
if %key% == 1x22 goto change_my_menu
if %key% == 1x23 goto change_my_menu
if %key% == 1x16 goto change_my_menu
if %key% == 1x17 goto change_my_menu
goto main_interface

:goedit
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format   "&bg print %bgsel%%txsel% " View "& bg print %bgmen%%txmen% "   Help  "
Echo.
bg print %bg%%tx% "                          "&bg print %bgsel%%txsel% " Edit note    "
echo.
bg print %bg%%tx% "                          "&bg print %bgmen%%txmen% " View note    "
echo.
bg print %bg%%tx% "                          "&bg print %bgmen%%txmen% " Start screen "
echo.
goto mousenote


:menu5
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View   "&bg print %bgsel%%txsel% " Help "& bg print %bgmen%%txmen% " "
Echo.
bg.exe print %bg%%tx% "                                "&bg print %bgmen%%txmen% " Tutorial "    
Echo.
bg.exe print %bg%%tx% "                                "&bg print %bgmen%%txmen% " About..  "    
Echo.
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if %key% == 1x36 goto main_interface
if %key% == 1x37 goto main_interface
if %key% == 1x38 goto main_interface
if %key% == 1x39 goto main_interface
if %key% == 1x40 goto main_interface
if %key% == 1x41 goto main_interface
if %key% == 2x34 goto demo
if %key% == 2x35 goto demo
if %key% == 2x36 goto demo
if %key% == 2x37 goto demo
if %key% == 2x38 goto demo
if %key% == 2x39 goto demo
if %key% == 2x40 goto demo
if %key% == 2x41 goto demo
if %key% == 2x42 goto demo
if %key% == 3x35 goto aboutnote
if %key% == 3x36 goto aboutnote
if %key% == 3x37 goto aboutnote
if %key% == 3x38 goto aboutnote
if %key% == 3x39 goto aboutnote
if %key% == 3x40 goto aboutnote
if %key% == 1x1 goto change_my_menu
if %key% == 1x2 goto change_my_menu
if %key% == 1x3 goto change_my_menu
if %key% == 1x4 goto change_my_menu
if %key% == 1x5 goto change_my_menu
if %key% == 1x6 goto change_my_menu
if %key% == 1x9 goto change_my_menu
if %key% == 1x10 goto change_my_menu
if %key% == 1x11 goto change_my_menu
if %key% == 1x12 goto change_my_menu
if %key% == 1x13 goto change_my_menu
if %key% == 1x14 goto change_my_menu
if %key% == 1x28 goto change_my_menu
if %key% == 1x29 goto change_my_menu
if %key% == 1x30 goto change_my_menu
if %key% == 1x31 goto change_my_menu
if %key% == 1x36 goto change_my_menu
if %key% == 1x37 goto change_my_menu
if %key% == 1x38 goto change_my_menu
if %key% == 1x39 goto change_my_menu
if %key% == 1x40 goto change_my_menu
if %key% == 1x41 goto change_my_menu
if %key% == 1x16 goto change_my_menu
if %key% == 1x17 goto change_my_menu
if %key% == 1x18 goto change_my_menu
if %key% == 1x19 goto change_my_menu
if %key% == 1x20 goto change_my_menu
if %key% == 1x21 goto change_my_menu
if %key% == 1x22 goto change_my_menu
if %key% == 1x23 goto change_my_menu
if %key% == 1x16 goto change_my_menu
if %key% == 1x17 goto change_my_menu
goto main_interface

:demo
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View   "&bg print %bgsel%%txsel% " Help "& bg print %bgmen%%txmen% " "
Echo.
bg.exe print %bg%%tx% "                                "&bg print %bgsel%%txsel% " Tutorial "    
Echo.
bg.exe print %bg%%tx% "                                "&bg print %bgmen%%txmen% " About..  "    
Echo.
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                     
Echo. ^<-- Go back   Down  Up  Reset  Page:1                        
Echo.                                                                              
Echo. Initializing tutorial...                                                     
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
set "spi=0F \DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\n"
set "spi=%spi% 0F \DB a0 \DB\DB 0a Loading... a0 \DB\DB 0F \DB\n"
set "spi=%spi%\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\n"
if not "%cone%"=="true" bg sprite 9 30 %spi%
call :newloop
set noteline=
::if "%viewingnote%"=="true" goto skiplol
::if not "%editingnote%"=="true" set demo=true
:skiplol
call :load_help
call :resetpages
goto realview
goto realview
goto realview
goto realview
goto realview
goto realview
goto realview
goto realview
goto realview
goto realview
goto realview
goto realview
goto realview
goto realview
goto realview
goto realview

:aboutnote
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View   "&bg print %bgsel%%txsel% " Help "& bg print %bgmen%%txmen% " "
Echo.
bg.exe print %bg%%tx% "                                "&bg print %bgmen%%txmen% " Tutorial "    
Echo.
bg.exe print %bg%%tx% "                                "&bg print %bgsel%%txsel% " About..  "    
Echo.
:aboutnote1
echo %tab%%bck% 2>nul&set /p=<nul
goto returnmain

:returnmain
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                               
Echo.                                                              
Echo.                                                               
Echo.                                                              
Echo.                                                               
Echo.                                                              
Echo.                                                               
Echo.                                                              
Echo.                                                               
Echo.                                                              
Echo.                                                               
Echo.                                                              
Echo.                                                               
Echo.                                                              
Echo.                                                               
Echo.                                                              
Echo.                                                               
Echo.                                                              
call :aboutsection
cls
goto main_interface
:aboutsection
echo %tab%%bck% 2>nul&set /p=<nul
color e0
cls
echo.
echo.
echo.
echo.
echo.                             ____
echo.                            ^|    ^|
echo.                            ^|^|^|^|^|^|
echo.                            ^|^|^|^|^|^|
echo.                            ^|^|^|^|^|^|   GUI notepad
echo.                            ^|^|^|^|^|^|   Version 2.01
echo.                            ^|^|^|^|^|^|   Created by: Markus Maal
echo.                            ^|^|^|^|^|^|   Command line interface by: Markus Maal
echo.                            ^|^|^|^|^|^|   
echo.                            ^|____^|   Click left mouse button to continue...
echo.                             \__/
echo.                              \/===================
echo.
echo.
echo.
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
color %bg%%tx%
goto :eof

:add_time
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File  "&bg print %bgsel%%txsel% "  Edit  "&bg print %bgmen%%txmen% "  Format    View    Help  "
Echo.
bg print %bg%%tx% "        "&bg print %bgsel%%txsel% " Add Date and time..  "
Echo.
bg print %bg%%tx% "        "&bg print %bgmen%%txmen% " Change line          "
set note%noteline%=%date% %time%
goto mousenote

:color_dialog
set da=t
color %bg%%tx%
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit  "&bg print %bgsel%%txsel% "  Format  "&bg print %bgmen%%txmen% "  View    Help  "
Echo.
bg print %bg%%tx% "                "& bg print %bgsel%%txsel% " Colors..    "
:color_dialog_real
if "%focus%"=="Menus " goto menu_color_dialog
if "%focus%"=="Menus2" goto menu2_color_dialog
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                          
Echo.
bg print %txsel%%bgsel% "                               "&bg print %bgmen%C "X"&bg print %txsel%%bgsel% "  "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% "           Colors               "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Background          Text       "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Black               Black      "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Blue                Blue       "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Green               Green      "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Aqua                Aqua       "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Red                 Red        "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Purple              Purple     "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Yellow              Yellow     "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " White               White      "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Grey                Grey       "&bg print %txsel%%bgsel% " "
Echo.
if "%lightcol%"=="true" bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Focus: Main colors  Light [X]  "&bg print %txsel%%bgsel% " "
if not "%lightcol%"=="true" bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Focus: Main colors  Light [ ]  "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% "                                  "
Echo.
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if %key% == 16x3 set focus=Menus &goto color_dialog_real
if %key% == 16x4 set focus=Menus &goto color_dialog_real
if %key% == 16x5 set focus=Menus &goto color_dialog_real
if %key% == 16x6 set focus=Menus &goto color_dialog_real
if %key% == 16x7 set focus=Menus &goto color_dialog_real
if "%lightcol%"=="true" call :lightcolors&goto skipeverythang
if %key% == 7x2 set bg=0&color %bg%%tx%
if %key% == 7x3 set bg=0&color %bg%%tx%
if %key% == 7x4 set bg=0&color %bg%%tx%
if %key% == 7x5 set bg=0&color %bg%%tx%
if %key% == 7x6 set bg=0&color %bg%%tx%
if %key% == 8x2 set bg=1&color %bg%%tx%
if %key% == 8x3 set bg=1&color %bg%%tx%
if %key% == 8x4 set bg=1&color %bg%%tx%
if %key% == 8x5 set bg=1&color %bg%%tx%
if %key% == 9x2 set bg=2&color %bg%%tx%
if %key% == 9x3 set bg=2&color %bg%%tx%
if %key% == 9x4 set bg=2&color %bg%%tx%
if %key% == 9x5 set bg=2&color %bg%%tx%
if %key% == 9x6 set bg=2&color %bg%%tx%
if %key% == 10x2 set bg=3&color %bg%%tx%
if %key% == 10x3 set bg=3&color %bg%%tx%
if %key% == 10x4 set bg=3&color %bg%%tx%
if %key% == 10x5 set bg=3&color %bg%%tx%
if %key% == 11x2 set bg=4&color %bg%%tx%
if %key% == 11x3 set bg=4&color %bg%%tx%
if %key% == 11x4 set bg=4&color %bg%%tx%
if %key% == 12x2 set bg=5&color %bg%%tx%
if %key% == 12x3 set bg=5&color %bg%%tx%
if %key% == 12x4 set bg=5&color %bg%%tx%
if %key% == 12x5 set bg=5&color %bg%%tx%
if %key% == 12x6 set bg=5&color %bg%%tx%
if %key% == 12x7 set bg=5&color %bg%%tx%
if %key% == 13x2 set bg=6&color %bg%%tx%
if %key% == 13x3 set bg=6&color %bg%%tx%
if %key% == 13x4 set bg=6&color %bg%%tx%
if %key% == 13x5 set bg=6&color %bg%%tx%
if %key% == 13x6 set bg=6&color %bg%%tx%
if %key% == 13x7 set bg=6&color %bg%%tx%
if %key% == 14x2 set bg=7&color %bg%%tx%
if %key% == 14x3 set bg=7&color %bg%%tx%
if %key% == 14x4 set bg=7&color %bg%%tx%
if %key% == 14x5 set bg=7&color %bg%%tx%
if %key% == 14x6 set bg=7&color %bg%%tx%
if %key% == 15x2 set bg=8&color %bg%%tx%
if %key% == 15x3 set bg=8&color %bg%%tx%
if %key% == 15x4 set bg=8&color %bg%%tx%
if %key% == 15x5 set bg=8&color %bg%%tx%
if %key% == 7x22 set tx=0&color %bg%%tx%
if %key% == 7x23 set tx=0&color %bg%%tx%
if %key% == 7x24 set tx=0&color %bg%%tx%
if %key% == 7x25 set tx=0&color %bg%%tx%
if %key% == 7x26 set tx=0&color %bg%%tx%
if %key% == 8x22 set tx=1&color %bg%%tx%
if %key% == 8x23 set tx=1&color %bg%%tx%
if %key% == 8x24 set tx=1&color %bg%%tx%
if %key% == 8x25 set tx=1&color %bg%%tx%
if %key% == 9x22 set tx=2&color %bg%%tx%
if %key% == 9x23 set tx=2&color %bg%%tx%
if %key% == 9x24 set tx=2&color %bg%%tx%
if %key% == 9x25 set tx=2&color %bg%%tx%
if %key% == 9x26 set tx=2&color %bg%%tx%
if %key% == 10x22 set tx=3&color %bg%%tx%
if %key% == 10x23 set tx=3&color %bg%%tx%
if %key% == 10x24 set tx=3&color %bg%%tx%
if %key% == 10x25 set tx=3&color %bg%%tx%
if %key% == 11x22 set tx=4&color %bg%%tx%
if %key% == 11x23 set tx=4&color %bg%%tx%
if %key% == 11x24 set tx=4&color %bg%%tx%
if %key% == 12x22 set tx=5&color %bg%%tx%
if %key% == 12x23 set tx=5&color %bg%%tx%
if %key% == 12x24 set tx=5&color %bg%%tx%
if %key% == 12x25 set tx=5&color %bg%%tx%
if %key% == 12x26 set tx=5&color %bg%%tx%
if %key% == 12x27 set tx=5&color %bg%%tx%
if %key% == 13x22 set tx=6&color %bg%%tx%
if %key% == 13x23 set tx=6&color %bg%%tx%
if %key% == 13x24 set tx=6&color %bg%%tx%
if %key% == 13x25 set tx=6&color %bg%%tx%
if %key% == 13x26 set tx=6&color %bg%%tx%
if %key% == 13x27 set tx=6&color %bg%%tx%
if %key% == 14x22 set tx=7&color %bg%%tx%
if %key% == 14x23 set tx=7&color %bg%%tx%
if %key% == 14x24 set tx=7&color %bg%%tx%
if %key% == 14x25 set tx=7&color %bg%%tx%
if %key% == 14x26 set tx=7&color %bg%%tx%
if %key% == 15x22 set tx=8&color %bg%%tx%
if %key% == 15x23 set tx=8&color %bg%%tx%
if %key% == 15x24 set tx=8&color %bg%%tx%
if %key% == 15x25 set tx=8&color %bg%%tx%
:skipeverythang
if %key% == 4x31 goto main_interface
if %key% == 16x29 call :checklight
goto color_dialog_real


:lightcolors
if %key% == 7x2 set bg=8&color %bg%%tx%
if %key% == 7x3 set bg=8&color %bg%%tx%
if %key% == 7x4 set bg=8&color %bg%%tx%
if %key% == 7x5 set bg=8&color %bg%%tx%
if %key% == 7x6 set bg=8&color %bg%%tx%
if %key% == 8x2 set bg=9&color %bg%%tx%
if %key% == 8x3 set bg=9&color %bg%%tx%
if %key% == 8x4 set bg=9&color %bg%%tx%
if %key% == 8x5 set bg=9&color %bg%%tx%
if %key% == 9x2 set bg=A&color %bg%%tx%
if %key% == 9x3 set bg=A&color %bg%%tx%
if %key% == 9x4 set bg=A&color %bg%%tx%
if %key% == 9x5 set bg=A&color %bg%%tx%
if %key% == 9x6 set bg=A&color %bg%%tx%
if %key% == 10x2 set bg=B&color %bg%%tx%
if %key% == 10x3 set bg=B&color %bg%%tx%
if %key% == 10x4 set bg=B&color %bg%%tx%
if %key% == 10x5 set bg=B&color %bg%%tx%
if %key% == 11x2 set bg=C&color %bg%%tx%
if %key% == 11x3 set bg=C&color %bg%%tx%
if %key% == 11x4 set bg=C&color %bg%%tx%
if %key% == 12x2 set bg=D&color %bg%%tx%
if %key% == 12x3 set bg=D&color %bg%%tx%
if %key% == 12x4 set bg=D&color %bg%%tx%
if %key% == 12x5 set bg=D&color %bg%%tx%
if %key% == 12x6 set bg=D&color %bg%%tx%
if %key% == 12x7 set bg=D&color %bg%%tx%
if %key% == 13x2 set bg=E&color %bg%%tx%
if %key% == 13x3 set bg=E&color %bg%%tx%
if %key% == 13x4 set bg=E&color %bg%%tx%
if %key% == 13x5 set bg=E&color %bg%%tx%
if %key% == 13x6 set bg=E&color %bg%%tx%
if %key% == 13x7 set bg=E&color %bg%%tx%
if %key% == 14x2 set bg=F&color %bg%%tx%
if %key% == 14x3 set bg=F&color %bg%%tx%
if %key% == 14x4 set bg=F&color %bg%%tx%
if %key% == 14x5 set bg=F&color %bg%%tx%
if %key% == 14x6 set bg=F&color %bg%%tx%
if %key% == 15x2 set bg=7&color %bg%%tx%
if %key% == 15x3 set bg=7&color %bg%%tx%
if %key% == 15x4 set bg=7&color %bg%%tx%
if %key% == 15x5 set bg=7&color %bg%%tx%
if %key% == 7x22 set tx=8&color %bg%%tx%
if %key% == 7x23 set tx=8&color %bg%%tx%
if %key% == 7x24 set tx=8&color %bg%%tx%
if %key% == 7x25 set tx=8&color %bg%%tx%
if %key% == 7x26 set tx=8&color %bg%%tx%
if %key% == 8x22 set tx=9&color %bg%%tx%
if %key% == 8x23 set tx=9&color %bg%%tx%
if %key% == 8x24 set tx=9&color %bg%%tx%
if %key% == 8x25 set tx=9&color %bg%%tx%
if %key% == 9x22 set tx=A&color %bg%%tx%
if %key% == 9x23 set tx=A&color %bg%%tx%
if %key% == 9x24 set tx=A&color %bg%%tx%
if %key% == 9x25 set tx=A&color %bg%%tx%
if %key% == 9x26 set tx=A&color %bg%%tx%
if %key% == 10x22 set tx=B&color %bg%%tx%
if %key% == 10x23 set tx=B&color %bg%%tx%
if %key% == 10x24 set tx=B&color %bg%%tx%
if %key% == 10x25 set tx=B&color %bg%%tx%
if %key% == 11x22 set tx=C&color %bg%%tx%
if %key% == 11x23 set tx=C&color %bg%%tx%
if %key% == 11x24 set tx=C&color %bg%%tx%
if %key% == 12x22 set tx=D&color %bg%%tx%
if %key% == 12x23 set tx=D&color %bg%%tx%
if %key% == 12x24 set tx=D&color %bg%%tx%
if %key% == 12x25 set tx=D&color %bg%%tx%
if %key% == 12x26 set tx=D&color %bg%%tx%
if %key% == 12x27 set tx=D&color %bg%%tx%
if %key% == 13x22 set tx=E&color %bg%%tx%
if %key% == 13x23 set tx=E&color %bg%%tx%
if %key% == 13x24 set tx=E&color %bg%%tx%
if %key% == 13x25 set tx=E&color %bg%%tx%
if %key% == 13x26 set tx=E&color %bg%%tx%
if %key% == 13x27 set tx=E&color %bg%%tx%
if %key% == 14x22 set tx=F&color %bg%%tx%
if %key% == 14x23 set tx=F&color %bg%%tx%
if %key% == 14x24 set tx=F&color %bg%%tx%
if %key% == 14x25 set tx=F&color %bg%%tx%
if %key% == 14x26 set tx=F&color %bg%%tx%
if %key% == 15x22 set tx=7&color %bg%%tx%
if %key% == 15x23 set tx=7&color %bg%%tx%
if %key% == 15x24 set tx=7&color %bg%%tx%
if %key% == 15x25 set tx=7&color %bg%%tx%
goto :eof

:lightmenucolors
if %key% == 7x2 set bgmen=8&color %bg%%tx%
if %key% == 7x3 set bgmen=8&color %bg%%tx%
if %key% == 7x4 set bgmen=8&color %bg%%tx%
if %key% == 7x5 set bgmen=8&color %bg%%tx%
if %key% == 7x6 set bgmen=8&color %bg%%tx%
if %key% == 8x2 set bgmen=9&color %bg%%tx%
if %key% == 8x3 set bgmen=9&color %bg%%tx%
if %key% == 8x4 set bgmen=9&color %bg%%tx%
if %key% == 8x5 set bgmen=9&color %bg%%tx%
if %key% == 9x2 set bgmen=A&color %bg%%tx%
if %key% == 9x3 set bgmen=A&color %bg%%tx%
if %key% == 9x4 set bgmen=A&color %bg%%tx%
if %key% == 9x5 set bgmen=A&color %bg%%tx%
if %key% == 9x6 set bgmen=A&color %bg%%tx%
if %key% == 10x2 set bgmen=B&color %bg%%tx%
if %key% == 10x3 set bgmen=B&color %bg%%tx%
if %key% == 10x4 set bgmen=B&color %bg%%tx%
if %key% == 10x5 set bgmen=B&color %bg%%tx%
if %key% == 11x2 set bgmen=C&color %bg%%tx%
if %key% == 11x3 set bgmen=C&color %bg%%tx%
if %key% == 11x4 set bgmen=C&color %bg%%tx%
if %key% == 12x2 set bgmen=D&color %bg%%tx%
if %key% == 12x3 set bgmen=D&color %bg%%tx%
if %key% == 12x4 set bgmen=D&color %bg%%tx%
if %key% == 12x5 set bgmen=D&color %bg%%tx%
if %key% == 12x6 set bgmen=D&color %bg%%tx%
if %key% == 12x7 set bgmen=D&color %bg%%tx%
if %key% == 13x2 set bgmen=E&color %bg%%tx%
if %key% == 13x3 set bgmen=E&color %bg%%tx%
if %key% == 13x4 set bgmen=E&color %bg%%tx%
if %key% == 13x5 set bgmen=E&color %bg%%tx%
if %key% == 13x6 set bgmen=E&color %bg%%tx%
if %key% == 13x7 set bgmen=E&color %bg%%tx%
if %key% == 14x2 set bgmen=F&color %bg%%tx%
if %key% == 14x3 set bgmen=F&color %bg%%tx%
if %key% == 14x4 set bgmen=F&color %bg%%tx%
if %key% == 14x5 set bgmen=F&color %bg%%tx%
if %key% == 14x6 set bgmen=F&color %bg%%tx%
if %key% == 15x2 set bgmen=7&color %bg%%tx%
if %key% == 15x3 set bgmen=7&color %bg%%tx%
if %key% == 15x4 set bgmen=7&color %bg%%tx%
if %key% == 15x5 set bgmen=7&color %bg%%tx%
if %key% == 7x22 set txmen=8&color %bg%%tx%
if %key% == 7x23 set txmen=8&color %bg%%tx%
if %key% == 7x24 set txmen=8&color %bg%%tx%
if %key% == 7x25 set txmen=8&color %bg%%tx%
if %key% == 7x26 set txmen=8&color %bg%%tx%
if %key% == 8x22 set txmen=9&color %bg%%tx%
if %key% == 8x23 set txmen=9&color %bg%%tx%
if %key% == 8x24 set txmen=9&color %bg%%tx%
if %key% == 8x25 set txmen=9&color %bg%%tx%
if %key% == 9x22 set txmen=A&color %bg%%tx%
if %key% == 9x23 set txmen=A&color %bg%%tx%
if %key% == 9x24 set txmen=A&color %bg%%tx%
if %key% == 9x25 set txmen=A&color %bg%%tx%
if %key% == 9x26 set txmen=A&color %bg%%tx%
if %key% == 10x22 set txmen=B&color %bg%%tx%
if %key% == 10x23 set txmen=B&color %bg%%tx%
if %key% == 10x24 set txmen=B&color %bg%%tx%
if %key% == 10x25 set txmen=B&color %bg%%tx%
if %key% == 11x22 set txmen=C&color %bg%%tx%
if %key% == 11x23 set txmen=C&color %bg%%tx%
if %key% == 11x24 set txmen=C&color %bg%%tx%
if %key% == 12x22 set txmen=D&color %bg%%tx%
if %key% == 12x23 set txmen=D&color %bg%%tx%
if %key% == 12x24 set txmen=D&color %bg%%tx%
if %key% == 12x25 set txmen=D&color %bg%%tx%
if %key% == 12x26 set txmen=D&color %bg%%tx%
if %key% == 12x27 set txmen=D&color %bg%%tx%
if %key% == 13x22 set txmen=E&color %bg%%tx%
if %key% == 13x23 set txmen=E&color %bg%%tx%
if %key% == 13x24 set txmen=E&color %bg%%tx%
if %key% == 13x25 set txmen=E&color %bg%%tx%
if %key% == 13x26 set txmen=E&color %bg%%tx%
if %key% == 13x27 set txmen=E&color %bg%%tx%
if %key% == 14x22 set txmen=F&color %bg%%tx%
if %key% == 14x23 set txmen=F&color %bg%%tx%
if %key% == 14x24 set txmen=F&color %bg%%tx%
if %key% == 14x25 set txmen=F&color %bg%%tx%
if %key% == 14x26 set txmen=F&color %bg%%tx%
if %key% == 15x22 set txmen=7&color %bg%%tx%
if %key% == 15x23 set txmen=7&color %bg%%tx%
if %key% == 15x24 set txmen=7&color %bg%%tx%
if %key% == 15x25 set txmen=7&color %bg%%tx%
goto :eof


:lightselcolors
if %key% == 7x2 set bgsel=8&color %bg%%tx%
if %key% == 7x3 set bgsel=8&color %bg%%tx%
if %key% == 7x4 set bgsel=8&color %bg%%tx%
if %key% == 7x5 set bgsel=8&color %bg%%tx%
if %key% == 7x6 set bgsel=8&color %bg%%tx%
if %key% == 8x2 set bgsel=9&color %bg%%tx%
if %key% == 8x3 set bgsel=9&color %bg%%tx%
if %key% == 8x4 set bgsel=9&color %bg%%tx%
if %key% == 8x5 set bgsel=9&color %bg%%tx%
if %key% == 9x2 set bgsel=A&color %bg%%tx%
if %key% == 9x3 set bgsel=A&color %bg%%tx%
if %key% == 9x4 set bgsel=A&color %bg%%tx%
if %key% == 9x5 set bgsel=A&color %bg%%tx%
if %key% == 9x6 set bgsel=A&color %bg%%tx%
if %key% == 10x2 set bgsel=B&color %bg%%tx%
if %key% == 10x3 set bgsel=B&color %bg%%tx%
if %key% == 10x4 set bgsel=B&color %bg%%tx%
if %key% == 10x5 set bgsel=B&color %bg%%tx%
if %key% == 11x2 set bgsel=C&color %bg%%tx%
if %key% == 11x3 set bgsel=C&color %bg%%tx%
if %key% == 11x4 set bgsel=C&color %bg%%tx%
if %key% == 12x2 set bgsel=D&color %bg%%tx%
if %key% == 12x3 set bgsel=D&color %bg%%tx%
if %key% == 12x4 set bgsel=D&color %bg%%tx%
if %key% == 12x5 set bgsel=D&color %bg%%tx%
if %key% == 12x6 set bgsel=D&color %bg%%tx%
if %key% == 12x7 set bgsel=D&color %bg%%tx%
if %key% == 13x2 set bgsel=E&color %bg%%tx%
if %key% == 13x3 set bgsel=E&color %bg%%tx%
if %key% == 13x4 set bgsel=E&color %bg%%tx%
if %key% == 13x5 set bgsel=E&color %bg%%tx%
if %key% == 13x6 set bgsel=E&color %bg%%tx%
if %key% == 13x7 set bgsel=E&color %bg%%tx%
if %key% == 14x2 set bgsel=F&color %bg%%tx%
if %key% == 14x3 set bgsel=F&color %bg%%tx%
if %key% == 14x4 set bgsel=F&color %bg%%tx%
if %key% == 14x5 set bgsel=F&color %bg%%tx%
if %key% == 14x6 set bgsel=F&color %bg%%tx%
if %key% == 15x2 set bgsel=7&color %bg%%tx%
if %key% == 15x3 set bgsel=7&color %bg%%tx%
if %key% == 15x4 set bgsel=7&color %bg%%tx%
if %key% == 15x5 set bgsel=7&color %bg%%tx%
if %key% == 7x22 set txsel=8&color %bg%%tx%
if %key% == 7x23 set txsel=8&color %bg%%tx%
if %key% == 7x24 set txsel=8&color %bg%%tx%
if %key% == 7x25 set txsel=8&color %bg%%tx%
if %key% == 7x26 set txsel=8&color %bg%%tx%
if %key% == 8x22 set txsel=9&color %bg%%tx%
if %key% == 8x23 set txsel=9&color %bg%%tx%
if %key% == 8x24 set txsel=9&color %bg%%tx%
if %key% == 8x25 set txsel=9&color %bg%%tx%
if %key% == 9x22 set txsel=A&color %bg%%tx%
if %key% == 9x23 set txsel=A&color %bg%%tx%
if %key% == 9x24 set txsel=A&color %bg%%tx%
if %key% == 9x25 set txsel=A&color %bg%%tx%
if %key% == 9x26 set txsel=A&color %bg%%tx%
if %key% == 10x22 set txsel=B&color %bg%%tx%
if %key% == 10x23 set txsel=B&color %bg%%tx%
if %key% == 10x24 set txsel=B&color %bg%%tx%
if %key% == 10x25 set txsel=B&color %bg%%tx%
if %key% == 11x22 set txsel=C&color %bg%%tx%
if %key% == 11x23 set txsel=C&color %bg%%tx%
if %key% == 11x24 set txsel=C&color %bg%%tx%
if %key% == 12x22 set txsel=D&color %bg%%tx%
if %key% == 12x23 set txsel=D&color %bg%%tx%
if %key% == 12x24 set txsel=D&color %bg%%tx%
if %key% == 12x25 set txsel=D&color %bg%%tx%
if %key% == 12x26 set txsel=D&color %bg%%tx%
if %key% == 12x27 set txsel=D&color %bg%%tx%
if %key% == 13x22 set txsel=E&color %bg%%tx%
if %key% == 13x23 set txsel=E&color %bg%%tx%
if %key% == 13x24 set txsel=E&color %bg%%tx%
if %key% == 13x25 set txsel=E&color %bg%%tx%
if %key% == 13x26 set txsel=E&color %bg%%tx%
if %key% == 13x27 set txsel=E&color %bg%%tx%
if %key% == 14x22 set txsel=F&color %bg%%tx%
if %key% == 14x23 set txsel=F&color %bg%%tx%
if %key% == 14x24 set txsel=F&color %bg%%tx%
if %key% == 14x25 set txsel=F&color %bg%%tx%
if %key% == 14x26 set txsel=F&color %bg%%tx%
if %key% == 15x22 set txsel=7&color %bg%%tx%
if %key% == 15x23 set txsel=7&color %bg%%tx%
if %key% == 15x24 set txsel=7&color %bg%%tx%
if %key% == 15x25 set txsel=7&color %bg%%tx%
goto :eof

:checklight
if "%lightcol%"=="" set lightcol=true&goto :eof
if "%lightcol%"=="true" set lightcol=false&goto :eof
if "%lightcol%"=="false" set lightcol=true&goto :eof
goto :eof

:menu_color_dialog
if "%focus%"=="Menus2" goto menu2_color_dialog
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                          
Echo.
bg print %txsel%%bgsel% "                               "&bg print %bgmen%C "X"&bg print %txsel%%bgsel% "  "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% "           Colors               "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Background          Text       "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Black               Black      "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Blue                Blue       "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Green               Green      "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Aqua                Aqua       "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Red                 Red        "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Purple              Purple     "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Yellow              Yellow     "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " White               White      "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Grey                Grey       "&bg print %txsel%%bgsel% " "
Echo.
if not "%lightcol%"=="true" bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Focus: Menus        Light [ ]  "&bg print %txsel%%bgsel% " "
if "%lightcol%"=="true" bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Focus: Menus        Light [X]  "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% "                                  "
Echo.
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if "%lightcol%"=="true" call :lightmenucolors&goto skipeverythang2
if %key% == 7x2 set bgmen=0
if %key% == 7x3 set bgmen=0
if %key% == 7x4 set bgmen=0
if %key% == 7x5 set bgmen=0
if %key% == 7x6 set bgmen=0
if %key% == 8x2 set bgmen=1
if %key% == 8x3 set bgmen=1
if %key% == 8x4 set bgmen=1
if %key% == 8x5 set bgmen=1
if %key% == 9x2 set bgmen=2
if %key% == 9x3 set bgmen=2
if %key% == 9x4 set bgmen=2
if %key% == 9x5 set bgmen=2
if %key% == 9x6 set bgmen=2
if %key% == 10x2 set bgmen=3
if %key% == 10x3 set bgmen=3
if %key% == 10x4 set bgmen=3
if %key% == 10x5 set bgmen=3
if %key% == 11x2 set bgmen=4
if %key% == 11x3 set bgmen=4
if %key% == 11x4 set bgmen=4
if %key% == 12x2 set bgmen=5
if %key% == 12x3 set bgmen=5
if %key% == 12x4 set bgmen=5
if %key% == 12x5 set bgmen=5
if %key% == 12x6 set bgmen=5
if %key% == 12x7 set bgmen=5
if %key% == 13x2 set bgmen=6
if %key% == 13x3 set bgmen=6
if %key% == 13x4 set bgmen=6
if %key% == 13x5 set bgmen=6
if %key% == 13x6 set bgmen=6
if %key% == 13x7 set bgmen=6
if %key% == 14x2 set bgmen=7
if %key% == 14x3 set bgmen=7
if %key% == 14x4 set bgmen=7
if %key% == 14x5 set bgmen=7
if %key% == 14x6 set bgmen=7
if %key% == 15x2 set bgmen=8
if %key% == 15x3 set bgmen=8
if %key% == 15x4 set bgmen=8
if %key% == 15x5 set bgmen=8
if %key% == 7x22 set txmen=0
if %key% == 7x23 set txmen=0
if %key% == 7x24 set txmen=0
if %key% == 7x25 set txmen=0
if %key% == 7x26 set txmen=0
if %key% == 8x22 set txmen=1
if %key% == 8x23 set txmen=1
if %key% == 8x24 set txmen=1
if %key% == 8x25 set txmen=1
if %key% == 9x22 set txmen=2
if %key% == 9x23 set txmen=2
if %key% == 9x24 set txmen=2
if %key% == 9x25 set txmen=2
if %key% == 9x26 set txmen=2
if %key% == 10x22 set txmen=3
if %key% == 10x23 set txmen=3
if %key% == 10x24 set txmen=3
if %key% == 10x25 set txmen=3
if %key% == 11x22 set txmen=4
if %key% == 11x23 set txmen=4
if %key% == 11x24 set txmen=4
if %key% == 12x22 set txmen=5
if %key% == 12x23 set txmen=5
if %key% == 12x24 set txmen=5
if %key% == 12x25 set txmen=5
if %key% == 12x26 set txmen=5
if %key% == 12x27 set txmen=5
if %key% == 13x22 set txmen=6
if %key% == 13x23 set txmen=6
if %key% == 13x24 set txmen=6
if %key% == 13x25 set txmen=6
if %key% == 13x26 set txmen=6
if %key% == 13x27 set txmen=6
if %key% == 14x22 set txmen=7
if %key% == 14x23 set txmen=7
if %key% == 14x24 set txmen=7
if %key% == 14x25 set txmen=7
if %key% == 14x26 set txmen=7
if %key% == 15x22 set txmen=8
if %key% == 15x23 set txmen=8
if %key% == 15x24 set txmen=8
if %key% == 15x25 set txmen=8
:skipeverythang2
if %key% == 16x3 set focus=Menus2
if %key% == 16x4 set focus=Menus2
if %key% == 16x5 set focus=Menus2
if %key% == 16x6 set focus=Menus2
if %key% == 16x7 set focus=Menus2
if %key% == 4x31 goto main_interface
if %key% == 16x29 call :checklight
goto menu_color_dialog

:menu2_color_dialog
if "%focus%"=="Main" goto color_dialog
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                          
Echo.
bg print %txsel%%bgsel% "                               "&bg print %bgmen%C "X"&bg print %txsel%%bgsel% "  "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% "           Colors               "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Background          Text       "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Black               Black      "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Blue                Blue       "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Green               Green      "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Aqua                Aqua       "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Red                 Red        "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Purple              Purple     "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Yellow              Yellow     "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " White               White      "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Grey                Grey       "&bg print %txsel%%bgsel% " "
Echo.
if not "%lightcol%"=="true" bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Focus: Selection    Light [ ]  "&bg print %txsel%%bgsel% " "
if "%lightcol%"=="true" bg print %txsel%%bgsel% " "& bg print %bg%%tx% " Focus: Selection    Light [X]  "&bg print %txsel%%bgsel% " "
Echo.
bg print %txsel%%bgsel% "                                  "
Echo.
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if "%lightcol%"=="true" call :lightselcolors&goto skipeverythang3
if %key% == 7x2 set bgsel=0
if %key% == 7x3 set bgsel=0
if %key% == 7x4 set bgsel=0
if %key% == 7x5 set bgsel=0
if %key% == 7x6 set bgsel=0
if %key% == 8x2 set bgsel=1
if %key% == 8x3 set bgsel=1
if %key% == 8x4 set bgsel=1
if %key% == 8x5 set bgsel=1
if %key% == 9x2 set bgsel=2
if %key% == 9x3 set bgsel=2
if %key% == 9x4 set bgsel=2
if %key% == 9x5 set bgsel=2
if %key% == 9x6 set bgsel=2
if %key% == 10x2 set bgsel=3
if %key% == 10x3 set bgsel=3
if %key% == 10x4 set bgsel=3
if %key% == 10x5 set bgsel=3
if %key% == 11x2 set bgsel=4
if %key% == 11x3 set bgsel=4
if %key% == 11x4 set bgsel=4
if %key% == 12x2 set bgsel=5
if %key% == 12x3 set bgsel=5
if %key% == 12x4 set bgsel=5
if %key% == 12x5 set bgsel=5
if %key% == 12x6 set bgsel=5
if %key% == 12x7 set bgsel=5
if %key% == 13x2 set bgsel=6
if %key% == 13x3 set bgsel=6
if %key% == 13x4 set bgsel=6
if %key% == 13x5 set bgsel=6
if %key% == 13x6 set bgsel=6
if %key% == 13x7 set bgsel=6
if %key% == 14x2 set bgsel=7
if %key% == 14x3 set bgsel=7
if %key% == 14x4 set bgsel=7
if %key% == 14x5 set bgsel=7
if %key% == 14x6 set bgsel=7
if %key% == 15x2 set bgsel=8
if %key% == 15x3 set bgsel=8
if %key% == 15x4 set bgsel=8
if %key% == 15x5 set bgsel=8
if %key% == 7x22 set txsel=0
if %key% == 7x23 set txsel=0
if %key% == 7x24 set txsel=0
if %key% == 7x25 set txsel=0
if %key% == 7x26 set txsel=0
if %key% == 8x22 set txsel=1
if %key% == 8x23 set txsel=1
if %key% == 8x24 set txsel=1
if %key% == 8x25 set txsel=1
if %key% == 9x22 set txsel=2
if %key% == 9x23 set txsel=2
if %key% == 9x24 set txsel=2
if %key% == 9x25 set txsel=2
if %key% == 9x26 set txsel=2
if %key% == 10x22 set txsel=3
if %key% == 10x23 set txsel=3
if %key% == 10x24 set txsel=3
if %key% == 10x25 set txsel=3
if %key% == 11x22 set txsel=4
if %key% == 11x23 set txsel=4
if %key% == 11x24 set txsel=4
if %key% == 12x22 set txsel=5
if %key% == 12x23 set txsel=5
if %key% == 12x24 set txsel=5
if %key% == 12x25 set txsel=5
if %key% == 12x26 set txsel=5
if %key% == 12x27 set txsel=5
if %key% == 13x22 set txsel=6
if %key% == 13x23 set txsel=6
if %key% == 13x24 set txsel=6
if %key% == 13x25 set txsel=6
if %key% == 13x26 set txsel=6
if %key% == 13x27 set txsel=6
if %key% == 14x22 set txsel=7
if %key% == 14x23 set txsel=7
if %key% == 14x24 set txsel=7
if %key% == 14x25 set txsel=7
if %key% == 14x26 set txsel=7
if %key% == 15x22 set txsel=8
if %key% == 15x23 set txsel=8
if %key% == 15x24 set txsel=8
if %key% == 15x25 set txsel=8
:skipeverythang3
if %key% == 16x3 set focus=Main
if %key% == 16x4 set focus=Main
if %key% == 16x5 set focus=Main
if %key% == 16x6 set focus=Main
if %key% == 16x7 set focus=Main
if %key% == 4x31 goto main_interface
if %key% == 16x29 call :checklight
goto menu2_color_dialog

:note
set /a realine=%noteline%+1
bg cursor 1
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                              
Echo. Type exit to enter mouse mode
if exist notefile type %notefile%
Echo.                                                                              
Echo.ΙΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ»
Echo.Ί                                                                            Ί
Echo.ΘΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΌ
Echo.                                                                              
Echo. Line:%realine%                                                                     
Echo.                                                                              
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                  
Echo. Type exit to enter mouse mode
Echo.                                                                              
Echo.ΙΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ»
Echo.Ί                                                                            Ί
Echo.ΘΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΌ
Echo.                                                                              
Echo. Line:%realine%                                                                  
Echo.                                                                              
Echo. Display:                                                                     
Echo.                                                                              
if not "!note%realine%:~0,40!"=="~0,40" Echo. !note%realine%:~0,40!                                                   
if "!note%realine%:~0,40!"=="~0,40" Echo. (no display)                             
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
echo %tab%%bck% 2>nul&set /p=<nul
set noted=
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.
Echo. Type exit to enter mouse mode
Echo.                                                                              
Echo.ΙΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ»
set /p noted=Ί
Echo.ΘΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΌ
if "%noted%"=="exit" goto mousenote
if "%noted%"=="exit_" set noted=exit
if "%noted%"==".bs." set "note%noteline%=!note%noteline%:~-1!"&set /a noteline=%noteline%+1&goto note
if "%noted:~0,8%"==".prefix." set "note%noteline%=%noted:~8%!note%noteline%!"&set /a noteline=%noteline%+1&goto note
if "%noted:~0,8%"==".suffix." set "note%noteline%=!note%noteline%!%noted:~8%"&set /a noteline=%noteline%+1&goto note
set /a noteline=%noteline%+1
set note%noteline%=%noted%
set note=%noted%
goto note


:newnote
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgsel%%txsel% "  File  "&bg print %bgmen%%txmen% "  Edit    Format    View    Help  "
Echo.
bg print %bgsel%%txsel% " New note     "
echo.
bg print %bgmen%%txmen% " Load note    "
Echo.
bg print %bgmen%%txmen% " Save note    "
Echo.
bg print %bgmen%%txmen% " Exit         "
Echo.
set menu=true
call :newloop
goto mousenote
:newloop
set "spi=0F \DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\n"
set "spi=%spi% 0F \DB a0 \DB\DB 0d Clearing.. d0 \DB\DB 0F \DB\n"
set "spi=%spi%\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\n"
if not "%cone%"=="true" bg sprite 9 30 %spi%
set linenum=0
set penalty=0
set /a totalnum=%totalnum%-9
if not "%menu%"=="false" set menu=true
set linenum=0
set loopenalty=0
:newloop13
set /a linenum=%linenum%+1
if "!note%linenum%!"=="" set /a loopenalty=%loopenalty%+1
if not "!note%linenum%!"=="" set loopenalty=0
set "note%linenum%="
if "%loopenalty%"=="50" goto :eof
goto newloop13
:cntline
set /a linenum=%linenum%+1
if not "!note%linenum%!"=="" set penalty=0&set /a totalnum=%totalnum%+1
if "!note%linenum%!"=="" set /a penalty=%penalty%+1&set /a totalnum=%totalnum%+1
if "%penalty%"=="10" goto :eof
title counting %linenum%
goto cntline
:muarnew
title GUI notepad
set noteline=1
if "%menu%"=="true" goto muarrr
goto :eof
:muarrr
set menu=
set note=
set noteline=0
set noted=
set page=1
goto mousenote
:exit
echo %tab%%bck% 2>nul&set /p=<nul
Echo.
Echo.
Echo.
Echo.
Echo.
bg print %bgsel%%txsel% " Exit         "
Echo.
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgsel%%txsel% "  File  "&bg print %bgmen%%txmen% "  Edit    Format    View    Help  "
Echo.
bg print %bgmen%%txmen% " New note     "
echo.
bg print %bgmen%%txmen% " Load note    "
Echo.
bg print %bgmen%%txmen% " Save note    "
Echo.
bg print %bgsel%%txsel% " Exit         "
bg cursor 1
endlocal
cls
echo GUI notepad 2.01
echo Session ended
goto :eof

:mousenote
if not "%da%"=="t" set da=t&color 07
if "%inhelp%"=="true" set inhelp=false&call :newloop&goto loadingothers
title %systemroot%\System32\cmd.exe
if "%demo%"=="true" set demo=&goto realview
set editingnote=true
set viewingnote=false
set /a realine=%noteline%+1
bg cursor 0
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                  
Echo. ^<-- Go back                                                     
Echo.                                                                              
Echo.ΙΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ»
Echo.Ί                                                                            Ί
Echo.ΘΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΌ
Echo.                                                                              
Echo. Line:%realine%                                                                  
Echo.                                                                              
Echo. Display:                                                                     
Echo.                                                                              
if not "!note%realine%:~0,40!"=="~0,40" Echo. !note%realine%:~0,40!                                                   
if "!note%realine%:~0,40!"=="~0,40" Echo. (no display)                             
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if %key% == 1x1 goto menu
if %key% == 1x2 goto menu
if %key% == 1x3 goto menu
if %key% == 1x4 goto menu
if %key% == 1x5 goto menu
if %key% == 1x6 goto menu
if %key% == 1x9 goto menu3
if %key% == 1x10 goto menu3
if %key% == 1x11 goto menu3
if %key% == 1x12 goto menu3
if %key% == 1x13 goto menu3
if %key% == 1x14 goto menu3
if %key% == 1x28 goto menu4
if %key% == 1x29 goto menu4
if %key% == 1x30 goto menu4
if %key% == 1x31 goto menu4
if %key% == 1x36 goto menu5
if %key% == 1x37 goto menu5
if %key% == 1x38 goto menu5
if %key% == 1x39 goto menu5
if %key% == 1x40 goto menu5
if %key% == 1x41 goto menu5
if %key% == 3x1 goto gostart_now
if %key% == 3x2 goto gostart_now
if %key% == 3x3 goto gostart_now
if %key% == 3x4 goto gostart_now
if %key% == 3x5 goto gostart_now
if %key% == 3x6 goto gostart_now
if %key% == 3x7 goto gostart_now
if %key% == 3x8 goto gostart_now
if %key% == 3x9 goto gostart_now
if %key% == 9x6 goto edlin1
if %key% == 3x10 goto gostart_now
if %key% == 1x16 goto menu2
if %key% == 1x17 goto menu2
if %key% == 1x18 goto menu2
if %key% == 1x19 goto menu2
if %key% == 1x20 goto menu2
if %key% == 1x21 goto menu2
if %key% == 1x22 goto menu2
if %key% == 1x23 goto menu2
if %key% == 1x16 goto menu2
if %key% == 1x17 goto menu2
if %key% == 6x1 goto note
if %key% == 6x2 goto note
if %key% == 6x3 goto note
if %key% == 6x4 goto note
if %key% == 6x5 goto note
if %key% == 6x6 goto note
if %key% == 6x7 goto note
if %key% == 6x8 goto note
if %key% == 6x9 goto note
if %key% == 6x10 goto note
if %key% == 6x11 goto note
if %key% == 6x12 goto note
if %key% == 6x13 goto note
if %key% == 6x14 goto note
if %key% == 6x15 goto note
if %key% == 6x16 goto note
if %key% == 6x17 goto note
if %key% == 6x18 goto note
if %key% == 6x19 goto note
if %key% == 6x20 goto note
if %key% == 6x21 goto note
goto mousenote


:goview
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format   "&bg print %bgsel%%txsel% " View "& bg print %bgmen%%txmen% "   Help  "
Echo.
bg print %bg%%tx% "                          "&bg print %bgmen%%txmen% " Edit note    "
echo.
bg print %bg%%tx% "                          "&bg print %bgsel%%txsel% " View note    "
echo.
bg print %bg%%tx% "                          "&bg print %bgmen%%txmen% " Start screen "
echo.
goto realview

:edlin
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File  "&bg print %bgsel%%txsel% "  Edit  "&bg print %bgmen%%txmen% "  Format    View    Help  "
Echo.
bg print %bg%%tx% "        "&bg print %bgmen%%txmen% " Add Date and time..  "
Echo.
bg print %bg%%tx% "        "&bg print %bgsel%%txsel% " Change line          "
Echo.
bg print %bg%%tx% "        "&bg print %bgmen%%txmen% " Find/Replace         "
Echo.
:edlin1
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                  
Echo. ^<-- Go back                                                     
Echo.                                                                              
Echo.ΙΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ»
Echo.Ί                                                                            Ί
Echo.ΘΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΌ
Echo.                                                                              
Echo. Line:%realine%                                                                  
Echo.                                                                              
Echo. Display:                                                                     
Echo.                                                                              
if not "!note%realine%:~0,40!"=="~0,40" Echo. !note%realine%:~0,40!                                                   
if "!note%realine%:~0,40!"=="~0,40" Echo. (no display)                             
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                     
Echo. ^<-- Go back                    
Echo.                                                                              
Echo.ΙΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ»
Echo.Ί                                                                            Ί
Echo.ΘΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΌ
Echo.                                                                              
bg cursor 1
set /p noteline=.Line:
set /a noteline=%noteline%-1
bg cursor 0
goto mousenote
:flin
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File  "&bg print %bgsel%%txsel% "  Edit  "&bg print %bgmen%%txmen% "  Format    View    Help  "
Echo.
bg print %bg%%tx% "        "&bg print %bgmen%%txmen% " Add Date and time..  "
Echo.
bg print %bg%%tx% "        "&bg print %bgmen%%txmen% " Change line          "
Echo.
bg print %bg%%tx% "        "&bg print %bgsel%%txsel% " Find                 "
Echo.
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
echo.
echo.                                          
echo.                                          
echo.                                          
echo.                                          
bg print %bgmen%%txmen% "                                      "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% " Find what:                         "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% "                                    "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% "                                      "
echo.
goto findedit
if "%key%"=="8x12" goto replacedit
if "%key%"=="8x13" goto replacedit
if "%key%"=="8x14" goto replacedit
if "%key%"=="8x15" goto replacedit
if "%key%"=="8x16" goto replacedit
if "%key%"=="8x17" goto replacedit
if "%key%"=="8x18" goto replacedit
goto looptokens
:rlin
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File  "&bg print %bgsel%%txsel% "  Edit  "&bg print %bgmen%%txmen% "  Format    View    Help  "
Echo.
bg print %bg%%tx% "        "&bg print %bgmen%%txmen% " Add Date and time..  "
Echo.
bg print %bg%%tx% "        "&bg print %bgmen%%txmen% " Change line          "
Echo.
bg print %bg%%tx% "        "&bg print %bgmen%%txmen% " Find                 "
Echo.
bg print %bg%%tx% "        "&bg print %bgsel%%txsel% " Replace              "
Echo.
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
echo.
echo.                                          
echo.                                          
echo.                                          
echo.                                          
bg print %bgmen%%txmen% "                                      "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% " Replace what:                      "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% " "&bg print %bg%%tx% " Replace with:                      "&bg print %bgmen%%txmen% " "
echo.
bg print %bgmen%%txmen% "                                      "
echo.
:replacedit

echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
echo.
echo.                                          
echo.                                          
echo.                                          
echo.                                          
bg print %bgmen%%txmen% "                                      "
echo.
bg cursor 1
set /p rpe=Ϋ Replace what:
set /p rep=Ϋ Replace with:
bg cursor 0
set "spi=0F \DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\n"
set "spi=%spi% 0F \DB E0 \DB 0E Replacing... E0 \DB 0F \DB\n"
set "spi=%spi%\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\n"
if not "%cone%"=="true" bg sprite 6 30 %spi%
set /a sint=0
set /a pen=0
:replaceloop
set /a sint=%sint%+1
if "!note%sint%!"=="" set /a pen=%pen%+1
if not "!note%sint%!"=="" set /a pen=0
if %pen% GTR 100 goto endreplace
call :replacethat
goto replaceloop

:endreplace
goto main_interface

:replacethat
if "!note%sint%!"=="" set /a pen=%pen%+1
SET note%sint%=!note%sint%:%rpe%=%rep%!
goto :eof

:findedit

echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
echo.
echo.                                          
echo.                                          
echo.                                          
echo.                                          
bg print %bgmen%%txmen% "                                      "
echo.
set /p findwhat=Ϋ Find what:
set "spi=0F \DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\n"
set "spi=%spi% 0F \DB 90 \DB 09 Searching... 90 \DB 0F \DB\n"
set "spi=%spi%\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\n"
if not "%cone%"=="true" bg sprite 6 30 %spi%
set /a sint=%noteline%-1
set /a pen=0
:sloop
if %pen% GTR 10 goto esloop
set /a sint=%sint%+1
if "!note%sint%!"=="" set /a pen=%pen%+1&goto sloop
if not "!note%sint%!"=="" set /a pen=0
SET temp%sint%=!note%sint%:%findwhat%=!
if not "!temp%sint%!"=="!note%sint%!" goto successfind
set "temp%sint%="
goto sloop
:esloop
cls
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
echo.
echo.
echo. %findwhat% not found
echo.
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if %key% == 1x1 goto menu
if %key% == 1x2 goto menu
if %key% == 1x3 goto menu
if %key% == 1x4 goto menu
if %key% == 1x5 goto menu
if %key% == 1x6 goto menu
if %key% == 1x9 goto menu3
if %key% == 1x10 goto menu3
if %key% == 1x11 goto menu3
if %key% == 1x12 goto menu3
if %key% == 1x13 goto menu3
if %key% == 1x14 goto menu3
if %key% == 1x28 goto menu4
if %key% == 1x29 goto menu4
if %key% == 1x30 goto menu4
if %key% == 1x31 goto menu4
if %key% == 1x36 goto menu5
if %key% == 1x37 goto menu5
if %key% == 1x38 goto menu5
if %key% == 1x39 goto menu5
if %key% == 1x40 goto menu5
if %key% == 1x41 goto menu5
if %key% == 1x16 goto menu2
if %key% == 1x17 goto menu2
if %key% == 1x18 goto menu2
if %key% == 1x19 goto menu2
if %key% == 1x20 goto menu2
if %key% == 1x21 goto menu2
if %key% == 1x22 goto menu2
if %key% == 1x23 goto menu2
if %key% == 1x16 goto menu2
if %key% == 1x17 goto menu2
goto main_interface

:successfind
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                     
Echo.                                                                     
Echo.                                                                         
Echo.                                                                               
Echo.                                                                               
Echo.                                                                               
Echo.                                                                       
Echo.                                                                            
Echo.                                                                       
Echo.                                                                              
Echo.                                                                            
Echo.                                                                           
Echo.                                                                             
Echo.                                                                          
Echo.                                                                           
Echo.                                                                          
Echo.                                                                            
Echo.                                                                                
Echo.                                                                             
Echo.                                                                            
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
echo.
echo.
echo %findwhat% found at line %sint%
echo.
echo !note%sint%:~0,40!
echo.
echo. Find next
set "sant="
echo.
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if %key% == 1x1 goto menu
if %key% == 1x2 goto menu
if %key% == 1x3 goto menu
if %key% == 1x4 goto menu
if %key% == 1x5 goto menu
if %key% == 1x6 goto menu
if %key% == 1x9 goto menu3
if %key% == 1x10 goto menu3
if %key% == 1x11 goto menu3
if %key% == 1x12 goto menu3
if %key% == 1x13 goto menu3
if %key% == 1x14 goto menu3
if %key% == 1x28 goto menu4
if %key% == 1x29 goto menu4
if %key% == 1x30 goto menu4
if %key% == 1x31 goto menu4
if %key% == 1x36 goto menu5
if %key% == 1x37 goto menu5
if %key% == 1x38 goto menu5
if %key% == 1x39 goto menu5
if %key% == 1x40 goto menu5
if %key% == 1x41 goto menu5
if %key% == 1x16 goto menu2
if %key% == 1x17 goto menu2
if %key% == 1x18 goto menu2
if %key% == 1x19 goto menu2
if %key% == 1x20 goto menu2
if %key% == 1x21 goto menu2
if %key% == 1x22 goto menu2
if %key% == 1x23 goto menu2
if %key% == 1x16 goto menu2
if %key% == 1x17 goto menu2
if %key% == 7x1 (
if not "%cone%"=="true" bg sprite 6 30 %spi%
goto sloop
)
if %key% == 7x2 (
if not "%cone%"=="true" bg sprite 6 30 %spi%
goto sloop
)
if %key% == 7x3 (
if not "%cone%"=="true" bg sprite 6 30 %spi%
goto sloop
)
if %key% == 7x4 (
if not "%cone%"=="true" bg sprite 6 30 %spi%
goto sloop
)
if %key% == 7x5 (
if not "%cone%"=="true" bg sprite 6 30 %spi%
goto sloop
)
if %key% == 7x6 (
if not "%cone%"=="true" bg sprite 6 30 %spi%
goto sloop
)
if %key% == 7x7 (
if not "%cone%"=="true" bg sprite 6 30 %spi%
goto sloop
)
if %key% == 7x8 (
if not "%cone%"=="true" bg sprite 6 30 %spi%
goto sloop
)
if %key% == 7x9 (
if not "%cone%"=="true" bg sprite 6 30 %spi%
goto sloop
)
goto main_interface

:viewnote
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                     
Echo. ^<-- Go back   Down  Up  Reset  Page:%page%                        
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
Echo.                                                                              
goto :eof
:realview
if "%demo%"=="true" goto skipset
if not "%camma%"=="true" call :resetpages&set camma=true
set viewingnote=true
:skipset
if "%num1%"=="" call :resetpages
call :viewnote
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                     
if not "%inhelp%"=="true" Echo. ^<-- Go back   Down  Up  Reset  Page:%page%  Lines:%numa%-%numj%
if "%inhelp%"=="true" Echo. ^<-- Quit t.   Down  Up  Reset  Page:%page%  Lines:%numa%-%numj%
Echo.                                                                              
::Codename Chunk_SYS
Echo.!note%numa%!
Echo.!note%numb%!
Echo.!note%numc%!
Echo.!note%numd%!
Echo.!note%nume%!
Echo.!note%numf%!
Echo.!note%numg%!
Echo.!note%numh%!
Echo.!note%numi%!
Echo.!note%numj%!
Echo.
Echo.                                                                            
Echo.                                                                            
Echo.
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if %key% == 1x1 goto menu
if %key% == 1x2 goto menu
if %key% == 1x3 goto menu
if %key% == 1x4 goto menu
if %key% == 1x5 goto menu
if %key% == 1x6 goto menu
if %key% == 1x9 goto menu3
if %key% == 1x10 goto menu3
if %key% == 1x11 goto menu3
if %key% == 1x12 goto menu3
if %key% == 1x13 goto menu3
if %key% == 1x14 goto menu3
if %key% == 1x28 goto menu4
if %key% == 1x29 goto menu4
if %key% == 1x30 goto menu4
if %key% == 1x31 goto menu4
if %key% == 1x36 goto menu5
if %key% == 1x37 goto menu5
if %key% == 1x38 goto menu5
if %key% == 1x39 goto menu5
if %key% == 1x40 goto menu5
if %key% == 1x41 goto menu5
if %key% == 3x1 goto mousenote
if %key% == 3x2 goto mousenote
if %key% == 3x3 goto mousenote
if %key% == 3x4 goto mousenote
if %key% == 3x5 goto mousenote
if %key% == 3x6 goto mousenote
if %key% == 3x7 goto mousenote
if %key% == 3x8 goto mousenote
if %key% == 3x9 goto mousenote
if %key% == 3x15 goto realview1
if %key% == 3x16 goto realview1
if %key% == 3x17 goto realview1
if %key% == 3x18 goto realview1
if %key% == 3x21 goto subtract
if %key% == 3x22 goto subtract
if %key% == 3x24 call :resetpages
if %key% == 3x25 call :resetpages
if %key% == 3x26 call :resetpages
if %key% == 3x27 call :resetpages
if %key% == 3x28 call :resetpages
if %key% == 3x37 goto setpage
if %key% == 3x38 goto setpage
if %key% == 3x39 goto setpage
if %key% == 3x10 goto mousenote
if %key% == 1x16 goto menu2
if %key% == 1x17 goto menu2
if %key% == 1x18 goto menu2
if %key% == 1x19 goto menu2
if %key% == 1x20 goto menu2
if %key% == 1x21 goto menu2
if %key% == 1x22 goto menu2
if %key% == 1x23 goto menu2
if %key% == 1x16 goto menu2
if %key% == 1x17 goto menu2
goto realview

:setpage
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                     
if not "%inhelp%"=="true" Echo. ^<-- Go back   Down  Up  Reset  Page:%page%
if "%inhelp%"=="true" Echo. ^<-- Quit t.   Down  Up  Reset  Page:%page%

echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format    View    Help  "
Echo.
Echo.                                                                     
set /p page=-^<-- Go back   Down  Up  Reset  Page:
set /a numa=1
set /a numb=2
set /a numc=3
set /a numd=4
set /a nume=5
set /a numf=6
set /a numg=7
set /a numh=8
set /a numi=9
set /a numj=10
set pagecount=1
if "%page%"=="0" echo Error: Cannot divide by zero
if "%page%"=="1" goto realview
set /a numa=%page%*10-9
set /a numb=%page%*10-8
set /a numc=%page%*10-7
set /a numd=%page%*10-6
set /a nume=%page%*10-5
set /a numf=%page%*10-4
set /a numg=%page%*10-3
set /a numh=%page%*10-2
set /a numi=%page%*10-1
set /a numj=%page%*10
set /a pagecount=%pagecount%+1
if "%page%"=="0" echo Error: Cannot divide by zero
set /a paranum=%page%
if "%pagecount%"=="%paranum%" set pagecount=1&title GUI notepad&goto realview
goto realview
:realview1
set /a numa=%numa%+10
set /a numb=%numb%+10
set /a numc=%numc%+10
set /a numd=%numd%+10
set /a nume=%nume%+10
set /a numf=%numf%+10
set /a numg=%numg%+10
set /a numh=%numh%+10
set /a numi=%numi%+10
set /a numj=%numj%+10
set /a page=%page%+1
goto realview

:subtract
set /a numa=%numa%-10
set /a numb=%numb%-10
set /a numc=%numc%-10
set /a numd=%numd%-10
set /a nume=%nume%-10
set /a numf=%numf%-10
set /a numg=%numg%-10
set /a numh=%numh%-10
set /a numi=%numi%-10
set /a numj=%numj%-10
set /a page=%page%-1
if "%page%"=="0" call :resetpages
goto realview

:resetpages
set /a numa=1
set /a numb=2
set /a numc=3
set /a numd=4
set /a nume=5
set /a numf=6
set /a numg=7
set /a numh=8
set /a numi=9
set /a numj=10
set page=1
goto :eof
:gostart
echo %tab%%bck% 2>nul&set /p=<nul
Echo.                                                                     
bg print %bgmen%%txmen% "  File    Edit    Format   "&bg print %bgsel%%txsel% " View "& bg print %bgmen%%txmen% "   Help  "
Echo.
bg print %bg%%tx% "                          "&bg print %bgmen%%txmen% " Edit note    "
echo.
bg print %bg%%tx% "                          "&bg print %bgmen%%txmen% " View note    "
echo.
bg print %bg%%tx% "                          "&bg print %bgsel%%txsel% " Start screen "
echo.
:gostart_now
set noted=
set editingnote=false
set viewingnote=false
goto main_interface

:help_command
Echo.
Echo GUI NOTEPAD
Echo.
Echo Syntax:
Echo GUI_notepad [filename] [/V] [/?] [/I] [/C:filename] [/E:filename] [/N] [/Q]
Echo.
Echo filename - File to open
Echo Keep in mind that you will need to but in .TXT
Echo or .CMD at the end.
Echo.
Echo.^/? - Shows help (this screen) in command prompt
Echo.^/V - Version information
Echo.^/I - Installs integrated BG.EXE (use if bg.exe is missing on your system)
Echo.^/C - Converts old GUI notepad document into plain text (which can be opened
Echo.      in newer version)
Echo.^/E - Enhanced version of TYPE
Echo.^/N - Bypasses splash screen
Echo.^/Q - Bypasses load/save/search/replace status dialogs
Echo.
Echo If you just enter the command, GUI notepad full
Echo interface will load.
Echo.
goto :eof

:verino
call :aboutsection
cls
goto :eof

:errorport
echo.
echo ERROR
Echo.
Echo It looks like the important file (bg.exe) was
Echo not found.
Echo.
Echo This file is required to do the following things:
Echo.
Echo. - Display multiple colors at once
Echo. - Mouse input
Echo.
Echo Because of that, GUI_notepad is unable to load.
Echo.
Echo To install integrated version of bg.exe, type
Echo GUI_notepad /i
Echo.
Echo Returning to command prompt...
goto :eof

:bg_binary_write
:: This part stores bg.exe in hex. This will be converted into binary if bg.exe is not
:: found in the host system. This executable is verified to be complitely safe and shouldn't
:: be detected as false positive in most cases.
::
:: Using HEX to Binary conversion
::::: 4d 5a 90 00 03 00 00 00  04 00 00 00 ff ff 00 00   MZ..............
::::: b8 00 00 00 00 00 00 00  40 00 00 00 00 00 00 00   ........@.......
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 80 00 00 00   ................
::::: 0e 1f ba 0e 00 b4 09 cd  21 b8 01 4c cd 21 54 68   ........!..L.!Th
::::: 69 73 20 70 72 6f 67 72  61 6d 20 63 61 6e 6e 6f   is program canno
::::: 74 20 62 65 20 72 75 6e  20 69 6e 20 44 4f 53 20   t be run in DOS 
::::: 6d 6f 64 65 2e 0d 0d 0a  24 00 00 00 00 00 00 00   mode....$.......
::::: 50 45 00 00 4c 01 02 00  00 00 00 00 00 00 00 00   PE..L...........
::::: 00 00 00 00 e0 00 0f 03  0b 01 06 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  d7 1d 00 00 00 10 00 00   ................
::::: 00 20 00 00 00 00 40 00  00 10 00 00 00 02 00 00   . ....@.........
::::: 04 00 00 00 00 00 00 00  04 00 00 00 00 00 00 00   ................
::::: 00 30 00 00 00 02 00 00  e7 15 01 00 03 00 00 00   .0..............
::::: 00 00 10 00 00 10 00 00  00 00 10 00 00 10 00 00   ................
::::: 00 00 00 00 10 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 70 20 00 00 64 00 00 00  00 00 00 00 00 00 00 00   p ..d...........
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  d4 20 00 00 80 00 00 00   ......... ......
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  2e 74 65 78 74 00 00 00   .........text...
::::: 28 0f 00 00 00 10 00 00  00 10 00 00 00 02 00 00   (...............
::::: 00 00 00 00 00 00 00 00  00 00 00 00 20 00 00 60   ............ ..`
::::: 2e 64 61 74 61 00 00 00  90 04 00 00 00 20 00 00   .data........ ..
::::: 00 04 00 00 00 12 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 40 00 00 c0  00 00 00 00 00 00 00 00   ....@...........
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 55 89 e5 81 ec 00 00 00  00 90 b8 03 00 00 00 8b   U...............
::::: 0d 80 24 40 00 39 c8 0f  85 1b 00 00 00 8b 05 84   ..$@.9..........
::::: 24 40 00 83 c0 08 8b 08  89 0d c4 23 40 00 e8 ea   $@.........#@...
::::: 09 00 00 e9 e3 00 00 00  b8 04 00 00 00 8b 0d 80   ................
::::: 24 40 00 39 c8 0f 8f d0  00 00 00 b8 02 00 00 00   $@.9............
::::: 89 05 00 24 40 00 8b 05  80 24 40 00 48 89 05 04   ...$@....$@.H...
::::: 24 40 00 b8 e8 23 40 00  50 8b 05 e0 23 40 00 50   $@...#@.P...#@.P
::::: e8 db 0d 00 00 8b 05 00  24 40 00 8b 0d 04 24 40   ........$@....$@
::::: 00 39 c8 0f 8d 7e 00 00  00 8b 05 00 24 40 00 89   .9...~......$@..
::::: c1 40 89 05 00 24 40 00  c1 e1 02 8b 05 84 24 40   .@...$@.......$@
::::: 00 01 c8 b9 10 00 00 00  51 b9 00 00 00 00 51 8b   ........Q.....Q.
::::: 08 51 e8 a1 0d 00 00 83  c4 0c 81 e0 ff ff 00 00   .Q..............
::::: 66 89 05 c0 23 40 00 8b  05 00 24 40 00 89 c1 40   f...#@....$@...@
::::: 89 05 00 24 40 00 c1 e1  02 8b 05 84 24 40 00 01   ...$@.......$@..
::::: c8 8b 08 89 0d c4 23 40  00 0f b7 05 c0 23 40 00   ......#@.....#@.
::::: 50 8b 05 e0 23 40 00 50  e8 63 0d 00 00 e8 1b 09   P...#@.P.c......
::::: 00 00 e9 6e ff ff ff 0f  b7 05 f0 23 40 00 50 8b   ...n.......#@.P.
::::: 05 e0 23 40 00 50 e8 45  0d 00 00 c9 c3 55 89 e5   ..#@.P.E.....U..
::::: 81 ec 00 00 00 00 90 b8  04 00 00 00 8b 0d 80 24   ...............$
::::: 40 00 39 c8 0f 8f 48 01  00 00 b8 04 00 00 00 89   @.9...H.........
::::: 05 08 24 40 00 8b 05 80  24 40 00 48 89 05 0c 24   ..$@....$@.H...$
::::: 40 00 b8 e8 23 40 00 50  8b 05 e0 23 40 00 50 e8   @...#@.P...#@.P.
::::: ec 0c 00 00 b8 7f 1c 40  00 89 05 00 20 40 00 8b   .......@.... @..
::::: 05 84 24 40 00 83 c0 0c  b9 0a 00 00 00 51 b9 00   ..$@.........Q..
::::: 00 00 00 51 8b 08 51 e8  cc 0c 00 00 83 c4 0c c1   ...Q..Q.........
::::: e0 10 c1 f8 10 66 89 05  d6 23 40 00 8b 05 84 24   .....f...#@....$
::::: 40 00 83 c0 08 b9 0a 00  00 00 51 b9 00 00 00 00   @.........Q.....
::::: 51 8b 08 51 e8 9f 0c 00  00 83 c4 0c c1 e0 10 c1   Q..Q............
::::: f8 10 66 89 05 d8 23 40  00 0f bf 05 d6 23 40 00   ..f...#@.....#@.
::::: 66 89 05 c8 23 40 00 b8  01 00 00 00 66 89 05 ce   f...#@......f...
::::: 23 40 00 b8 01 00 00 00  66 89 05 d0 23 40 00 b8   #@......f...#@..
::::: 00 00 00 00 66 89 05 d2  23 40 00 b8 00 00 00 00   ....f...#@......
::::: 66 89 05 d4 23 40 00 8b  05 08 24 40 00 8b 0d 0c   f...#@....$@....
::::: 24 40 00 39 c8 0f 8d 67  00 00 00 8b 05 08 24 40   $@.9...g......$@
::::: 00 89 c1 40 89 05 08 24  40 00 c1 e1 02 8b 05 84   ...@...$@.......
::::: 24 40 00 01 c8 b9 10 00  00 00 51 b9 00 00 00 00   $@........Q.....
::::: 51 8b 08 51 e8 0f 0c 00  00 83 c4 0c 81 e0 ff ff   Q..Q............
::::: 00 00 66 89 05 cc 23 40  00 8b 05 08 24 40 00 89   ..f...#@....$@..
::::: c1 40 89 05 08 24 40 00  c1 e1 02 8b 05 84 24 40   .@...$@.......$@
::::: 00 01 c8 8b 08 89 0d c4  23 40 00 e8 9d 07 00 00   ........#@......
::::: eb 85 c9 c3 55 89 e5 81  ec 00 00 00 00 90 b8 04   ....U...........
::::: 00 00 00 8b 0d 80 24 40  00 39 c8 0f 85 83 00 00   ......$@.9......
::::: 00 8b 05 84 24 40 00 83  c0 0c b9 0a 00 00 00 51   ....$@.........Q
::::: b9 00 00 00 00 51 8b 08  51 e8 9a 0b 00 00 83 c4   .....Q..Q.......
::::: 0c c1 e0 10 c1 f8 10 66  89 05 10 24 40 00 8b 05   .......f...$@...
::::: 84 24 40 00 83 c0 08 b9  0a 00 00 00 51 b9 00 00   .$@.........Q...
::::: 00 00 51 8b 08 51 e8 6d  0b 00 00 83 c4 0c c1 e0   ..Q..Q.m........
::::: 10 c1 f8 10 66 89 05 12  24 40 00 81 ec 04 00 00   ....f...$@......
::::: 00 89 e0 b9 04 00 00 00  51 b9 10 24 40 00 51 50   ........Q..$@.QP
::::: e8 53 0b 00 00 83 c4 0c  8b 05 e0 23 40 00 50 e8   .S.........#@.P.
::::: 4c 0b 00 00 c9 c3 55 89  e5 81 ec 00 00 00 00 90   L.....U.........
::::: e8 43 0b 00 00 85 c0 0f  84 05 00 00 00 e8 02 00   .C..............
::::: 00 00 c9 c3 55 89 e5 81  ec 00 00 00 00 90 e8 2d   ....U..........-
::::: 0b 00 00 89 05 6c 20 40  00 8b 05 6c 20 40 00 85   .....l @...l @..
::::: c0 0f 84 18 00 00 00 b8  e0 00 00 00 8b 0d 6c 20   ..............l 
::::: 40 00 39 c8 0f 84 05 00  00 00 e9 11 00 00 00 e8   @.9.............
::::: fc 0a 00 00 81 c0 ff 00  00 00 89 05 6c 20 40 00   ............l @.
::::: c9 c3 55 89 e5 81 ec 00  00 00 00 90 b8 f6 ff ff   ..U.............
::::: ff 50 e8 e1 0a 00 00 89  05 e4 23 40 00 b8 14 24   .P........#@...$
::::: 40 00 50 8b 05 e4 23 40  00 50 e8 d1 0a 00 00 8b   @.P...#@.P......
::::: 05 14 24 40 00 83 c8 10  83 e0 bf 83 e0 fe 89 05   ..$@............
::::: 18 24 40 00 8b 05 18 24  40 00 50 8b 05 e4 23 40   .$@....$@.P...#@
::::: 00 50 e8 b1 0a 00 00 b8  1c 24 40 00 50 b8 01 00   .P.......$@.P...
::::: 00 00 50 b8 20 24 40 00  50 8b 05 e4 23 40 00 50   ..P. $@.P...#@.P
::::: e8 9b 0a 00 00 b8 02 00  00 00 0f b7 0d 20 24 40   ............. $@
::::: 00 39 c8 0f 85 42 00 00  00 8b 05 28 24 40 00 89   .9...B.....($@..
::::: 05 34 24 40 00 b8 01 00  00 00 8b 0d 34 24 40 00   .4$@........4$@.
::::: 39 c8 0f 85 23 00 00 00  0f bf 05 24 24 40 00 50   9...#......$$@.P
::::: 0f bf 05 26 24 40 00 50  b8 04 20 40 00 50 e8 55   ...&$@.P.. @.P.U
::::: 0a 00 00 83 c4 0c e9 02  00 00 00 eb 8a 8b 05 14   ................
::::: 24 40 00 50 8b 05 e4 23  40 00 50 e8 28 0a 00 00   $@.P...#@.P.(...
::::: c9 c3 55 89 e5 81 ec 00  00 00 00 90 b8 38 24 40   ..U..........8$@
::::: 00 50 e8 29 0a 00 00 0f  b7 05 46 24 40 00 50 0f   .P.)......F$@.P.
::::: b7 05 44 24 40 00 50 0f  b7 05 42 24 40 00 50 0f   ..D$@.P...B$@.P.
::::: b7 05 40 24 40 00 50 0f  b7 05 3c 24 40 00 50 0f   ..@$@.P...<$@.P.
::::: b7 05 3e 24 40 00 50 0f  b7 05 3a 24 40 00 50 0f   ..>$@.P...:$@.P.
::::: b7 05 38 24 40 00 50 b8  0a 20 40 00 50 e8 d6 09   ..8$@.P.. @.P...
::::: 00 00 83 c4 24 c9 c3 55  89 e5 81 ec 00 00 00 00   ....$..U........
::::: 90 b8 03 00 00 00 8b 0d  80 24 40 00 39 c8 0f 85   .........$@.9...
::::: 26 00 00 00 8b 05 84 24  40 00 83 c0 08 b9 0a 00   &......$@.......
::::: 00 00 51 b9 00 00 00 00  51 8b 08 51 e8 47 09 00   ..Q.....Q..Q.G..
::::: 00 83 c4 0c 50 e8 9e 09  00 00 c9 c3 55 89 e5 81   ....P.......U...
::::: ec 00 00 00 00 90 b8 03  00 00 00 8b 0d 80 24 40   ..............$@
::::: 00 39 c8 0f 85 d7 00 00  00 b8 48 24 40 00 50 8b   .9........H$@.P.
::::: 05 e0 23 40 00 50 e8 75  09 00 00 8b 05 84 24 40   ..#@.P.u......$@
::::: 00 83 c0 08 b9 0a 00 00  00 51 b9 00 00 00 00 51   .........Q.....Q
::::: 8b 08 51 e8 f0 08 00 00  83 c4 0c 89 05 50 24 40   ..Q..........P$@
::::: 00 8b 05 50 24 40 00 e9  05 00 00 00 e9 09 00 00   ...P$@..........
::::: 00 83 f8 00 0f 85 15 00  00 00 b8 00 00 00 00 89   ................
::::: 05 4c 24 40 00 e9 64 00  00 00 e9 09 00 00 00 83   .L$@..d.........
::::: f8 01 0f 85 15 00 00 00  b8 01 00 00 00 89 05 4c   ...............L
::::: 24 40 00 e9 46 00 00 00  e9 09 00 00 00 83 f8 19   $@..F...........
::::: 0f 85 05 00 00 00 e9 09  00 00 00 83 f8 32 0f 85   .............2..
::::: 05 00 00 00 e9 09 00 00  00 83 f8 64 0f 85 1c 00   ...........d....
::::: 00 00 b8 01 00 00 00 89  05 4c 24 40 00 8b 05 50   .........L$@...P
::::: 24 40 00 89 05 48 24 40  00 e9 00 00 00 00 b8 48   $@...H$@.......H
::::: 24 40 00 50 8b 05 e0 23  40 00 50 e8 b8 08 00 00   $@.P...#@.P.....
::::: c9 c3 55 89 e5 81 ec 00  00 00 00 90 b8 03 00 00   ..U.............
::::: 00 8b 0d 80 24 40 00 39  c8 0f 85 33 00 00 00 8b   ....$@.9...3....
::::: 05 84 24 40 00 83 c0 08  b9 0a 00 00 00 51 b9 00   ..$@.........Q..
::::: 00 00 00 51 8b 08 51 e8  0c 08 00 00 83 c4 0c 81   ...Q..Q.........
::::: e0 ff 00 00 00 50 8b 05  e0 23 40 00 50 e8 6e 08   .....P...#@.P.n.
::::: 00 00 c9 c3 55 89 e5 81  ec 00 00 00 00 90 b8 03   ....U...........
::::: 00 00 00 8b 0d 80 24 40  00 39 c8 0f 8f a6 00 00   ......$@.9......
::::: 00 b8 01 00 00 00 89 05  54 24 40 00 b8 12 00 02   ........T$@.....
::::: 00 89 05 58 24 40 00 b8  04 00 00 00 8b 0d 80 24   ...X$@.........$
::::: 40 00 39 c8 0f 8f 40 00  00 00 8b 05 84 24 40 00   @.9...@......$@.
::::: 83 c0 0c b9 0a 00 00 00  51 b9 00 00 00 00 51 8b   ........Q.....Q.
::::: 08 51 e8 91 07 00 00 83  c4 0c 89 05 54 24 40 00   .Q..........T$@.
::::: 8b 05 54 24 40 00 83 f8  00 0f 8d 0b 00 00 00 b8   ..T$@...........
::::: 00 00 00 00 89 05 54 24  40 00 8b 05 54 24 40 00   ......T$@...T$@.
::::: 85 c0 0f 84 2f 00 00 00  8b 05 84 24 40 00 83 c0   ..../......$@...
::::: 08 8b 0d 58 24 40 00 51  b9 00 00 00 00 51 8b 08   ...X$@.Q.....Q..
::::: 51 e8 c2 07 00 00 8b 05  54 24 40 00 83 c0 ff 89   Q.......T$@.....
::::: 05 54 24 40 00 eb c3 c9  c3 55 89 e5 81 ec 00 00   .T$@.....U......
::::: 00 00 90 b8 01 00 00 00  8b 0d 80 24 40 00 39 c8   ...........$@.9.
::::: 0f 8d d5 02 00 00 8b 05  84 24 40 00 83 c0 04 8b   .........$@.....
::::: 08 89 0d 60 24 40 00 8b  05 60 24 40 00 89 05 64   ...`$@...`$@...d
::::: 24 40 00 8b 05 64 24 40  00 0f be 08 85 c9 0f 84   $@...d$@........
::::: 1d 00 00 00 8b 05 64 24  40 00 0f be 08 83 e1 5f   ......d$@......_
::::: 88 08 8b 05 64 24 40 00  40 89 05 64 24 40 00 eb   ....d$@.@..d$@..
::::: d2 b8 22 20 40 00 50 8b  05 60 24 40 00 50 e8 3d   .." @.P..`$@.P.=
::::: 07 00 00 83 c4 08 85 c0  0f 84 05 00 00 00 e9 10   ................
::::: 00 00 00 b8 00 10 40 00  89 05 5c 24 40 00 e9 31   ......@...\$@..1
::::: 02 00 00 b8 28 20 40 00  50 8b 05 60 24 40 00 50   ....( @.P..`$@.P
::::: e8 0b 07 00 00 83 c4 08  85 c0 0f 84 05 00 00 00   ................
::::: e9 10 00 00 00 b8 1d 11  40 00 89 05 5c 24 40 00   ........@...\$@.
::::: e9 ff 01 00 00 b8 2f 20  40 00 50 8b 05 60 24 40   ....../ @.P..`$@
::::: 00 50 e8 d9 06 00 00 83  c4 08 85 c0 0f 84 05 00   .P..............
::::: 00 00 e9 10 00 00 00 b8  84 12 40 00 89 05 5c 24   ..........@...\$
::::: 40 00 e9 cd 01 00 00 b8  36 20 40 00 50 8b 05 60   @.......6 @.P..`
::::: 24 40 00 50 e8 a7 06 00  00 83 c4 08 85 c0 0f 84   $@.P............
::::: 05 00 00 00 e9 10 00 00  00 b8 26 13 40 00 89 05   ..........&.@...
::::: 5c 24 40 00 e9 9b 01 00  00 b8 3b 20 40 00 50 8b   \$@.......; @.P.
::::: 05 60 24 40 00 50 e8 75  06 00 00 83 c4 08 85 c0   .`$@.P.u........
::::: 0f 84 05 00 00 00 e9 10  00 00 00 b8 44 13 40 00   ............D.@.
::::: 89 05 5c 24 40 00 e9 69  01 00 00 b8 3f 20 40 00   ..\$@..i....? @.
::::: 50 8b 05 60 24 40 00 50  e8 43 06 00 00 83 c4 08   P..`$@.P.C......
::::: 85 c0 0f 84 05 00 00 00  e9 10 00 00 00 b8 92 13   ................
::::: 40 00 89 05 5c 24 40 00  e9 37 01 00 00 b8 45 20   @...\$@..7....E 
::::: 40 00 50 8b 05 60 24 40  00 50 e8 11 06 00 00 83   @.P..`$@.P......
::::: c4 08 85 c0 0f 84 05 00  00 00 e9 10 00 00 00 b8   ................
::::: 72 14 40 00 89 05 5c 24  40 00 e9 05 01 00 00 b8   r.@...\$@.......
::::: 4a 20 40 00 50 8b 05 60  24 40 00 50 e8 df 05 00   J @.P..`$@.P....
::::: 00 83 c4 08 85 c0 0f 84  05 00 00 00 e9 10 00 00   ................
::::: 00 b8 d7 14 40 00 89 05  5c 24 40 00 e9 d3 00 00   ....@...\$@.....
::::: 00 b8 50 20 40 00 50 8b  05 60 24 40 00 50 e8 ad   ..P @.P..`$@.P..
::::: 05 00 00 83 c4 08 85 c0  0f 84 05 00 00 00 e9 10   ................
::::: 00 00 00 b8 1c 15 40 00  89 05 5c 24 40 00 e9 a1   ......@...\$@...
::::: 00 00 00 b8 57 20 40 00  50 8b 05 60 24 40 00 50   ....W @.P..`$@.P
::::: e8 7b 05 00 00 83 c4 08  85 c0 0f 84 05 00 00 00   .{..............
::::: e9 10 00 00 00 b8 12 16  40 00 89 05 5c 24 40 00   ........@...\$@.
::::: e9 6f 00 00 00 b8 5c 20  40 00 50 8b 05 60 24 40   .o....\ @.P..`$@
::::: 00 50 e8 49 05 00 00 83  c4 08 85 c0 0f 84 05 00   .P.I............
::::: 00 00 e9 10 00 00 00 b8  64 16 40 00 89 05 5c 24   ........d.@...\$
::::: 40 00 e9 3d 00 00 00 b8  61 20 40 00 50 8b 05 60   @..=....a @.P..`
::::: 24 40 00 50 e8 17 05 00  00 83 c4 08 85 c0 0f 84   $@.P............
::::: 05 00 00 00 e9 10 00 00  00 b8 9b 1d 40 00 89 05   ............@...
::::: 5c 24 40 00 e9 0b 00 00  00 b8 00 00 00 00 89 05   \$@.............
::::: 5c 24 40 00 8b 05 5c 24  40 00 85 c0 0f 84 19 00   \$@...\$@.......
::::: 00 00 b8 f5 ff ff ff 50  e8 7b 04 00 00 89 05 e0   .......P.{......
::::: 23 40 00 8b 05 5c 24 40  00 ff d0 c9 c3 55 89 e5   #@...\$@.....U..
::::: 81 ec 00 00 00 00 90 b8  00 00 00 00 89 05 68 24   ..............h$
::::: 40 00 b8 00 00 00 00 89  05 6c 24 40 00 b8 00 00   @........l$@....
::::: 00 00 89 05 70 24 40 00  8b 05 c4 23 40 00 89 05   ....p$@....#@...
::::: 78 24 40 00 8b 05 78 24  40 00 0f be 08 89 0d 74   x$@...x$@......t
::::: 24 40 00 85 c9 0f 84 f2  01 00 00 8b 05 70 24 40   $@...........p$@
::::: 00 85 c0 0f 84 05 00 00  00 e9 3f 00 00 00 b8 5c   ..........?....\
::::: 00 00 00 8b 0d 74 24 40  00 39 c8 b8 00 00 00 00   .....t$@.9......
::::: 0f 94 c0 89 05 70 24 40  00 85 c0 0f 84 05 00 00   .....p$@........
::::: 00 e9 12 00 00 00 8b 05  74 24 40 00 50 8b 05 00   ........t$@.P...
::::: 20 40 00 ff d0 83 c4 04  e9 8e 01 00 00 8b 05 74    @.............t
::::: 24 40 00 50 e8 1f 04 00  00 83 c4 04 85 c0 0f 84   $@.P............
::::: b6 00 00 00 8b 05 6c 24  40 00 83 f8 02 0f 8d 67   ......l$@......g
::::: 00 00 00 8b 05 6c 24 40  00 40 89 05 6c 24 40 00   .....l$@.@..l$@.
::::: 8b 05 68 24 40 00 c1 e0  04 89 05 68 24 40 00 8b   ..h$@......h$@..
::::: 05 74 24 40 00 83 f8 39  b8 00 00 00 00 0f 9e c0   .t$@...9........
::::: 85 c0 0f 84 0e 00 00 00  8b 05 74 24 40 00 83 e8   ..........t$@...
::::: 30 e9 11 00 00 00 8b 05  74 24 40 00 83 c8 20 83   0.......t$@... .
::::: e8 57 e9 00 00 00 00 8b  0d 68 24 40 00 01 c1 89   .W.......h$@....
::::: 0d 68 24 40 00 e9 3b 00  00 00 8b 05 68 24 40 00   .h$@..;.....h$@.
::::: 50 8b 05 00 20 40 00 ff  d0 83 c4 04 8b 05 74 24   P... @........t$
::::: 40 00 50 8b 05 00 20 40  00 ff d0 83 c4 04 b8 00   @.P... @........
::::: 00 00 00 89 05 68 24 40  00 89 05 6c 24 40 00 89   .....h$@...l$@..
::::: 05 70 24 40 00 e9 c1 00  00 00 8b 05 6c 24 40 00   .p$@........l$@.
::::: 85 c0 0f 84 62 00 00 00  8b 05 68 24 40 00 50 8b   ....b.....h$@.P.
::::: 05 00 20 40 00 ff d0 83  c4 04 b8 5c 00 00 00 8b   .. @.......\....
::::: 0d 74 24 40 00 39 c8 b8  00 00 00 00 0f 94 c0 89   .t$@.9..........
::::: 05 70 24 40 00 85 c0 0f  84 05 00 00 00 e9 12 00   .p$@............
::::: 00 00 8b 05 74 24 40 00  50 8b 05 00 20 40 00 ff   ....t$@.P... @..
::::: d0 83 c4 04 b8 00 00 00  00 89 05 68 24 40 00 89   ...........h$@..
::::: 05 6c 24 40 00 e9 51 00  00 00 8b 05 74 24 40 00   .l$@..Q.....t$@.
::::: e9 05 00 00 00 e9 09 00  00 00 83 f8 6e 0f 85 16   ............n...
::::: 00 00 00 b8 0a 00 00 00  50 8b 05 00 20 40 00 ff   ........P... @..
::::: d0 83 c4 04 e9 17 00 00  00 8b 05 74 24 40 00 50   ...........t$@.P
::::: 8b 05 00 20 40 00 ff d0  83 c4 04 e9 00 00 00 00   ... @...........
::::: b8 00 00 00 00 89 05 70  24 40 00 8b 05 78 24 40   .......p$@...x$@
::::: 00 40 89 05 78 24 40 00  e9 f7 fd ff ff 8b 05 6c   .@..x$@........l
::::: 24 40 00 85 c0 0f 84 12  00 00 00 8b 05 68 24 40   $@...........h$@
::::: 00 50 8b 05 00 20 40 00  ff d0 83 c4 04 c9 c3 55   .P... @........U
::::: 89 e5 81 ec 00 00 00 00  90 8b 45 08 e9 05 00 00   ..........E.....
::::: 00 e9 09 00 00 00 83 f8  00 0f 85 19 00 00 00 0f   ................
::::: bf 05 d6 23 40 00 40 66  89 05 d6 23 40 00 e9 de   ...#@.@f...#@...
::::: 00 00 00 e9 09 00 00 00  83 f8 0a 0f 85 22 00 00   ............."..
::::: 00 0f bf 05 d8 23 40 00  40 66 89 05 d8 23 40 00   .....#@.@f...#@.
::::: 0f bf 05 c8 23 40 00 66  89 05 d6 23 40 00 e9 ae   ....#@.f...#@...
::::: 00 00 00 0f bf 05 d6 23  40 00 83 f8 00 0f 8c 8a   .......#@.......
::::: 00 00 00 0f bf 05 d8 23  40 00 83 f8 00 0f 8c 7a   .......#@......z
::::: 00 00 00 0f be 45 08 88  05 ca 23 40 00 0f bf 05   .....E....#@....
::::: d6 23 40 00 40 66 89 05  da 23 40 00 0f bf 05 d8   .#@.@f...#@.....
::::: 23 40 00 40 66 89 05 dc  23 40 00 b8 d6 23 40 00   #@.@f...#@...#@.
::::: 50 81 ec 04 00 00 00 89  e0 b9 04 00 00 00 51 b9   P.............Q.
::::: d2 23 40 00 51 50 e8 1d  01 00 00 83 c4 0c 81 ec   .#@.QP..........
::::: 04 00 00 00 89 e0 b9 04  00 00 00 51 b9 ce 23 40   ...........Q..#@
::::: 00 51 50 e8 00 01 00 00  83 c4 0c b8 ca 23 40 00   .QP..........#@.
::::: 50 8b 05 e0 23 40 00 50  e8 73 01 00 00 0f bf 05   P...#@.P.s......
::::: d6 23 40 00 40 66 89 05  d6 23 40 00 e9 00 00 00   .#@.@f...#@.....
::::: 00 8b 45 08 e9 00 00 00  00 c9 c3 55 89 e5 81 ec   ..E........U....
::::: 00 00 00 00 90 e8 4e 01  00 00 89 05 7c 24 40 00   ......N.....|$@.
::::: b8 00 00 00 00 8b 0d 7c  24 40 00 39 c8 0f 84 12   .......|$@.9....
::::: 00 00 00 b8 03 00 00 00  50 8b 05 7c 24 40 00 50   ........P..|$@.P
::::: e8 2b 01 00 00 c9 c3 55  89 e5 81 ec 04 00 00 00   .+.....U........
::::: 90 b8 00 00 00 00 89 45  fc 8d 45 fc 50 b8 00 00   .......E..E.P...
::::: 00 00 50 b8 88 24 40 00  50 b8 84 24 40 00 50 b8   ..P..$@.P..$@.P.
::::: 80 24 40 00 50 e8 fe 00  00 00 83 c4 14 e8 fe 00   .$@.P...........
::::: 00 00 89 05 8c 24 40 00  b8 e4 04 00 00 50 e8 f5   .....$@......P..
::::: 00 00 00 e8 01 f9 ff ff  8b 05 8c 24 40 00 50 e8   ...........$@.P.
::::: e4 00 00 00 8b 05 6c 20  40 00 50 e8 e0 00 00 00   ......l @.P.....
::::: 83 c4 04 c9 c3 00 00 00  ff 25 d4 20 40 00 00 00   .........%. @...
::::: ff 25 00 21 40 00 00 00  ff 25 d8 20 40 00 00 00   .%.!@....%. @...
::::: ff 25 04 21 40 00 00 00  ff 25 dc 20 40 00 00 00   .%.!@....%. @...
::::: ff 25 08 21 40 00 00 00  ff 25 e0 20 40 00 00 00   .%.!@....%. @...
::::: ff 25 e4 20 40 00 00 00  ff 25 0c 21 40 00 00 00   .%. @....%.!@...
::::: ff 25 10 21 40 00 00 00  ff 25 14 21 40 00 00 00   .%.!@....%.!@...
::::: ff 25 18 21 40 00 00 00  ff 25 e8 20 40 00 00 00   .%.!@....%. @...
::::: ff 25 1c 21 40 00 00 00  ff 25 20 21 40 00 00 00   .%.!@....% !@...
::::: ff 25 24 21 40 00 00 00  ff 25 28 21 40 00 00 00   .%$!@....%(!@...
::::: ff 25 2c 21 40 00 00 00  ff 25 44 21 40 00 00 00   .%,!@....%D!@...
::::: ff 25 ec 20 40 00 00 00  ff 25 f0 20 40 00 00 00   .%. @....%. @...
::::: ff 25 30 21 40 00 00 00  ff 25 34 21 40 00 00 00   .%0!@....%4!@...
::::: ff 25 4c 21 40 00 00 00  ff 25 f4 20 40 00 00 00   .%L!@....%. @...
::::: ff 25 38 21 40 00 00 00  ff 25 3c 21 40 00 00 00   .%8!@....%<!@...
::::: ff 25 f8 20 40 00 00 00  00 00 00 00 00 00 00 00   .%. @...........
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 48 1e 40 00 25 64 20 25  64 00 25 64 20 25 64 20   H.@.%d %d.%d %d 
::::: 25 64 20 25 64 20 25 64  20 25 64 20 25 64 20 25   %d %d %d %d %d %
::::: 64 00 50 52 49 4e 54 00  53 50 52 49 54 45 00 4c   d.PRINT.SPRITE.L
::::: 4f 43 41 54 45 00 5f 4b  42 44 00 4b 42 44 00 4d   OCATE._KBD.KBD.M
::::: 4f 55 53 45 00 54 49 4d  45 00 53 4c 45 45 50 00   OUSE.TIME.SLEEP.
::::: 43 55 52 53 4f 52 00 46  4f 4e 54 00 50 4c 41 59   CURSOR.FONT.PLAY
::::: 00 4d 41 58 49 4d 49 5a  45 00 00 00 00 00 00 00   .MAXIMIZE.......
::::: 54 21 00 00 00 00 00 00  00 00 00 00 d4 21 00 00   T!...........!..
::::: d4 20 00 00 80 21 00 00  00 00 00 00 00 00 00 00   . ...!..........
::::: 42 22 00 00 00 21 00 00  c4 21 00 00 00 00 00 00   B"...!...!......
::::: 00 00 00 00 8f 23 00 00  44 21 00 00 cc 21 00 00   .....#..D!...!..
::::: 00 00 00 00 00 00 00 00  a6 23 00 00 4c 21 00 00   .........#..L!..
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 df 21 00 00  e9 21 00 00 f3 21 00 00   .....!...!...!..
::::: fc 21 00 00 05 22 00 00  0e 22 00 00 17 22 00 00   .!..."..."..."..
::::: 20 22 00 00 2b 22 00 00  3b 22 00 00 00 00 00 00    "..+"..;"......
::::: 4f 22 00 00 6c 22 00 00  86 22 00 00 a1 22 00 00   O"..l"..."..."..
::::: b0 22 00 00 c1 22 00 00  d2 22 00 00 e6 22 00 00   ."..."..."..."..
::::: f5 22 00 00 fd 22 00 00  14 23 00 00 2b 23 00 00   ."..."...#..+#..
::::: 3c 23 00 00 52 23 00 00  65 23 00 00 7a 23 00 00   <#..R#..e#..z#..
::::: 00 00 00 00 99 23 00 00  00 00 00 00 b1 23 00 00   .....#.......#..
::::: 00 00 00 00 df 21 00 00  e9 21 00 00 f3 21 00 00   .....!...!...!..
::::: fc 21 00 00 05 22 00 00  0e 22 00 00 17 22 00 00   .!..."..."..."..
::::: 20 22 00 00 2b 22 00 00  3b 22 00 00 00 00 00 00    "..+"..;"......
::::: 4f 22 00 00 6c 22 00 00  86 22 00 00 a1 22 00 00   O"..l"..."..."..
::::: b0 22 00 00 c1 22 00 00  d2 22 00 00 e6 22 00 00   ."..."..."..."..
::::: f5 22 00 00 fd 22 00 00  14 23 00 00 2b 23 00 00   ."..."...#..+#..
::::: 3c 23 00 00 52 23 00 00  65 23 00 00 7a 23 00 00   <#..R#..e#..z#..
::::: 00 00 00 00 99 23 00 00  00 00 00 00 b1 23 00 00   .....#.......#..
::::: 00 00 00 00 6d 73 76 63  72 74 2e 64 6c 6c 00 00   ....msvcrt.dll..
::::: 00 70 75 74 63 68 61 72  00 00 00 73 74 72 74 6f   .putchar...strto
::::: 75 6c 00 00 00 6d 65 6d  63 70 79 00 00 00 5f 6b   ul...memcpy..._k
::::: 62 68 69 74 00 00 00 5f  67 65 74 63 68 00 00 00   bhit..._getch...
::::: 70 72 69 6e 74 66 00 00  00 73 74 72 63 6d 70 00   printf...strcmp.
::::: 00 00 69 73 78 64 69 67  69 74 00 00 00 5f 5f 67   ..isxdigit...__g
::::: 65 74 6d 61 69 6e 61 72  67 73 00 00 00 65 78 69   etmainargs...exi
::::: 74 00 6b 65 72 6e 65 6c  33 32 2e 64 6c 6c 00 00   t.kernel32.dll..
::::: 00 47 65 74 43 6f 6e 73  6f 6c 65 53 63 72 65 65   .GetConsoleScree
::::: 6e 42 75 66 66 65 72 49  6e 66 6f 00 00 00 53 65   nBufferInfo...Se
::::: 74 43 6f 6e 73 6f 6c 65  54 65 78 74 41 74 74 72   tConsoleTextAttr
::::: 69 62 75 74 65 00 00 00  53 65 74 43 6f 6e 73 6f   ibute...SetConso
::::: 6c 65 43 75 72 73 6f 72  50 6f 73 69 74 69 6f 6e   leCursorPosition
::::: 00 00 00 47 65 74 53 74  64 48 61 6e 64 6c 65 00   ...GetStdHandle.
::::: 00 00 47 65 74 43 6f 6e  73 6f 6c 65 4d 6f 64 65   ..GetConsoleMode
::::: 00 00 00 53 65 74 43 6f  6e 73 6f 6c 65 4d 6f 64   ...SetConsoleMod
::::: 65 00 00 00 52 65 61 64  43 6f 6e 73 6f 6c 65 49   e...ReadConsoleI
::::: 6e 70 75 74 41 00 00 00  47 65 74 4c 6f 63 61 6c   nputA...GetLocal
::::: 54 69 6d 65 00 00 00 53  6c 65 65 70 00 00 00 47   Time...Sleep...G
::::: 65 74 43 6f 6e 73 6f 6c  65 43 75 72 73 6f 72 49   etConsoleCursorI
::::: 6e 66 6f 00 00 00 53 65  74 43 6f 6e 73 6f 6c 65   nfo...SetConsole
::::: 43 75 72 73 6f 72 49 6e  66 6f 00 00 00 53 65 74   CursorInfo...Set
::::: 43 6f 6e 73 6f 6c 65 46  6f 6e 74 00 00 00 57 72   ConsoleFont...Wr
::::: 69 74 65 43 6f 6e 73 6f  6c 65 4f 75 74 70 75 74   iteConsoleOutput
::::: 41 00 00 00 47 65 74 43  6f 6e 73 6f 6c 65 57 69   A...GetConsoleWi
::::: 6e 64 6f 77 00 00 00 47  65 74 43 6f 6e 73 6f 6c   ndow...GetConsol
::::: 65 4f 75 74 70 75 74 43  50 00 00 00 53 65 74 43   eOutputCP...SetC
::::: 6f 6e 73 6f 6c 65 4f 75  74 70 75 74 43 50 00 77   onsoleOutputCP.w
::::: 69 6e 6d 6d 2e 64 6c 6c  00 00 00 50 6c 61 79 53   inmm.dll...PlayS
::::: 6f 75 6e 64 41 00 75 73  65 72 33 32 2e 64 6c 6c   oundA.user32.dll
::::: 00 00 00 53 68 6f 77 57  69 6e 64 6f 77 00 00 00   ...ShowWindow...
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
::::: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
>hex.temp (
	for /f "delims=: tokens=*" %%A in ('findstr "^:::::" "%~f0"') do echo %%A
)

certutil -f -decodeHex hex.temp bg.exe >nul
if not exist "%SystemRoot%\System32\bg.exe" copy bg.exe "%SystemRoot%\System32" /Y >nul
del hex.temp
goto :eof

:convert_f
title Converting to plain text...
if "%pathname:~-3%"=="old" goto :eof
if not exist %pathname:~3% goto :eof
call %pathname:~3%
ren %pathname:~3% %pathname:~3%.old
if not "%note1%"=="" @echo.%note1%>>%pathname:~3%
if "%note1%"=="" @echo.>>%pathname:~3%
title Converting (1,7%% complited)
if not "%note2%"=="" @echo.%note2%>>%pathname:~3%
if "%note2%"=="" @echo.>>%pathname:~3%
title Converting (3,4%% complited)
if not "%note3%"=="" @echo.%note3%>>%pathname:~3%
if "%note3%"=="" @echo.>>%pathname:~3%
title Converting (5,0%% complited)
if not "%note4%"=="" @echo.%note4%>>%pathname:~3%
if "%note4%"=="" @echo.>>%pathname:~3%
title Converting (6,7%% complited)
if not "%note5%"=="" @echo.%note5%>>%pathname:~3%
if "%note5%"=="" @echo.>>%pathname:~3%
title Converting (8,4%% complited)
if not "%note6%"=="" @echo.%note6%>>%pathname:~3%
if "%note6%"=="" @echo.>>%pathname:~3%
title Converting (10,0%% complited)
if not "%note7%"=="" @echo.%note7%>>%pathname:~3%
if "%note7%"=="" @echo.>>%pathname:~3%
title Converting (11,7%% complited)
if not "%note8%"=="" @echo.%note8%>>%pathname:~3%
if "%note8%"=="" @echo.>>%pathname:~3%
title Converting (13,4%% complited)
if not "%note9%"=="" @echo.%note9%>>%pathname:~3%
if "%note9%"=="" @echo.>>%pathname:~3%
title Converting (15,1%% complited)
if not "%note10%"=="" @echo.%note10%>>%pathname:~3%
if "%note10%"=="" @echo.>>%pathname:~3%
title Converting (16,8%% complited)
if not "%note11%"=="" @echo.%note11%>>%pathname:~3%
if "%note11%"=="" @echo.>>%pathname:~3%
title Converting (19,0%% complited)
if not "%note12%"=="" @echo.%note12%>>%pathname:~3%
if "%note12%"=="" @echo.>>%pathname:~3%
title Converting (20,7%% complited)
if not "%note13%"=="" @echo.%note13%>>%pathname:~3%
if "%note13%"=="" @echo.>>%pathname:~3%
title Converting (22,4%% complited)
if not "%note14%"=="" @echo.%note14%>>%pathname:~3%
if "%note14%"=="" @echo.>>%pathname:~3%
title Converting (24,7%% complited)
if not "%note15%"=="" @echo.%note15%>>%pathname:~3%
if "%note15%"=="" @echo.>>%pathname:~3%
title Converting (25,0%% complited)
if not "%note16%"=="" @echo.%note16%>>%pathname:~3%
if "%note16%"=="" @echo.>>%pathname:~3%
title Converting (26,7%% complited)
if not "%note17%"=="" @echo.%note17%>>%pathname:~3%
if "%note17%"=="" @echo.>>%pathname:~3%
title Converting (28,4%% complited)
if not "%note18%"=="" @echo.%note18%>>%pathname:~3%
if "%note18%"=="" @echo.>>%pathname:~3%
title Converting (30,7%% complited)
if not "%note19%"=="" @echo.%note19%>>%pathname:~3%
if "%note19%"=="" @echo.>>%pathname:~3%
title Converting (32,4%% complited)
if not "%note20%"=="" @echo.%note20%>>%pathname:~3%
if "%note20%"=="" @echo.>>%pathname:~3%
title Converting (34,1%% complited)
if not "%note21%"=="" @echo.%note21%>>%pathname:~3%
if "%note21%"=="" @echo.>>%pathname:~3%
title Converting (35,8%% complited)
if not "%note22%"=="" @echo.%note22%>>%pathname:~3%
if "%note22%"=="" @echo.>>%pathname:~3%
title Converting (37,5%% complited)
if not "%note23%"=="" @echo.%note23%>>%pathname:~3%
if "%note23%"=="" @echo.>>%pathname:~3%
title Converting (39,2%% complited)
if not "%note24%"=="" @echo.%note24%>>%pathname:~3%
if "%note24%"=="" @echo.>>%pathname:~3%
title Converting (40,9%% complited)
if not "%note25%"=="" @echo.%note25%>>%pathname:~3%
if "%note25%"=="" @echo.>>%pathname:~3%
title Converting (42,6%% complited)
if not "%note26%"=="" @echo.%note26%>>%pathname:~3%
if "%note26%"=="" @echo.>>%pathname:~3%
title Converting (44,4%% complited)
if not "%note27%"=="" @echo.%note27%>>%pathname:~3%
if "%note27%"=="" @echo.>>%pathname:~3%
title Converting (46,1%% complited)
if not "%note28%"=="" @echo.%note28%>>%pathname:~3%
if "%note28%"=="" @echo.>>%pathname:~3%
title Converting (47,8%% complited)
if not "%note29%"=="" @echo.%note29%>>%pathname:~3%
if "%note29%"=="" @echo.>>%pathname:~3%
title Converting (49,5%% complited)
if not "%note30%"=="" @echo.%note30%>>%pathname:~3%
if "%note30%"=="" @echo.>>%pathname:~3%
title Converting (50,0%% complited)
if not "%note31%"=="" @echo.%note31%>>%pathname:~3%
if "%note31%"=="" @echo.>>%pathname:~3%
title Converting (51,7%% complited)
if not "%note32%"=="" @echo.%note32%>>%pathname:~3%
if "%note32%"=="" @echo.>>%pathname:~3%
title Converting (53,4%% complited)
if not "%note33%"=="" @echo.%note33%>>%pathname:~3%
if "%note33%"=="" @echo.>>%pathname:~3%
title Converting (55,1%% complited)
if not "%note34%"=="" @echo.%note34%>>%pathname:~3%
if "%note34%"=="" @echo.>>%pathname:~3%
title Converting (56,8%% complited)
if not "%note35%"=="" @echo.%note35%>>%pathname:~3%
if "%note35%"=="" @echo.>>%pathname:~3%
title Converting (58,5%% complited)
if not "%note36%"=="" @echo.%note36%>>%pathname:~3%
if "%note36%"=="" @echo.>>%pathname:~3%
title Converting (60,2%% complited)
if not "%note37%"=="" @echo.%note37%>>%pathname:~3%
if "%note37%"=="" @echo.>>%pathname:~3%
title Converting (61,9%% complited)
if not "%note38%"=="" @echo.%note38%>>%pathname:~3%
if "%note38%"=="" @echo.>>%pathname:~3%
title Converting (63,6%% complited)
if not "%note39%"=="" @echo.%note39%>>%pathname:~3%
if "%note39%"=="" @echo.>>%pathname:~3%
title Converting (65,3%% complited)
if not "%note40%"=="" @echo.%note40%>>%pathname:~3%
if "%note40%"=="" @echo.>>%pathname:~3%
title Converting (67,0%% complited)
if not "%note41%"=="" @echo.%note41%>>%pathname:~3%
if "%note41%"=="" @echo.>>%pathname:~3%
title Converting (68,7%% complited)
if not "%note42%"=="" @echo.%note42%>>%pathname:~3%
if "%note42%"=="" @echo.>>%pathname:~3%
title Converting (70,4%% complited)
if not "%note43%"=="" @echo.%note43%>>%pathname:~3%
if "%note43%"=="" @echo.>>%pathname:~3%
title Converting (72,7%% complited)
if not "%note44%"=="" @echo.%note44%>>%pathname:~3%
if "%note44%"=="" @echo.>>%pathname:~3%
title Converting (74,4%% complited)
if not "%note45%"=="" @echo.%note45%>>%pathname:~3%
if "%note45%"=="" @echo.>>%pathname:~3%
title Converting (75,0%% complited)
if not "%note46%"=="" @echo.%note46%>>%pathname:~3%
if "%note46%"=="" @echo.>>%pathname:~3%
title Converting (76,7%% complited)
if not "%note47%"=="" @echo.%note47%>>%pathname:~3%
if "%note47%"=="" @echo.>>%pathname:~3%
title Converting (78,4%% complited)
if not "%note48%"=="" @echo.%note48%>>%pathname:~3%
if "%note48%"=="" @echo.>>%pathname:~3%
title Converting (80,1%% complited)
if not "%note49%"=="" @echo.%note49%>>%pathname:~3%
if "%note49%"=="" @echo.>>%pathname:~3%
title Converting (81,8%% complited)
if not "%note50%"=="" @echo.%note50%>>%pathname:~3%
if "%note50%"=="" @echo.>>%pathname:~3%
title Converting (83,5%% complited)
if not "%note51%"=="" @echo.%note51%>>%pathname:~3%
if "%note51%"=="" @echo.>>%pathname:~3%
title Converting (85,2%% complited)
if not "%note52%"=="" @echo.%note52%>>%pathname:~3%
if "%note52%"=="" @echo.>>%pathname:~3%
title Converting (86,9%% complited)
if not "%note53%"=="" @echo.%note53%>>%pathname:~3%
if "%note53%"=="" @echo.>>%pathname:~3%
title Converting (88,6%% complited)
if not "%note54%"=="" @echo.%note54%>>%pathname:~3%
if "%note54%"=="" @echo.>>%pathname:~3%
title Converting (90,3%% complited)
if not "%note55%"=="" @echo.%note55%>>%pathname:~3%
if "%note55%"=="" @echo.>>%pathname:~3%
title Converting (93,0%% complited)
if not "%note56%"=="" @echo.%note56%>>%pathname:~3%
if "%note56%"=="" @echo.>>%pathname:~3%
title Converting (94,7%% complited)
if not "%note57%"=="" @echo.%note57%>>%pathname:~3%
if "%note57%"=="" @echo.>>%pathname:~3%
title Converting (96,4%% complited)
if not "%note58%"=="" @echo.%note58%>>%pathname:~3%
if "%note58%"=="" @echo.>>%pathname:~3%
title Converting (98,1%% complited)
if not "%note59%"=="" @echo.%note59%>>%pathname:~3%
if "%note59%"=="" @echo.>>%pathname:~3%
title Converting (99,8%% complited)
if not "%note60%"=="" @echo.%note60%>>%pathname:~3%
if "%note60%"=="" @echo.>>%pathname:~3%
title Converting (100,0%% complited)
Echo Command complited successfully
title %SystemRoot%\System32\cmd.exe
goto :eof

:typecmd
if not exist %pathname:~3% echo File does not exist&goto :eof
for /f "delims=" %%i in (%pathname:~3%) do (
    SET /A IDX+=1
    SET "note!IDX!=%%i"
)
set /a ll=%IDX%
set /a ai=1
set /a bi=2
set /a ci=3
set /a di=4
set /a ei=5
set /a fi=6
set /a gi=7
set /a hi=8
set /a ii=9
cls
mode 100,11
:printloop
echo %tab%%bck% 2>nul&set /p=<nul
if %ai% GTR %ll% cls&endlocal&goto :eof
if not "!note%ai%!"=="" echo.!note%ai%!
if "!note%ai%!"=="" echo.                                                                                                  
if not "!note%bi%!"=="" echo.!note%bi%!
if "!note%bi%!"=="" echo.                                                                                                  
if not "!note%ci%!"=="" echo.!note%ci%!
if "!note%ci%!"=="" echo.                                                                                                  
if not "!note%di%!"=="" echo.!note%di%!
if "!note%di%!"=="" echo.                                                                                                  
if not "!note%ei%!"=="" echo.!note%ei%!
if "!note%ei%!"=="" echo.                                                                                                  
if not "!note%fi%!"=="" echo.!note%fi%!
if "!note%fi%!"=="" echo.                                                                                                  
if not "!note%gi%!"=="" echo.!note%gi%!
if "!note%gi%!"=="" echo.                                                                                                  
if not "!note%hi%!"=="" echo.!note%hi%!
if "!note%hi%!"=="" echo.                                                                                                  
if not "!note%ii%!"=="" echo.!note%ii%!
if "!note%ii%!"=="" echo.                                                                                                  
pause
set /a ai=%ai%+1
set /a bi=%bi%+1
set /a ci=%ci%+1
set /a di=%di%+1
set /a ei=%ei%+1
set /a fi=%fi%+1
set /a gi=%gi%+1
set /a hi=%hi%+1
set /a ii=%ii%+1
goto printloop

:load_help
set bf=%fg%
set "spi=0F \DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\n"
set "spi=%spi% 0F \DB a0 \DB\DB 0a Loading... a0 \DB\DB 0F \DB\n"
set "spi=%spi%\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\DB\n"
if not "%cone%"=="true" bg sprite 9 30 %spi%
if not exist %pathname% set nonexist=true
set "inhelp=true"
set "demo=true"
set "note1=------------------------------------------------------------------------"
set "note2= 1                      GUI notepad tutorial"
set "note3=------------------------------------------------------------------------"
set "note4= "
set "note5=This tutorial gives a basic overview of the tools available in GUI"
set "note6=notepad. To continue, press DOWN at the menu above."
set "note7= "
set "note8=To go back to the previous page, press UP at the menu above. To go to a"
set "note9=specific page, click the page number."
set "note10= "
set "note11=------------------------------------------------------------------------"
set "note12= 2                         The file menu"
set "note13=------------------------------------------------------------------------"
set "note14=To create a new note, select new note in the file menu. To load"
set "note15=an existing note, go to file menu and select Load note option, and to"
set "note16=save, click Save note. To exit, click Exit in the File menu."
set "note17= "
set "note18=Note: You can still open older GUI notepad documents, the same way, you"
set "note19=open new documents. They will be automatically converted and older file"
set "note20=will be backed up with .old extension."
set "note21=------------------------------------------------------------------------"
set "note22= 3                         Editing notes"
set "note23=------------------------------------------------------------------------"
set "note24=To edit lines in a note, select Edit note in the View menu. The display"
set "note25=shows the line you are currently editing. To change current line, click"
set "note26=on the line number, type in the number and press enter. To line, click"
set "note27=on the box and type whatever you want. Type exit to return to mouse mode."
set "note28=Note: If you want to type exit as the line, just type exit_ (with"
set "note29=underscore). Also, you can add prefixes or suffixes, by typing .suffix."
set "note30=or .prefix. in front of decided line."
set "note31=------------------------------------------------------------------------"
set "note32= 4                         The edit menu"
set "note33=------------------------------------------------------------------------"
set "note34=In the edit menu, you can change the line number to edit, add date and"
set "note35=time to current line, you can also replace and find."
set "note36=Replace option replaces all requested text with requested replacement"
set "note37=text across the entire document."
set "note38= "
set "note39=Find option allows you to find certain word or a sentence in the document."
set "note40=Find next continues to search for the next occourence of same string."
set "note41=------------------------------------------------------------------------"
set "note42= 5                          Customization"
set "note43=------------------------------------------------------------------------"
set "note44=GUI notepad allows you to change theme of the interface. In order to do"
set "note45=it, just click on the Format menu and select Colors."
set "note46= "
set "note47=Once you do that, a dialog should appear. In that dialog, you can select"
set "note48=between a background, menu and selected items color. Clicking a color in"
set "note49=the background row will change the background color, same with the fore-"
set "note50=ground or text color."
set "note51=------------------------------------------------------------------------"
set "note52= 6                          The help menu"
set "note53=------------------------------------------------------------------------"
set "note54=Help menu contains the tutorial (which you are using right now) and"
set "note55=the about screen. The about screen contains information about the"
set "note56=program. Click to exit."
set "note57= "
set "note58= "
set "note59= "
set "note60= "
set "note61=------------------------------------------------------------------------"
set "note62= 7                    Command line interface"
set "note63=------------------------------------------------------------------------"
set "note64=This batch file also offers a really simple command line interface. To"
set "note65=see information about the possible arguments, just type in CMD:"
set "note66=GUI_notepad.bat /?"
set "note67= "
set "note68=This will list all possible arguments. In addition, you can also open"
set "note69=any text document with this batch file by typing:"
set "note70=GUI_notepad.bat [documentname] (document name mustn't have any spaces)"
set /a noteline=15+15-15
goto :eof