@echo off
set odir=%cd%
set dd=%1
if "%dd%"=="/?" goto clinehelp
%dd:~0,2%
cd %1 2>nul
set d=%2
setlocal EnableDelayedExpansion EnableExtensions
bg font 6
set cdir=%cd%
set "tab=	"
set key=^^!ERRORLEVEL^^!
for /l %%a in (1,1,1000) do set "bck=!bck!"
set init=yes
if "%dd%"=="/noshow" set init=no
if "%d%"=="/noshow" set init=no
if exist %temp%\cd.txt del %temp%\cd.txt
set mouse=true
set page=1
set index1=2
set index2=3
set index3=4
set index4=5
set index5=6
set index6=7
set index7=8
set index8=9
set index9=10
set index10=11
set index11=12
set index12=13
set index13=14
set index14=15
set index15=16
set index16=17
set index17=18
set index18=19
set index19=20
set index20=21
set index21=22
set index22=23
set index23=24
set index24=25
set index25=26
set index26=27
set index27=28
set index28=29
set index29=30
set index30=31
mode 150,45
if "%init%"=="no" color 0b&goto inipath
color b0
cls
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                      лллллллллллллл                                                           
echo.                                                      лл                                                                       
echo.                                                      лл    лллллллл                                                           
echo.                                                      лл        лллл               File Manager                                
echo.                                                      лллллллллллллл                                                           
echo.                                                                                   Version 0.8a                                
echo.                                                        лл      лл                 Revision 80                                 
echo.                                                        лл      лл                                                             
echo.                                                        лллллллллл                 Initializing directory...                   
echo.                                                                                                                               
echo.                                                 лллллллллллллллллллллллл                                                      
echo.                                                 лллллллллллллллллллллллл                                                      
echo.                                                           ллл                                                                 
echo.                                                           ллл                                                                 
echo.                                                           ллл                                                                 
echo.                                                           ллл                                                                 
echo.                                                 лллллллллллллллллллллллл                                                      
echo.                                                 лллллллллллллллллллллллл                                                      
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
:inipath
path=%path%;%cd%
if not exist "%SystemRoot%\System32\bg.exe" set redalarm=true
if not exist "%cd%\bg.exe" set redalarm=true
if exist "%SystemRoot%\System32\bg.exe" set redalarm=false
if exist "%cd%\bg.exe" set redalarm=false
if "%redalarm%"=="true" goto panic
if "%dd%"=="/drives" goto checkdrives
if "%d%"=="/drives" goto checkdrives
:interface
if "%adir%"=="A:" A:
if "%adir%"=="B:" B:
if "%adir%"=="C:" C:
if "%adir%"=="D:" D:
if "%adir%"=="E:" E:
if "%adir%"=="F:" F:
if "%adir%"=="G:" G:
if "%adir%"=="H:" H:
if "%adir%"=="I:" I:
if "%adir%"=="J:" J:
if "%adir%"=="K:" K:
if "%adir%"=="L:" L:
if "%adir%"=="M:" M:
if "%adir%"=="N:" N:
if "%adir%"=="O:" O:
if "%adir%"=="P:" P:
if "%adir%"=="Q:" Q:
if "%adir%"=="R:" R:
if "%adir%"=="S:" S:
if "%adir%"=="T:" T:
if "%adir%"=="U:" U:
if "%adir%"=="V:" V:
if "%adir%"=="W:" W:
if "%adir%"=="X:" X:
if "%adir%"=="Y:" Y:
if "%adir%"=="Z:" Z:
set cdir=%cd%
if "%init%"=="yes" goto didi
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory:                                                                                                                                ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| _                                       ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
echo.^|__________________________________________^|                                      Initializing directory...                                         ^|
echo.^| File info                                ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Please select a file                     ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File/Directory options                   ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Delete       Rename                      ^|                                                                                                        ^|
echo.^| Copy         New folder                  ^|                                                                                                        ^|
echo.^| Cut          Change attributes           ^|                                           ^<- Page %page% -^>                                                 ^|
echo.^| Paste                                    ^|                                                                                                        ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  Please wait while the file manager analizes files in the directory...                                                                            ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter:                                                                                                                                    ^|
echo.^|  Volume label:                                                                                                                                    ^|
echo.^|  Free space:                                                                                                                                      ^|
echo.^|  Serial number:                                                                                                                                   ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [ ] Mouse mode ^|     Launch it    ^|
echo.^|_____________________^|____________^|_____________________^|__________________________^|___________________________^|________________^|__________________^|
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| _                                       ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
echo.^|__________________________________________^|                                      Initializing directory...                                         ^|
echo.^| File info                                ^|                                                                                                        ^|
echo.^|                                          ^|                 Depending on the number of files in a folder, this may take a while                    ^|
echo.^| Please select a file                     ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File/Directory options                   ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Delete       Rename                      ^|                                                                                                        ^|
echo.^| Copy         New folder                  ^|                                                                                                        ^|
echo.^| Cut          Change attributes           ^|                                           ^<- Page %page% -^>                                          ^|
echo.^| Paste                                    ^|                                                                                                        ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  Please wait while the file manager analizes files in the directory...                                                                            ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter:                                                                                                                                         ^|
echo.^|  Volume label:                                                                                                                                    ^|
echo.^|  Free space:                                                                                                                                      ^|
echo.^|  Serial number:                                                                                                                                   ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [ ] Mouse mode ^|     Launch it    ^|
echo.^|_____________________^|____________^|_____________________^|__________________________^|___________________________^|________________^|__________________^|
:didi
dir /a >%temp%\cd.txt
set /p vm=<%temp%\cd.txt
set "amount="
set "IDX="
for /f "delims=" %%i in (%temp%\cd.txt) do (
    SET "file!IDX!=%%i"
    SET /A IDX+=1
    SET /A YAM+=%IDX%+1-1
    set amount=%IDX%
    set /a d+=1
    if not "%init%"=="yes" call :looptillthat
)
if "%at%"=="" set at=1
goto eddyloop
:looptillthat
if "%ub%"=="" set "ub=1"&goto u1
if "%ub%"=="1" set "ub=2"&goto u2
if "%ub%"=="2" set "ub=1"&goto u1
:u1
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.^|                                          ^|                                               ...                                                      ^|
goto :eof
:u2
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.^|                                          ^|                                                                                                        ^|
goto :eof
:eddyloop
set /a amount=%IDX%-4
set /a adount=%IDX%-1
set /a abount=%IDX%-2
set letter=%file2:~6,1%
set volumename=%vm:~22%
if "%volumename: no label=%"=="no label." set "volume=(no label specified)"
if "%volumename: no label=%"==" no label." set "volume=(no label specified)"
if "%volumename: no label=%"=="s no label." set "volume=(no label specified)"
set serialnum=%file1:~25%
set nf=4
set rf=2
set mouse=true
set page=1
set index1=2
set index2=3
set index3=4
set index4=5
set index5=6
set index6=7
set index7=8
set index8=9
set index9=10
set index10=11
set index11=12
set index12=13
set index13=14
set index14=15
set index15=16
set index16=17
set index17=18
set index18=19
set index19=20
set index20=21
set index21=22
set index22=23
set index23=24
set index24=25
set index25=26
set index26=27
set index27=28
set index28=29
set index29=30
set index30=31
goto skipnftest
:looptillfiles
if "%init%"=="yes" goto skipatest
if "%at%"=="" set "at=1"&goto skipatest
if "%at%"=="1" set "at=2"&goto skipatest
if "%at%"=="2" set "at=3"&goto skipatest
if "%at%"=="3" set "at=4"&goto skipatest
if "%at%"=="4" set "at=1"&goto skipatest
:skipatest
set /a nf=%nf%+1
set /a rf=%nf%-2
:skipnftest
if "%rf%"=="%amount%" set "rf="&goto endloop
set cf=!file%nf%!
::if not exist !file%nf%! set "rf="&goto endloop
::if "%cf%"=="" set "rf="&goto endloop
set folder%rf%=false
set name%rf%=%cf:~36%
if exist "%cf:~36%\*" set folder%rf%=true
if "%cf:~-4%"==".txt" set "type%rf%=TX T"
if "%cf:~-4%"==".mp3" set "type%rf%=MP 3"
if "%cf:~-4%"==".bmp" set "type%rf%=BM P"
if "%cf:~-4%"==".wav" set "type%rf%=WAVE"
if "%cf:~-4%"==".bat" set "type%rf%=BA T"
if "%cf:~-4%"==".cmd" set "type%rf%=CM D"
if "%cf:~-4%"==".rtf" set "type%rf%=RT F"
if "%cf:~-4%"==".com" set "type%rf%=CO M"
if "%cf:~-4%"==".exe" set "type%rf%=EX E"
if "%cf:~-4%"==".bin" set "type%rf%=BI N"
if "%cf:~-4%"==".zip" set "type%rf%=ZI P"
if "%cf:~-4%"==".mpg" set "type%rf%=MPEG"
if "%cf:~-4%"==".rar" set "type%rf%=RA R"
if "%cf:~-5%"==".jpeg" set "type%rf%=JPEG"
if "%cf:~-4%"==".jpg" set "type%rf%=JPEG"
if "%cf:~-4%"==".jpe" set "type%rf%=JPEG"
if "%cf:~-4%"==".lnk" set "type%rf%=LINK"
if "%cf:~-4%"==".htm" set "type%rf%=PAGE"
if "%cf:~-5%"==".html" set "type%rf%=PAGE"
if "%cf:~-4%"==".cda" set "type%rf%=CD  "
if "%cf:~-4%"==".wma" set "type%rf%=WM A"
if "%cf:~-4%"==".wmv" set "type%rf%=WM V"
if "%cf:~-4%"==".avi" set "type%rf%=AVDI"
if "%cf:~-4%"==".png" set "type%rf%=PNWG"
if "%cf:~-4%"==".dll" set "type%rf%=DL L"
if "%cf:~-4%"==".sys" set "type%rf%=SY S"
if "%cf:~-6%"=="cd.txt" set "type%rf%=FMDF"
if "%cf:~-3%"==".au" set "type%rf%=AU  "
if "%cf:~-4%"==".log" set "type%rf%=LO G"
if "%cf:~-3%"==".db" set "type%rf%=DB  "
if "%cf:~-4%"==".ini" set "type%rf%=IN I"
if "%cf:~-4%"==".inf" set "type%rf%=IN F"
if "%cf:~-4%"==".reg" set "type%rf%=RE G"
if "%cf:~-4%"==".ocx" set "type%rf%=OC X"
if "%cf:~-4%"==".apk" set "type%rf%=AP K"
if "%cf:~-4%"==".vhd" set "type%rf%=VH D"
if "%cf:~-4%"==".vmc" set "type%rf%=VM C"
if "%cf:~-4%"==".mp4" set "type%rf%=MPG4"
if "%cf:~-4%"==".scf" set "type%rf%=SC F"
if "%cf:~-4%"==".scr" set "type%rf%=SC R"
if "%cf:~-4%"==".hlp" set "type%rf%=HL P"
if "%cf:~-4%"==".cab" set "type%rf%=CA B"
if "%cf:~-4%"==".cpl" set "type%rf%=CP L"
if "%cf:~-4%"==".asm" set "type%rf%=AS M"
if "%cf:~-4%"==".chm" set "type%rf%=CH M"
if "%cf:~-4%"==".msc" set "type%rf%=MS C"
if "%cf:~-4%"==".dat" set "type%rf%=DA T"
if "%cf:~-4%"==".vbs" set "type%rf%=VB S"
if "%cf:~-4%"==".cpp" set "type%rf%=C+ +"
if "%cf:~-3%"==".cs" set "type%rf%=C#  "
if "%cf:~-4%"==".cur" set "type%rf%=CU R"
if "%cf:~-4%"==".ani" set "type%rf%=AN I"
if "%cf:~-4%"==".ttf" set "type%rf%=TT F"
if "%cf:~-4%"==".fon" set "type%rf%=FONT"
if "%cf:~-4%"==".TXT" set "type%rf%=TX T"
if "%cf:~-4%"==".MP3" set "type%rf%=MP 3"
if "%cf:~-4%"==".BMP" set "type%rf%=BM P"
if "%cf:~-4%"==".WAV" set "type%rf%=WAVE"
if "%cf:~-4%"==".BAT" set "type%rf%=BA T"
if "%cf:~-4%"==".CMD" set "type%rf%=CM D"
if "%cf:~-4%"==".RTF" set "type%rf%=RT F"
if "%cf:~-4%"==".COM" set "type%rf%=CO M"
if "%cf:~-4%"==".EXE" set "type%rf%=EX E"
if "%cf:~-4%"==".BIN" set "type%rf%=BI N"
if "%cf:~-4%"==".ZIP" set "type%rf%=ZI P"
if "%cf:~-4%"==".MPG" set "type%rf%=MPEG"
if "%cf:~-4%"==".RAR" set "type%rf%=RA R"
if "%cf:~-5%"==".JPEG" set "type%rf%=JPEG"
if "%cf:~-4%"==".JPG" set "type%rf%=JPEG"
if "%cf:~-4%"==".JPE" set "type%rf%=JPEG"
if "%cf:~-4%"==".LNK" set "type%rf%=LINK"
if "%cf:~-4%"==".HTM" set "type%rf%=PAGE"
if "%cf:~-5%"==".HTML" set "type%rf%=PAGE"
if "%cf:~-4%"==".CDA" set "type%rf%=CD  "
if "%cf:~-4%"==".WMA" set "type%rf%=WM A"
if "%cf:~-4%"==".WMV" set "type%rf%=WM V"
if "%cf:~-4%"==".AVI" set "type%rf%=AVDI"
if "%cf:~-4%"==".PNG" set "type%rf%=PNWG"
if "%cf:~-4%"==".DLL" set "type%rf%=DL L"
if "%cf:~-4%"==".SYS" set "type%rf%=SY S"
if "%cf:~-3%"==".AU" set "type%rf%=AU  "
if "%cf:~-4%"==".LOG" set "type%rf%=LO G"
if "%cf:~-3%"==".DB" set "type%rf%=DB  "
if "%cf:~-4%"==".INI" set "type%rf%=IN I"
if "%cf:~-4%"==".INF" set "type%rf%=IN F"
if "%cf:~-4%"==".REG" set "type%rf%=RE G"
if "%cf:~-4%"==".OCX" set "type%rf%=OC X"
if "%cf:~-4%"==".APK" set "type%rf%=AP K"
if "%cf:~-4%"==".VHD" set "type%rf%=VH D"
if "%cf:~-4%"==".VMC" set "type%rf%=VM C"
if "%cf:~-4%"==".mp4" set "type%rf%=MPG4"
if "%cf:~-4%"==".SCF" set "type%rf%=SC F"
if "%cf:~-4%"==".SCR" set "type%rf%=SC R"
if "%cf:~-4%"==".HLP" set "type%rf%=HL P"
if "%cf:~-4%"==".CAB" set "type%rf%=CA B"
if "%cf:~-4%"==".CPL" set "type%rf%=CP L"
if "%cf:~-4%"==".ASM" set "type%rf%=AS M"
if "%cf:~-4%"==".CHM" set "type%rf%=CH M"
if "%cf:~-4%"==".MSC" set "type%rf%=MS C"
if "%cf:~-4%"==".DAT" set "type%rf%=DA T"
if "%cf:~-4%"==".VBS" set "type%rf%=VB S"
if "%cf:~-4%"==".CPP" set "type%rf%=C+ +"
if "%cf:~-3%"==".CS" set "type%rf%=C#  "
if "%cf:~-4%"==".CUR" set "type%rf%=CU R"
if "%cf:~-4%"==".ANI" set "type%rf%=AN I"
if "%cf:~-4%"==".TTF" set "type%rf%=TT F"
if "%cf:~-4%"==".FON" set "type%rf%=FONT"
if "!type%rf%!"=="" set "type%rf%=0110"
::if "%cf:~22,3%"=="DIR" set folder%rf%=true
set name=!name%rf%!
set date%rf%=%cf:~0,11%
set time%rf%=%cf:~12,5%
if "%init%"=="yes" goto looptillfiles
if not "%at%"=="1" goto at2
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.^|                                          ^|                                               .                                                        ^|
:at2
if not "%at%"=="2" goto at3
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.^|                                          ^|                                                .                                                       ^|
:at3
if not "%at%"=="3" goto at4
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.^|                                          ^|                                                 .                                                      ^|
:at4
if not "%at%"=="4" goto looptillfiles
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.^|                                          ^|                                                .                                                       ^|
goto looptillfiles
:endloop
set "at="
color 0B
if "%init%"=="yes" cls&set init=no
if exist %temp%\cd.txt del %temp%\cd.txt
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory:                                                                                                                                ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| _                                       ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File info                                ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Please select a file                     ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File/Directory options                   ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Delete       Rename                      ^|                                                                                                        ^|
echo.^| Copy         New folder                  ^|                                                                                                        ^|
echo.^| Cut          Change attributes           ^|                                                                                                        ^|
echo.^| Paste                                    ^|                                                                                                        ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  Please wait while the list is being populated                                                                                                    ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter:                                                                                                                                    ^|
echo.^|  Volume label:                                                                                                                                    ^|
echo.^|  Free space:                                                                                                                                      ^|
echo.^|  Serial number:                                                                                                                                   ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [ ] Mouse mode ^|     Launch it    ^|
echo.^|_____________________^|____________^|_____________________^|__________________________^|___________________________^|________________^|__________________^|
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| _                                       ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File info                                ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Please select a file                     ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File/Directory options                   ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Delete       Rename                      ^|                                                                                                        ^|
echo.^| Copy         New folder                  ^|                                                                                                        ^|
echo.^| Cut          Change attributes           ^|                                           ^<- Page %page% -^>
echo.^| Paste                                    ^|                                                                                                        ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  Please wait while the list is being populated                                                                                                    ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter:                                                                                                                                    ^|
echo.^|  Volume label:                                                                                                                                    ^|
echo.^|  Free space:                                                                                                                                      ^|
echo.^|  Serial number:                                                                                                                                   ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [ ] Mouse mode ^|     Launch it    ^|
echo.^|_____________________^|____________^|_____________________^|__________________________^|___________________________^|________________^|__________________^|
:yolp
title GUI filemanager
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index10%!
if "!folder%index10%!"=="true" echo.^| _                                       ^|                                                                                             ____  
if "!folder%index10%!"=="true" echo.^| - Drives                                 ^|                                                                                            ^| DI ^| 
if "!folder%index10%!"=="true" echo.^| - User folder                            ^|                                                                                            ^|  R ^| 
if "!folder%index10%!"=="true" echo.^| - Recycle Bin                            ^|                                                                                            ^|____^| 
if "!folder%index10%!"=="true" echo.^|__________________________________________^|                                                                                           !name%index10%:~0,8!
if "!folder%index10%!"=="true" echo.^| Folder info                              ^|
if "!folder%index10%!"=="true" echo.^|                                          ^|
if "!folder%index10%!"=="false" echo.^| _                                       ^|                                                                                             ____  
if "!folder%index10%!"=="false" echo.^| - Drives                                 ^|                                                                                            ^| 01 ^| 
if "!folder%index10%!"=="false" echo.^| - User folder                            ^|                                                                                            ^| 10 ^| 
if "!folder%index10%!"=="false" echo.^| - Recycle Bin                            ^|                                                                                            ^|____^| 
if "!folder%index10%!"=="false" echo.^|__________________________________________^|                                                                                           !name%index10%:~0,8!
if "!folder%index10%!"=="false" echo.^| Folder info                              ^|
if "!folder%index10%!"=="false" echo.^|                                          ^|
if "!folder%index10%!"=="drive" echo.^| _                                       ^|                                                                                             ____  
if "!folder%index10%!"=="drive" echo.^| - Drives                                 ^|                                                                                            ^| DR ^| 
if "!folder%index10%!"=="drive" echo.^| - User folder                            ^|                                                                                            ^|  V ^| 
if "!folder%index10%!"=="drive" echo.^| - Recycle Bin                            ^|                                                                                            ^|____^| 
if "!folder%index10%!"=="drive" echo.^|__________________________________________^|                                                                                           !name%index10%:~0,8!
if "!folder%index10%!"=="drive" echo.^| Folder info                              ^|
if "!folder%index10%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index9%!
if "!folder%index9%!"=="true" echo.^| _                                       ^|                                                                                   ____  
if "!folder%index9%!"=="true" echo.^| - Drives                                 ^|                                                                                  ^| DI ^| 
if "!folder%index9%!"=="true" echo.^| - User folder                            ^|                                                                                  ^|  R ^| 
if "!folder%index9%!"=="true" echo.^| - Recycle Bin                            ^|                                                                                  ^|____^| 
if "!folder%index9%!"=="true" echo.^|__________________________________________^|                                                                                 !name%index9%:~0,8!
if "!folder%index9%!"=="true" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index9%!"=="true" echo.^|                                          ^|                                                                                                         
if "!folder%index9%!"=="false" echo.^| _                                       ^|                                                                                   ____  
if "!folder%index9%!"=="false" echo.^| - Drives                                 ^|                                                                                  ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index9%!"=="false" echo.^| - User folder                            ^|                                                                                  ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index9%!"=="false" echo.^| - Recycle Bin                            ^|                                                                                  ^|____^| 
if "!folder%index9%!"=="false" echo.^|__________________________________________^|                                                                                 !name%index9%:~0,8!
if "!folder%index9%!"=="false" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index9%!"=="false" echo.^|                                          ^|                                                                                                         
if "!folder%index9%!"=="drive" echo.^| _                                       ^|                                                                                   ____  
if "!folder%index9%!"=="drive" echo.^| - Drives                                 ^|                                                                                  ^| DR ^| 
if "!folder%index9%!"=="drive" echo.^| - User folder                            ^|                                                                                  ^|  V ^| 
if "!folder%index9%!"=="drive" echo.^| - Recycle Bin                            ^|                                                                                  ^|____^| 
if "!folder%index9%!"=="drive" echo.^|__________________________________________^|                                                                                 !name%index9%:~0,8!
if "!folder%index9%!"=="drive" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index9%!"=="drive" echo.^|                                          ^|                                                                                                         
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index8%!
if "!folder%index8%!"=="true" echo.^| _                                       ^|                                                                         ____  
if "!folder%index8%!"=="true" echo.^| - Drives                                 ^|                                                                        ^| DI ^| 
if "!folder%index8%!"=="true" echo.^| - User folder                            ^|                                                                        ^|  R ^| 
if "!folder%index8%!"=="true" echo.^| - Recycle Bin                            ^|                                                                        ^|____^| 
if "!folder%index8%!"=="true" echo.^|__________________________________________^|                                                                       !name%index8%:~0,8!
if "!folder%index8%!"=="true" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index8%!"=="true" echo.^|                                          ^|                                                                                                         
if "!folder%index8%!"=="false" echo.^| _                                       ^|                                                                         ____  
if "!folder%index8%!"=="false" echo.^| - Drives                                 ^|                                                                        ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index8%!"=="false" echo.^| - User folder                            ^|                                                                        ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index8%!"=="false" echo.^| - Recycle Bin                            ^|                                                                        ^|____^| 
if "!folder%index8%!"=="false" echo.^|__________________________________________^|                                                                       !name%index8%:~0,8!
if "!folder%index8%!"=="false" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index8%!"=="false" echo.^|                                          ^|                                                                                                         
if "!folder%index8%!"=="drive" echo.^| _                                       ^|                                                                         ____  
if "!folder%index8%!"=="drive" echo.^| - Drives                                 ^|                                                                        ^| DR ^| 
if "!folder%index8%!"=="drive" echo.^| - User folder                            ^|                                                                        ^|  V ^| 
if "!folder%index8%!"=="drive" echo.^| - Recycle Bin                            ^|                                                                        ^|____^| 
if "!folder%index8%!"=="drive" echo.^|__________________________________________^|                                                                       !name%index8%:~0,8!
if "!folder%index8%!"=="drive" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index8%!"=="drive" echo.^|                                          ^|                                                                                                         
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index7%!
if "!folder%index7%!"=="true" echo.^|                                          ^|                                                               ____  
if "!folder%index7%!"=="true" echo.^| - Drives                                 ^|                                                              ^| DI ^| 
if "!folder%index7%!"=="true" echo.^| - User folder                            ^|                                                              ^|  R ^| 
if "!folder%index7%!"=="true" echo.^| - Recycle Bin                            ^|                                                              ^|____^| 
if "!folder%index7%!"=="true" echo.^|__________________________________________^|                                                             !name%index7%:~0,8!
if "!folder%index7%!"=="true" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index7%!"=="true" echo.^|                                          ^|                                                                                                         
if "!folder%index7%!"=="false" echo.^|                                          ^|                                                               ____  
if "!folder%index7%!"=="false" echo.^| - Drives                                 ^|                                                              ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index7%!"=="false" echo.^| - User folder                            ^|                                                              ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index7%!"=="false" echo.^| - Recycle Bin                            ^|                                                              ^|____^| 
if "!folder%index7%!"=="false" echo.^|__________________________________________^|                                                             !name%index7%:~0,8!
if "!folder%index7%!"=="false" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index7%!"=="false" echo.^|                                          ^|                                                                                                         
if "!folder%index7%!"=="drive" echo.^|                                          ^|                                                               ____  
if "!folder%index7%!"=="drive" echo.^| - Drives                                 ^|                                                              ^| DR ^| 
if "!folder%index7%!"=="drive" echo.^| - User folder                            ^|                                                              ^|  V ^| 
if "!folder%index7%!"=="drive" echo.^| - Recycle Bin                            ^|                                                              ^|____^| 
if "!folder%index7%!"=="drive" echo.^|__________________________________________^|                                                             !name%index7%:~0,8!
if "!folder%index7%!"=="drive" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index7%!"=="drive" echo.^|                                          ^|                                                                                                         
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index6%!
if "!folder%index6%!"=="true" echo.^|                                          ^|                                                     ____  
if "!folder%index6%!"=="true" echo.^| - Drives                                 ^|                                                    ^| DI ^| 
if "!folder%index6%!"=="true" echo.^| - User folder                            ^|                                                    ^|  R ^| 
if "!folder%index6%!"=="true" echo.^| - Recycle Bin                            ^|                                                    ^|____^| 
if "!folder%index6%!"=="true" echo.^|__________________________________________^|                                                   !name%index6%:~0,8!
if "!folder%index6%!"=="true" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index6%!"=="true" echo.^|                                          ^|                                                                                                         
if "!folder%index6%!"=="false" echo.^|                                          ^|                                                     ____  
if "!folder%index6%!"=="false" echo.^| - Drives                                 ^|                                                    ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index6%!"=="false" echo.^| - User folder                            ^|                                                    ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index6%!"=="false" echo.^| - Recycle Bin                            ^|                                                    ^|____^| 
if "!folder%index6%!"=="false" echo.^|__________________________________________^|                                                   !name%index6%:~0,8!
if "!folder%index6%!"=="false" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index6%!"=="false" echo.^|                                          ^|                                                                                                         
if "!folder%index6%!"=="drive" echo.^|                                          ^|                                                     ____  
if "!folder%index6%!"=="drive" echo.^| - Drives                                 ^|                                                    ^| DR ^| 
if "!folder%index6%!"=="drive" echo.^| - User folder                            ^|                                                    ^|  V ^| 
if "!folder%index6%!"=="drive" echo.^| - Recycle Bin                            ^|                                                    ^|____^| 
if "!folder%index6%!"=="drive" echo.^|__________________________________________^|                                                   !name%index6%:~0,8!
if "!folder%index6%!"=="drive" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index6%!"=="drive" echo.^|                                          ^|                                                                                                         
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index5%!
if "!folder%index5%!"=="true" echo.^|                                          ^|                                           ____  
if "!folder%index5%!"=="true" echo.^| - Drives                                 ^|                                          ^| DI ^| 
if "!folder%index5%!"=="true" echo.^| - User folder                            ^|                                          ^|  R ^| 
if "!folder%index5%!"=="true" echo.^| - Recycle Bin                            ^|                                          ^|____^| 
if "!folder%index5%!"=="true" echo.^|__________________________________________^|                                         !name%index5%:~0,8!
if "!folder%index5%!"=="true" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index5%!"=="true" echo.^|                                          ^|                                                                                                         
if "!folder%index5%!"=="false" echo.^|                                          ^|                                           ____  
if "!folder%index5%!"=="false" echo.^| - Drives                                 ^|                                          ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index5%!"=="false" echo.^| - User folder                            ^|                                          ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index5%!"=="false" echo.^| - Recycle Bin                            ^|                                          ^|____^| 
if "!folder%index5%!"=="false" echo.^|__________________________________________^|                                         !name%index5%:~0,8!
if "!folder%index5%!"=="false" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index5%!"=="false" echo.^|                                          ^|                                                                                                         
if "!folder%index5%!"=="drive" echo.^|                                          ^|                                           ____  
if "!folder%index5%!"=="drive" echo.^| - Drives                                 ^|                                          ^| DR ^| 
if "!folder%index5%!"=="drive" echo.^| - User folder                            ^|                                          ^|  V ^| 
if "!folder%index5%!"=="drive" echo.^| - Recycle Bin                            ^|                                          ^|____^| 
if "!folder%index5%!"=="drive" echo.^|__________________________________________^|                                         !name%index5%:~0,8!
if "!folder%index5%!"=="drive" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index5%!"=="drive" echo.^|                                          ^|                                                                                                         
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index4%!
if "!folder%index4%!"=="true" echo.^|                                          ^|                                 ____  
if "!folder%index4%!"=="true" echo.^| - Drives                                 ^|                                ^| DI ^| 
if "!folder%index4%!"=="true" echo.^| - User folder                            ^|                                ^|  R ^| 
if "!folder%index4%!"=="true" echo.^| - Recycle Bin                            ^|                                ^|____^| 
if "!folder%index4%!"=="true" echo.^|__________________________________________^|                               !name%index4%:~0,8!
if "!folder%index4%!"=="true" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index4%!"=="true" echo.^|                                          ^|                                                                                                         
if "!folder%index4%!"=="false" echo.^|                                          ^|                                 ____  
if "!folder%index4%!"=="false" echo.^| - Drives                                 ^|                                ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index4%!"=="false" echo.^| - User folder                            ^|                                ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index4%!"=="false" echo.^| - Recycle Bin                            ^|                                ^|____^| 
if "!folder%index4%!"=="false" echo.^|__________________________________________^|                               !name%index4%:~0,8!
if "!folder%index4%!"=="false" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index4%!"=="false" echo.^|                                          ^|                                                                                                         
if "!folder%index4%!"=="drive" echo.^|                                          ^|                                 ____  
if "!folder%index4%!"=="drive" echo.^| - Drives                                 ^|                                ^| DR ^| 
if "!folder%index4%!"=="drive" echo.^| - User folder                            ^|                                ^|  V ^| 
if "!folder%index4%!"=="drive" echo.^| - Recycle Bin                            ^|                                ^|____^| 
if "!folder%index4%!"=="drive" echo.^|__________________________________________^|                               !name%index4%:~0,8!
if "!folder%index4%!"=="drive" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index4%!"=="drive" echo.^|                                          ^|                                                                                                         
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index3%!
if "!folder%index3%!"=="true" echo.^|                                          ^|                       ____  
if "!folder%index3%!"=="true" echo.^| - Drives                                 ^|                      ^| DI ^| 
if "!folder%index3%!"=="true" echo.^| - User folder                            ^|                      ^|  R ^| 
if "!folder%index3%!"=="true" echo.^| - Recycle Bin                            ^|                      ^|____^| 
if "!folder%index3%!"=="true" echo.^|__________________________________________^|                     !name%index3%:~0,8!
if "!folder%index3%!"=="true" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index3%!"=="true" echo.^|                                          ^|                                                                                                         
if "!folder%index3%!"=="false" echo.^|                                          ^|                       ____  
if "!folder%index3%!"=="false" echo.^| - Drives                                 ^|                      ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index3%!"=="false" echo.^| - User folder                            ^|                      ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index3%!"=="false" echo.^| - Recycle Bin                            ^|                      ^|____^| 
if "!folder%index3%!"=="false" echo.^|__________________________________________^|                     !name%index3%:~0,8!
if "!folder%index3%!"=="false" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index3%!"=="false" echo.^|                                          ^|                                                                                                         
if "!folder%index3%!"=="drive" echo.^|                                          ^|                       ____  
if "!folder%index3%!"=="drive" echo.^| - Drives                                 ^|                      ^| DR ^| 
if "!folder%index3%!"=="drive" echo.^| - User folder                            ^|                      ^|  V ^| 
if "!folder%index3%!"=="drive" echo.^| - Recycle Bin                            ^|                      ^|____^| 
if "!folder%index3%!"=="drive" echo.^|__________________________________________^|                     !name%index3%:~0,8!
if "!folder%index3%!"=="drive" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index3%!"=="drive" echo.^|                                          ^|                                                                                                         
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index2%!
if "!folder%index2%!"=="true" echo.^|                                          ^|             ____  
if "!folder%index2%!"=="true" echo.^| - Drives                                 ^|            ^| DI ^| 
if "!folder%index2%!"=="true" echo.^| - User folder                            ^|            ^|  R ^| 
if "!folder%index2%!"=="true" echo.^| - Recycle Bin                            ^|            ^|____^| 
if "!folder%index2%!"=="true" echo.^|__________________________________________^|           !name%index2%:~0,8!
if "!folder%index2%!"=="true" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index2%!"=="true" echo.^|                                          ^|                                                                                                         
if "!folder%index2%!"=="false" echo.^|                                          ^|             ____  
if "!folder%index2%!"=="false" echo.^| - Drives                                 ^|            ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index2%!"=="false" echo.^| - User folder                            ^|            ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index2%!"=="false" echo.^| - Recycle Bin                            ^|            ^|____^| 
if "!folder%index2%!"=="false" echo.^|__________________________________________^|           !name%index2%:~0,8!
if "!folder%index2%!"=="false" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index2%!"=="false" echo.^|                                          ^|                                                                                                         
if "!folder%index2%!"=="drive" echo.^|                                          ^|             ____  
if "!folder%index2%!"=="drive" echo.^| - Drives                                 ^|            ^| DR ^| 
if "!folder%index2%!"=="drive" echo.^| - User folder                            ^|            ^|  V ^| 
if "!folder%index2%!"=="drive" echo.^| - Recycle Bin                            ^|            ^|____^| 
if "!folder%index2%!"=="drive" echo.^|__________________________________________^|           !name%index2%:~0,8!
if "!folder%index2%!"=="drive" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index2%!"=="drive" echo.^|                                          ^|                                                                                                         
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index1%!
if "!folder%index1%!"=="true" echo.^| _                                       ^|   ____  
if "!folder%index1%!"=="true" echo.^| - Drives                                 ^|  ^| DI ^| 
if "!folder%index1%!"=="true" echo.^| - User folder                            ^|  ^|  R ^| 
if "!folder%index1%!"=="true" echo.^| - Recycle Bin                            ^|  ^|____^| 
if "!folder%index1%!"=="true" echo.^|__________________________________________^| !name%index1%:~0,8!
if "!folder%index1%!"=="true" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index1%!"=="true" echo.^|                                          ^|                                                                                                         
if "!folder%index1%!"=="false" echo.^|                                          ^|   ____  
if "!folder%index1%!"=="false" echo.^| - Drives                                 ^|  ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index1%!"=="false" echo.^| - User folder                            ^|  ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index1%!"=="false" echo.^| - Recycle Bin                            ^|  ^|____^| 
if "!folder%index1%!"=="false" echo.^|__________________________________________^| !name%index1%:~0,8!
if "!folder%index1%!"=="false" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index1%!"=="false" echo.^|                                          ^|                                                                                                         
if "!folder%index1%!"=="drive" echo.^| _                                       ^|   ____  
if "!folder%index1%!"=="drive" echo.^| - Drives                                 ^|  ^| DR ^| 
if "!folder%index1%!"=="drive" echo.^| - User folder                            ^|  ^|  V ^| 
if "!folder%index1%!"=="drive" echo.^| - Recycle Bin                            ^|  ^|____^| 
if "!folder%index1%!"=="drive" echo.^|__________________________________________^| !name%index1%:~0,8!
if "!folder%index1%!"=="drive" echo.^| Folder info                              ^|                                                                                                         
if "!folder%index1%!"=="drive" echo.^|                                          ^|                                                                                                         
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index20%!
if "!folder%index20%!"=="true" echo.^| Location:                                ^|                                                                                             ____  
if "!folder%index20%!"=="true" echo.^| Size:                                    ^|                                                                                            ^| DI ^| 
if "!folder%index20%!"=="true" echo.^| Attributes:                              ^|                                                                                            ^|  R ^| 
if "!folder%index20%!"=="true" echo.^|__________________________________________^|                                                                                            ^|____^| 
if "!folder%index20%!"=="true" echo.^| File info                                ^|                                                                                           !name%index20%:~0,8!
if "!folder%index20%!"=="true" echo.^|                                          ^|
if "!folder%index20%!"=="true" echo.^|                                          ^|
if "!folder%index20%!"=="false" echo.^| Location:                                ^|                                                                                             ____  
if "!folder%index20%!"=="false" echo.^| Size:                                    ^|                                                                                            ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index20%!"=="false" echo.^| Attributes:                              ^|                                                                                            ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index20%!"=="false" echo.^|__________________________________________^|                                                                                            ^|____^| 
if "!folder%index20%!"=="false" echo.^| File info                                ^|                                                                                           !name%index20%:~0,8!
if "!folder%index20%!"=="false" echo.^|                                          ^|
if "!folder%index20%!"=="false" echo.^|                                          ^|
if "!folder%index20%!"=="drive" echo.^| Location:                                ^|                                                                                             ____  
if "!folder%index20%!"=="drive" echo.^| Size:                                    ^|                                                                                            ^| DR ^| 
if "!folder%index20%!"=="drive" echo.^| Attributes:                              ^|                                                                                            ^|  V ^| 
if "!folder%index20%!"=="drive" echo.^|__________________________________________^|                                                                                            ^|____^| 
if "!folder%index20%!"=="drive" echo.^| File info                                ^|                                                                                           !name%index20%:~0,8!
if "!folder%index20%!"=="drive" echo.^|                                          ^|
if "!folder%index20%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index19%!
if "!folder%index19%!"=="true" echo.^|                                          ^|                                                                                   ____  
if "!folder%index19%!"=="true" echo.^| Location:                                ^|                                                                                  ^| DI ^| 
if "!folder%index19%!"=="true" echo.^| Size:                                    ^|                                                                                  ^|  R ^| 
if "!folder%index19%!"=="true" echo.^| Attributes:                              ^|                                                                                  ^|____^| 
if "!folder%index19%!"=="true" echo.^|__________________________________________^|                                                                                 !name%index19%:~0,8!
if "!folder%index19%!"=="true" echo.^| File info                                ^| 
if "!folder%index19%!"=="true" echo.^|                                          ^| 
if "!folder%index19%!"=="false" echo.^| Location:                                ^|                                                                                   ____  
if "!folder%index19%!"=="false" echo.^| Size:                                    ^|                                                                                  ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index19%!"=="false" echo.^| Attributes:                              ^|                                                                                  ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index19%!"=="false" echo.^|__________________________________________^|                                                                                  ^|____^| 
if "!folder%index19%!"=="false" echo.^| File info                                ^|                                                                                 !name%index19%:~0,8!
if "!folder%index19%!"=="false" echo.^|                                          ^| 
if "!folder%index19%!"=="false" echo.^|                                          ^| 
if "!folder%index19%!"=="drive" echo.^| Location:                                ^|                                                                                   ____  
if "!folder%index19%!"=="drive" echo.^| Size:                                    ^|                                                                                  ^| DR ^| 
if "!folder%index19%!"=="drive" echo.^| Attributes:                              ^|                                                                                  ^|  V ^| 
if "!folder%index19%!"=="drive" echo.^|__________________________________________^|                                                                                  ^|____^| 
if "!folder%index19%!"=="drive" echo.^| File info                                ^|                                                                                 !name%index19%:~0,8!
if "!folder%index19%!"=="drive" echo.^|                                          ^| 
if "!folder%index19%!"=="drive" echo.^|                                          ^| 
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index18%!
if "!folder%index18%!"=="true" echo.^|                                          ^|                                                                         ____  
if "!folder%index18%!"=="true" echo.^| Location:                                ^|                                                                        ^| DI ^| 
if "!folder%index18%!"=="true" echo.^| Size:                                    ^|                                                                        ^|  R ^| 
if "!folder%index18%!"=="true" echo.^| Attributes:                              ^|                                                                        ^|____^| 
if "!folder%index18%!"=="true" echo.^|__________________________________________^|                                                                       !name%index18%:~0,8!
if "!folder%index18%!"=="true" echo.^| File info                                ^|
if "!folder%index18%!"=="true" echo.^|                                          ^|
if "!folder%index18%!"=="false" echo.^|                                          ^|                                                                         ____  
if "!folder%index18%!"=="false" echo.^| Location:                                ^|                                                                        ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index18%!"=="false" echo.^| Size:                                    ^|                                                                        ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index18%!"=="false" echo.^| Attributes:                              ^|                                                                        ^|____^| 
if "!folder%index18%!"=="false" echo.^|__________________________________________^|                                                                       !name%index18%:~0,8!
if "!folder%index18%!"=="false" echo.^| File info                                ^|
if "!folder%index18%!"=="false" echo.^|                                          ^|
if "!folder%index18%!"=="drive" echo.^|                                          ^|                                                                         ____  
if "!folder%index18%!"=="drive" echo.^| Location:                                ^|                                                                        ^| DR ^| 
if "!folder%index18%!"=="drive" echo.^| Size:                                    ^|                                                                        ^|  V ^| 
if "!folder%index18%!"=="drive" echo.^| Attributes:                              ^|                                                                        ^|____^| 
if "!folder%index18%!"=="drive" echo.^|__________________________________________^|                                                                       !name%index18%:~0,8!
if "!folder%index18%!"=="drive" echo.^| File info                                ^|
if "!folder%index18%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index17%!
if "!folder%index17%!"=="true" echo.^|                                          ^|                                                               ____  
if "!folder%index17%!"=="true" echo.^| Location:                                ^|                                                              ^| DI ^| 
if "!folder%index17%!"=="true" echo.^| Size:                                    ^|                                                              ^|  R ^| 
if "!folder%index17%!"=="true" echo.^| Attributes:                              ^|                                                              ^|____^| 
if "!folder%index17%!"=="true" echo.^|__________________________________________^|                                                             !name%index17%:~0,8!
if "!folder%index17%!"=="true" echo.^| File info                                ^|
if "!folder%index17%!"=="true" echo.^|                                          ^|
if "!folder%index17%!"=="false" echo.^|                                          ^|                                                               ____  
if "!folder%index17%!"=="false" echo.^| Location:                                ^|                                                              ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index17%!"=="false" echo.^| Size:                                    ^|                                                              ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index17%!"=="false" echo.^| Attributes:                              ^|                                                              ^|____^| 
if "!folder%index17%!"=="false" echo.^|__________________________________________^|                                                             !name%index17%:~0,8!
if "!folder%index17%!"=="false" echo.^| File info                                ^|
if "!folder%index17%!"=="false" echo.^|                                          ^|
if "!folder%index17%!"=="drive" echo.^|                                          ^|                                                               ____  
if "!folder%index17%!"=="drive" echo.^| Location:                                ^|                                                              ^| DR ^| 
if "!folder%index17%!"=="drive" echo.^| Size:                                    ^|                                                              ^|  V ^| 
if "!folder%index17%!"=="drive" echo.^| Attributes:                              ^|                                                              ^|____^| 
if "!folder%index17%!"=="drive" echo.^|__________________________________________^|                                                             !name%index17%:~0,8!
if "!folder%index17%!"=="drive" echo.^| File info                                ^|
if "!folder%index17%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index16%!
if "!folder%index16%!"=="true" echo.^|                                          ^|                                                     ____  
if "!folder%index16%!"=="true" echo.^| Location:                                ^|                                                    ^| DI ^| 
if "!folder%index16%!"=="true" echo.^| Size:                                    ^|                                                    ^|  R ^| 
if "!folder%index16%!"=="true" echo.^| Attributes:                              ^|                                                    ^|____^| 
if "!folder%index16%!"=="true" echo.^|__________________________________________^|                                                   !name%index16%:~0,8!  
if "!folder%index16%!"=="true" echo.^| File info                                ^|
if "!folder%index16%!"=="true" echo.^|                                          ^|
if "!folder%index16%!"=="false" echo.^|                                          ^|                                                     ____  
if "!folder%index16%!"=="false" echo.^| Location:                                ^|                                                    ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index16%!"=="false" echo.^| Size:                                    ^|                                                    ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index16%!"=="false" echo.^| Attributes:                              ^|                                                    ^|____^| 
if "!folder%index16%!"=="false" echo.^|__________________________________________^|                                                   !name%index16%:~0,8!  
if "!folder%index16%!"=="false" echo.^| File info                                ^|
if "!folder%index16%!"=="false" echo.^|                                          ^|
if "!folder%index16%!"=="drive" echo.^|                                          ^|                                                     ____  
if "!folder%index16%!"=="drive" echo.^| Location:                                ^|                                                    ^| DR ^| 
if "!folder%index16%!"=="drive" echo.^| Size:                                    ^|                                                    ^|  V ^| 
if "!folder%index16%!"=="drive" echo.^| Attributes:                              ^|                                                    ^|____^| 
if "!folder%index16%!"=="drive" echo.^|__________________________________________^|                                                   !name%index16%:~0,8!  
if "!folder%index16%!"=="drive" echo.^| File info                                ^|
if "!folder%index16%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index15%!
if "!folder%index15%!"=="true" echo.^|                                          ^|                                           ____  
if "!folder%index15%!"=="true" echo.^| Location:                                ^|                                          ^| DI ^| 
if "!folder%index15%!"=="true" echo.^| Size:                                    ^|                                          ^|  R ^| 
if "!folder%index15%!"=="true" echo.^| Attributes:                              ^|                                          ^|____^| 
if "!folder%index15%!"=="true" echo.^|__________________________________________^|                                         !name%index15%:~0,8!  
if "!folder%index15%!"=="true" echo.^| File info                                ^|
if "!folder%index15%!"=="true" echo.^|                                          ^|
if "!folder%index15%!"=="false" echo.^|                                          ^|                                           ____  
if "!folder%index15%!"=="false" echo.^| Location:                                ^|                                          ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index15%!"=="false" echo.^| Size:                                    ^|                                          ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index15%!"=="false" echo.^| Attributes:                              ^|                                          ^|____^| 
if "!folder%index15%!"=="false" echo.^|__________________________________________^|                                         !name%index15%:~0,8!  
if "!folder%index15%!"=="false" echo.^| File info                                ^|
if "!folder%index15%!"=="false" echo.^|                                          ^|
if "!folder%index15%!"=="drive" echo.^|                                          ^|                                           ____  
if "!folder%index15%!"=="drive" echo.^| Location:                                ^|                                          ^| DR ^| 
if "!folder%index15%!"=="drive" echo.^| Size:                                    ^|                                          ^|  V ^| 
if "!folder%index15%!"=="drive" echo.^| Attributes:                              ^|                                          ^|____^| 
if "!folder%index15%!"=="drive" echo.^|__________________________________________^|                                         !name%index15%:~0,8!  
if "!folder%index15%!"=="drive" echo.^| File info                                ^|
if "!folder%index15%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index14%!
if "!folder%index14%!"=="true" echo.^|                                          ^|                                 ____  
if "!folder%index14%!"=="true" echo.^| Location:                                ^|                                ^| DI ^| 
if "!folder%index14%!"=="true" echo.^| Size:                                    ^|                                ^|  R ^| 
if "!folder%index14%!"=="true" echo.^| Attributes:                              ^|                                ^|____^| 
if "!folder%index14%!"=="true" echo.^|__________________________________________^|                               !name%index14%:~0,8!  
if "!folder%index14%!"=="true" echo.^| File info                                ^|
if "!folder%index14%!"=="true" echo.^|                                          ^|
if "!folder%index14%!"=="false" echo.^|                                          ^|                                 ____  
if "!folder%index14%!"=="false" echo.^| Location:                                ^|                                ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index14%!"=="false" echo.^| Size:                                    ^|                                ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index14%!"=="false" echo.^| Attributes:                              ^|                                ^|____^| 
if "!folder%index14%!"=="false" echo.^|__________________________________________^|                               !name%index14%:~0,8!  
if "!folder%index14%!"=="false" echo.^| File info                                ^|
if "!folder%index14%!"=="false" echo.^|                                          ^|
if "!folder%index14%!"=="drive" echo.^|                                          ^|                                 ____  
if "!folder%index14%!"=="drive" echo.^| Location:                                ^|                                ^| DR ^| 
if "!folder%index14%!"=="drive" echo.^| Size:                                    ^|                                ^|  V ^| 
if "!folder%index14%!"=="drive" echo.^| Attributes:                              ^|                                ^|____^| 
if "!folder%index14%!"=="drive" echo.^|__________________________________________^|                               !name%index14%:~0,8!  
if "!folder%index14%!"=="drive" echo.^| File info                                ^|
if "!folder%index14%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index13%!
if "!folder%index13%!"=="true" echo.^|                                          ^|                       ____  
if "!folder%index13%!"=="true" echo.^| Location:                                ^|                      ^| DI ^| 
if "!folder%index13%!"=="true" echo.^| Size:                                    ^|                      ^|  R ^| 
if "!folder%index13%!"=="true" echo.^| Attributes:                              ^|                      ^|____^| 
if "!folder%index13%!"=="true" echo.^|__________________________________________^|                     !name%index13%:~0,8!
if "!folder%index13%!"=="true" echo.^| File info                                ^|
if "!folder%index13%!"=="true" echo.^|                                          ^|
if "!folder%index13%!"=="false" echo.^|                                          ^|                       ____  
if "!folder%index13%!"=="false" echo.^| Location:                                ^|                      ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index13%!"=="false" echo.^| Size:                                    ^|                      ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index13%!"=="false" echo.^| Attributes:                              ^|                      ^|____^| 
if "!folder%index13%!"=="false" echo.^|__________________________________________^|                     !name%index13%:~0,8!
if "!folder%index13%!"=="false" echo.^| File info                                ^|
if "!folder%index13%!"=="false" echo.^|                                          ^|
if "!folder%index13%!"=="drive" echo.^|                                          ^|                       ____  
if "!folder%index13%!"=="drive" echo.^| Location:                                ^|                      ^| DR ^| 
if "!folder%index13%!"=="drive" echo.^| Size:                                    ^|                      ^|  V ^| 
if "!folder%index13%!"=="drive" echo.^| Attributes:                              ^|                      ^|____^| 
if "!folder%index13%!"=="drive" echo.^|__________________________________________^|                     !name%index13%:~0,8!
if "!folder%index13%!"=="drive" echo.^| File info                                ^|
if "!folder%index13%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index12%!
if "!folder%index12%!"=="true" echo.^|                                          ^|             ____  
if "!folder%index12%!"=="true" echo.^| Location:                                ^|            ^| DI ^| 
if "!folder%index12%!"=="true" echo.^| Size:                                    ^|            ^|  R ^| 
if "!folder%index12%!"=="true" echo.^| Attributes:                              ^|            ^|____^| 
if "!folder%index12%!"=="true" echo.^|__________________________________________^|           !name%index12%:~0,8!
if "!folder%index12%!"=="true" echo.^| File info                                ^|
if "!folder%index12%!"=="true" echo.^|                                          ^|
if "!folder%index12%!"=="false" echo.^|                                          ^|             ____  
if "!folder%index12%!"=="false" echo.^| Location:                                ^|            ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index12%!"=="false" echo.^| Size:                                    ^|            ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index12%!"=="false" echo.^| Attributes:                              ^|            ^|____^| 
if "!folder%index12%!"=="false" echo.^|__________________________________________^|           !name%index12%:~0,8!
if "!folder%index12%!"=="false" echo.^| File info                                ^|
if "!folder%index12%!"=="false" echo.^|                                          ^|
if "!folder%index12%!"=="drive" echo.^|                                          ^|             ____  
if "!folder%index12%!"=="drive" echo.^| Location:                                ^|            ^| DR ^| 
if "!folder%index12%!"=="drive" echo.^| Size:                                    ^|            ^|  V ^| 
if "!folder%index12%!"=="drive" echo.^| Attributes:                              ^|            ^|____^| 
if "!folder%index12%!"=="drive" echo.^|__________________________________________^|           !name%index12%:~0,8!
if "!folder%index12%!"=="drive" echo.^| File info                                ^|
if "!folder%index12%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index11%!
if "!folder%index11%!"=="true" echo.^|                                          ^|   ____  
if "!folder%index11%!"=="true" echo.^| Location:                                ^|  ^| DI ^| 
if "!folder%index11%!"=="true" echo.^| Size:                                    ^|  ^|  R ^| 
if "!folder%index11%!"=="true" echo.^| Attributes:                              ^|  ^|____^| 
if "!folder%index11%!"=="true" echo.^|__________________________________________^| !name%index11%:~0,8!
if "!folder%index11%!"=="true" echo.^| File info                                ^|
if "!folder%index11%!"=="true" echo.^|                                          ^|
if "!folder%index11%!"=="false" echo.^|                                          ^|   ____  
if "!folder%index11%!"=="false" echo.^| Location:                                ^|  ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index11%!"=="false" echo.^| Size:                                    ^|  ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index11%!"=="false" echo.^| Attributes:                              ^|  ^|____^| 
if "!folder%index11%!"=="false" echo.^|__________________________________________^| !name%index11%:~0,8!
if "!folder%index11%!"=="false" echo.^| File info                                ^|
if "!folder%index11%!"=="false" echo.^|                                          ^|
if "!folder%index11%!"=="drive" echo.^|                                          ^|   ____  
if "!folder%index11%!"=="drive" echo.^| Location:                                ^|  ^| DR ^| 
if "!folder%index11%!"=="drive" echo.^| Size:                                    ^|  ^|  V ^| 
if "!folder%index11%!"=="drive" echo.^| Attributes:                              ^|  ^|____^| 
if "!folder%index11%!"=="drive" echo.^|__________________________________________^| !name%index11%:~0,8!
if "!folder%index11%!"=="drive" echo.^| File info                                ^|
if "!folder%index11%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index30%!
if "!folder%index30%!"=="true" echo.^|                                          ^|                                                                                             ____  
if "!folder%index30%!"=="true" echo.^| Please select a file                     ^|                                                                                            ^| DI ^| 
if "!folder%index30%!"=="true" echo.^|                                          ^|                                                                                            ^|  R ^| 
if "!folder%index30%!"=="true" echo.^|                                          ^|                                                                                            ^|____^| 
if "!folder%index30%!"=="true" echo.^|__________________________________________^|                                                                                           !name%index30%:~0,8!
if "!folder%index30%!"=="true" echo.^| File/Directory options                   ^|
if "!folder%index30%!"=="true" echo.^|                                          ^|
if "!folder%index30%!"=="false" echo.^|                                          ^|                                                                                             ____  
if "!folder%index30%!"=="false" echo.^| Please select a file                     ^|                                                                                            ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index30%!"=="false" echo.^|                                          ^|                                                                                            ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index30%!"=="false" echo.^|                                          ^|                                                                                            ^|____^| 
if "!folder%index30%!"=="false" echo.^|__________________________________________^|                                                                                           !name%index30%:~0,8!
if "!folder%index30%!"=="false" echo.^| File/Directory options                   ^|
if "!folder%index30%!"=="false" echo.^|                                          ^|
if "!folder%index30%!"=="drive" echo.^|                                          ^|                                                                                             ____  
if "!folder%index30%!"=="drive" echo.^| Please select a file                     ^|                                                                                            ^| DR ^| 
if "!folder%index30%!"=="drive" echo.^|                                          ^|                                                                                            ^|  V ^| 
if "!folder%index30%!"=="drive" echo.^|                                          ^|                                                                                            ^|____^| 
if "!folder%index30%!"=="drive" echo.^|__________________________________________^|                                                                                           !name%index30%:~0,8!
if "!folder%index30%!"=="drive" echo.^| File/Directory options                   ^|
if "!folder%index30%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index29%!
if "!folder%index29%!"=="true" echo.^|                                          ^|                                                                                   ____  
if "!folder%index29%!"=="true" echo.^| Please select a file                     ^|                                                                                  ^| DI ^| 
if "!folder%index29%!"=="true" echo.^|                                          ^|                                                                                  ^|  R ^| 
if "!folder%index29%!"=="true" echo.^|                                          ^|                                                                                  ^|____^| 
if "!folder%index29%!"=="true" echo.^|__________________________________________^|                                                                                 !name%index29%:~0,8!
if "!folder%index29%!"=="true" echo.^| File/Directory options                   ^|  
if "!folder%index29%!"=="true" echo.^|                                          ^| 
if "!folder%index29%!"=="false" echo.^|                                          ^|                                                                                   ____  
if "!folder%index29%!"=="false" echo.^| Please select a file                     ^|                                                                                  ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index29%!"=="false" echo.^|                                          ^|                                                                                  ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index29%!"=="false" echo.^|                                          ^|                                                                                  ^|____^| 
if "!folder%index29%!"=="false" echo.^|__________________________________________^|                                                                                 !name%index29%:~0,8!
if "!folder%index29%!"=="false" echo.^| File/Directory options                   ^| 
if "!folder%index29%!"=="false" echo.^|                                          ^| 
if "!folder%index29%!"=="drive" echo.^|                                          ^|                                                                                   ____  
if "!folder%index29%!"=="drive" echo.^| Please select a file                     ^|                                                                                  ^| DR ^| 
if "!folder%index29%!"=="drive" echo.^|                                          ^|                                                                                  ^|  V ^| 
if "!folder%index29%!"=="drive" echo.^|                                          ^|                                                                                  ^|____^| 
if "!folder%index29%!"=="drive" echo.^|__________________________________________^|                                                                                 !name%index29%:~0,8!
if "!folder%index29%!"=="drive" echo.^| File/Directory options                   ^|  
if "!folder%index29%!"=="drive" echo.^|                                          ^| 
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index28%!
if "!folder%index28%!"=="true" echo.^|                                          ^|                                                                         ____  
if "!folder%index28%!"=="true" echo.^| Please select a file                     ^|                                                                        ^| DI ^| 
if "!folder%index28%!"=="true" echo.^|                                          ^|                                                                        ^|  R ^| 
if "!folder%index28%!"=="true" echo.^|                                          ^|                                                                        ^|____^| 
if "!folder%index28%!"=="true" echo.^|__________________________________________^|                                                                       !name%index28%:~0,8!
if "!folder%index28%!"=="true" echo.^| File/Directory options                   ^|
if "!folder%index28%!"=="true" echo.^|                                          ^|
if "!folder%index28%!"=="false" echo.^|                                          ^|                                                                         ____  
if "!folder%index28%!"=="false" echo.^| Please select a file                     ^|                                                                        ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index28%!"=="false" echo.^|                                          ^|                                                                        ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index28%!"=="false" echo.^|                                          ^|                                                                        ^|____^| 
if "!folder%index28%!"=="false" echo.^|__________________________________________^|                                                                       !name%index28%:~0,8!
if "!folder%index28%!"=="false" echo.^| File/Directory options                   ^|
if "!folder%index28%!"=="false" echo.^|                                          ^|
if "!folder%index28%!"=="drive" echo.^|                                          ^|                                                                         ____  
if "!folder%index28%!"=="drive" echo.^| Please select a file                     ^|                                                                        ^| DR ^| 
if "!folder%index28%!"=="drive" echo.^|                                          ^|                                                                        ^|  V ^| 
if "!folder%index28%!"=="drive" echo.^|                                          ^|                                                                        ^|____^| 
if "!folder%index28%!"=="drive" echo.^|__________________________________________^|                                                                       !name%index28%:~0,8!
if "!folder%index28%!"=="drive" echo.^| File/Directory options                   ^|
if "!folder%index28%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index27%!
if "!folder%index27%!"=="true" echo.^|                                          ^|                                                               ____  
if "!folder%index27%!"=="true" echo.^| Please select a file                     ^|                                                              ^| DI ^| 
if "!folder%index27%!"=="true" echo.^|                                          ^|                                                              ^|  R ^| 
if "!folder%index27%!"=="true" echo.^|                                          ^|                                                              ^|____^| 
if "!folder%index27%!"=="true" echo.^|__________________________________________^|                                                             !name%index27%:~0,8!
if "!folder%index27%!"=="true" echo.^| File/Directory options                   ^|
if "!folder%index27%!"=="true" echo.^|                                          ^|
if "!folder%index27%!"=="false" echo.^|                                          ^|                                                               ____  
if "!folder%index27%!"=="false" echo.^| Please select a file                     ^|                                                              ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index27%!"=="false" echo.^|                                          ^|                                                              ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index27%!"=="false" echo.^|                                          ^|                                                              ^|____^| 
if "!folder%index27%!"=="false" echo.^|__________________________________________^|                                                             !name%index27%:~0,8!
if "!folder%index27%!"=="false" echo.^| File/Directory options                   ^|
if "!folder%index27%!"=="false" echo.^|                                          ^|
if "!folder%index27%!"=="drive" echo.^|                                          ^|                                                               ____  
if "!folder%index27%!"=="drive" echo.^| Please select a file                     ^|                                                              ^| DR ^| 
if "!folder%index27%!"=="drive" echo.^|                                          ^|                                                              ^|  V ^| 
if "!folder%index27%!"=="drive" echo.^|                                          ^|                                                              ^|____^| 
if "!folder%index27%!"=="drive" echo.^|__________________________________________^|                                                             !name%index27%:~0,8!
if "!folder%index27%!"=="drive" echo.^| File/Directory options                   ^|
if "!folder%index27%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index26%!
if "!folder%index26%!"=="true" echo.^|                                          ^|                                                     ____  
if "!folder%index26%!"=="true" echo.^| Please select a file                     ^|                                                    ^| DI ^| 
if "!folder%index26%!"=="true" echo.^|                                          ^|                                                    ^|  R ^| 
if "!folder%index26%!"=="true" echo.^|                                          ^|                                                    ^|____^| 
if "!folder%index26%!"=="true" echo.^|__________________________________________^|                                                   !name%index26%:~0,8!
if "!folder%index26%!"=="true" echo.^| File/Directory options                   ^|
if "!folder%index26%!"=="true" echo.^|                                          ^|
if "!folder%index26%!"=="false" echo.^|                                          ^|                                                     ____  
if "!folder%index26%!"=="false" echo.^| Please select a file                     ^|                                                    ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index26%!"=="false" echo.^|                                          ^|                                                    ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index26%!"=="false" echo.^|                                          ^|                                                    ^|____^| 
if "!folder%index26%!"=="false" echo.^|__________________________________________^|                                                   !name%index26%:~0,8!
if "!folder%index26%!"=="false" echo.^| File/Directory options                   ^|
if "!folder%index26%!"=="false" echo.^|                                          ^|
if "!folder%index26%!"=="drive" echo.^|                                          ^|                                                     ____  
if "!folder%index26%!"=="drive" echo.^| Please select a file                     ^|                                                    ^| DR ^| 
if "!folder%index26%!"=="drive" echo.^|                                          ^|                                                    ^|  V ^| 
if "!folder%index26%!"=="drive" echo.^|                                          ^|                                                    ^|____^| 
if "!folder%index26%!"=="drive" echo.^|__________________________________________^|                                                   !name%index26%:~0,8!
if "!folder%index26%!"=="drive" echo.^| File/Directory options                   ^|
if "!folder%index26%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index25%!
if "!folder%index25%!"=="true" echo.^|                                          ^|                                           ____  
if "!folder%index25%!"=="true" echo.^| Please select a file                     ^|                                          ^| DI ^| 
if "!folder%index25%!"=="true" echo.^|                                          ^|                                          ^|  R ^| 
if "!folder%index25%!"=="true" echo.^|                                          ^|                                          ^|____^| 
if "!folder%index25%!"=="true" echo.^|__________________________________________^|                                         !name%index25%:~0,8!
if "!folder%index25%!"=="true" echo.^| File/Directory options                   ^|
if "!folder%index25%!"=="true" echo.^|                                          ^|
if "!folder%index25%!"=="false" echo.^|                                          ^|                                           ____  
if "!folder%index25%!"=="false" echo.^| Please select a file                     ^|                                          ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index25%!"=="false" echo.^|                                          ^|                                          ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index25%!"=="false" echo.^|                                          ^|                                          ^|____^| 
if "!folder%index25%!"=="false" echo.^|__________________________________________^|                                         !name%index25%:~0,8!
if "!folder%index25%!"=="false" echo.^| File/Directory options                   ^|
if "!folder%index25%!"=="false" echo.^|                                          ^|
if "!folder%index25%!"=="drive" echo.^|                                          ^|                                           ____  
if "!folder%index25%!"=="drive" echo.^| Please select a file                     ^|                                          ^| DR ^| 
if "!folder%index25%!"=="drive" echo.^|                                          ^|                                          ^|  V ^| 
if "!folder%index25%!"=="drive" echo.^|                                          ^|                                          ^|____^| 
if "!folder%index25%!"=="drive" echo.^|__________________________________________^|                                         !name%index25%:~0,8!
if "!folder%index25%!"=="drive" echo.^| File/Directory options                   ^|
if "!folder%index25%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index24%!
if "!folder%index24%!"=="true" echo.^|                                          ^|                                 ____  
if "!folder%index24%!"=="true" echo.^| Please select a file                     ^|                                ^| DI ^| 
if "!folder%index24%!"=="true" echo.^|                                          ^|                                ^|  R ^| 
if "!folder%index24%!"=="true" echo.^|                                          ^|                                ^|____^| 
if "!folder%index24%!"=="true" echo.^|__________________________________________^|                               !name%index24%:~0,8!
if "!folder%index24%!"=="true" echo.^| File/Directory options                   ^|
if "!folder%index24%!"=="true" echo.^|                                          ^|
if "!folder%index24%!"=="false" echo.^|                                          ^|                                 ____  
if "!folder%index24%!"=="false" echo.^| Please select a file                     ^|                                ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index24%!"=="false" echo.^|                                          ^|                                ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index24%!"=="false" echo.^|                                          ^|                                ^|____^| 
if "!folder%index24%!"=="false" echo.^|__________________________________________^|                               !name%index24%:~0,8!
if "!folder%index24%!"=="false" echo.^| File/Directory options                   ^|
if "!folder%index24%!"=="false" echo.^|                                          ^|
if "!folder%index24%!"=="drive" echo.^|                                          ^|                                 ____  
if "!folder%index24%!"=="drive" echo.^| Please select a file                     ^|                                ^| DR ^| 
if "!folder%index24%!"=="drive" echo.^|                                          ^|                                ^|  V ^| 
if "!folder%index24%!"=="drive" echo.^|                                          ^|                                ^|____^| 
if "!folder%index24%!"=="drive" echo.^|__________________________________________^|                               !name%index24%:~0,8!
if "!folder%index24%!"=="drive" echo.^| File/Directory options                   ^|
if "!folder%index24%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index23%!
if "!folder%index23%!"=="true" echo.^|                                          ^|                       ____  
if "!folder%index23%!"=="true" echo.^| Please select a file                     ^|                      ^| DI ^| 
if "!folder%index23%!"=="true" echo.^|                                          ^|                      ^|  R ^| 
if "!folder%index23%!"=="true" echo.^|                                          ^|                      ^|____^| 
if "!folder%index23%!"=="true" echo.^|__________________________________________^|                     !name%index23%:~0,8!
if "!folder%index23%!"=="true" echo.^| File/Directory options                   ^|
if "!folder%index23%!"=="true" echo.^|                                          ^|
if "!folder%index23%!"=="false" echo.^|                                          ^|                       ____  
if "!folder%index23%!"=="false" echo.^| Please select a file                     ^|                      ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index23%!"=="false" echo.^|                                          ^|                      ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index23%!"=="false" echo.^|                                          ^|                      ^|____^| 
if "!folder%index23%!"=="false" echo.^|__________________________________________^|                     !name%index23%:~0,8!
if "!folder%index23%!"=="false" echo.^| File/Directory options                   ^|
if "!folder%index23%!"=="false" echo.^|                                          ^|
if "!folder%index23%!"=="drive" echo.^|                                          ^|                       ____  
if "!folder%index23%!"=="drive" echo.^| Please select a file                     ^|                      ^| DR ^| 
if "!folder%index23%!"=="drive" echo.^|                                          ^|                      ^|  V ^| 
if "!folder%index23%!"=="drive" echo.^|                                          ^|                      ^|____^| 
if "!folder%index23%!"=="drive" echo.^|__________________________________________^|                     !name%index23%:~0,8!
if "!folder%index23%!"=="drive" echo.^| File/Directory options                   ^|
if "!folder%index23%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index22%!
if "!folder%index22%!"=="true" echo.^|                                          ^|             ____ 
if "!folder%index22%!"=="true" echo.^| Please select a file                     ^|            ^| DI ^| 
if "!folder%index22%!"=="true" echo.^|                                          ^|            ^|  R ^| 
if "!folder%index22%!"=="true" echo.^|                                          ^|            ^|____^| 
if "!folder%index22%!"=="true" echo.^|__________________________________________^|           !name%index22%:~0,8!
if "!folder%index22%!"=="true" echo.^| File/Directory options                   ^|
if "!folder%index22%!"=="true" echo.^|                                          ^|
if "!folder%index22%!"=="false" echo.^|                                          ^|             ____  
if "!folder%index22%!"=="false" echo.^| Please select a file                     ^|            ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index22%!"=="false" echo.^|                                          ^|            ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index22%!"=="false" echo.^|                                          ^|            ^|____^| 
if "!folder%index22%!"=="false" echo.^|__________________________________________^|           !name%index22%:~0,8!
if "!folder%index22%!"=="false" echo.^| File/Directory options                   ^|
if "!folder%index22%!"=="false" echo.^|                                          ^|
if "!folder%index22%!"=="drive" echo.^|                                          ^|             ____  
if "!folder%index22%!"=="drive" echo.^| Please select a file                     ^|            ^| DR ^| 
if "!folder%index22%!"=="drive" echo.^|                                          ^|            ^|  V ^| 
if "!folder%index22%!"=="drive" echo.^|                                          ^|            ^|____^| 
if "!folder%index22%!"=="drive" echo.^|__________________________________________^|           !name%index22%:~0,8!
if "!folder%index22%!"=="drive" echo.^| File/Directory options                   ^|
if "!folder%index22%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set ddx=!type%index21%!
if "!folder%index21%!"=="true" echo.^|                                          ^|   ____  
if "!folder%index21%!"=="true" echo.^| Please select a file                     ^|  ^| DI ^| 
if "!folder%index21%!"=="true" echo.^|                                          ^|  ^|  R ^| 
if "!folder%index21%!"=="true" echo.^|                                          ^|  ^|____^| 
if "!folder%index21%!"=="true" echo.^|__________________________________________^| !name%index21%:~0,8!
if "!folder%index21%!"=="true" echo.^| File/Directory options                   ^|
if "!folder%index21%!"=="true" echo.^|                                          ^|
if "!folder%index21%!"=="false" echo.^| Delete       Rename                      ^|   ____  
if "!folder%index21%!"=="false" echo.^| Copy         New folder                  ^|  ^| %ddx:~0,1%%ddx:~1,1% ^| 
if "!folder%index21%!"=="false" echo.^| Cut          Change attributes           ^|  ^| %ddx:~2,1%%ddx:~3,1% ^| 
if "!folder%index21%!"=="false" echo.^| Paste                                    ^|  ^|____^| 
if "!folder%index21%!"=="false" echo.^|__________________________________________^| !name%index21%:~0,8!
if "!folder%index21%!"=="false" echo.^|  Click on a file/directory, to view its in
if "!folder%index21%!"=="false" echo.^|___________________________________________
if "!folder%index21%!"=="drive" echo.^|                                          ^|   ____  
if "!folder%index21%!"=="drive" echo.^| Please select a file                     ^|  ^| DR ^| 
if "!folder%index21%!"=="drive" echo.^|                                          ^|  ^|  V ^| 
if "!folder%index21%!"=="drive" echo.^|                                          ^|  ^|____^| 
if "!folder%index21%!"=="drive" echo.^|__________________________________________^| !name%index21%:~0,8!
if "!folder%index21%!"=="drive" echo.^| File/Directory options                   ^|
if "!folder%index21%!"=="drive" echo.^|                                          ^|
echo %tab%%bck% 2>nul&set /p=<nul
set freespace=!file%adount%!
set foldersize=!file%abount%!
set input=%cd%
for %%F in (%INPUT%) do (
	set ATTRIBS=%%~aF
)
set "input="
echo.
echo.
echo.
echo.
echo.
echo.
set fs=%freespace:~20%
set fs=%fs:bytes=%
set fs=%fs:free=%
set fs=%fs:(s)=%
echo.^| _                                       ^|
echo.^| - Drives                                 ^|
echo.^| - User folder                            ^|
echo.^| - Recycle Bin                            ^|
echo.^|__________________________________________^|
echo.^| Folder info                              ^|
echo.^|                                          ^|
if not "%cd:~29%"=="" echo.^| Location: %cdir:~0,28%..
if "%cd:~29%"=="" echo.^| Location: %cdir:~0,28%
echo.^| Size: %foldersize:~-16%
echo.^| Attributes: %ATTRIBS%
echo.^|__________________________________________^|
echo.^| File info
echo.^|                                          ^|
echo.^| Please select a file                     ^|
echo.^|                                          ^|
echo.^|                                          ^|
echo.^|                                          ^|
echo.^|__________________________________________^|
echo.^| File/Directory options                   ^|
echo.^|                                          ^|
echo.^| Delete       Rename                      ^|
echo.^| Copy         New folder                  ^|
echo.^| Cut          Change attributes           ^|                                           ^<- Page %page% -^>                                                
echo.^| Paste                                    ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  Click on a file/directory, to view its info, delete, or do other activites with it. Press X to quit the program                                  ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter: %cd:~0,2%
if not "%volumename: no label=%"=="." echo.^|  Volume label: %volumename: no label=%
if "%volumename: no label=%"=="." echo.^|  No volume label
echo.^|  Free space: %fs: =% byte(s)
echo.^|  Serial number: %serialnum%
echo.^|___________________________________________________________________________________________________________________________________________________^|
if "%mouse%"=="false" echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [ ] Mouse mode ^|     Launch it    ^|
if "%mouse%"=="true" echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [X] Mouse mode ^|     Launch it    ^|
echo.^|_____________________^|____________^|_____________________^|__________________________^|___________________________^|________________^|__________________^|
:input
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if "%key%"=="4x21" goto changedir
if "%key%"=="4x22" goto changedir
if "%key%"=="4x23" goto changedir
if "%key%"=="4x24" goto changedir
if "%key%"=="4x25" goto changedir
if "%key%"=="4x26" goto changedir
if "%key%"=="4x27" goto changedir
if "%key%"=="4x28" goto changedir
if "%key%"=="4x29" goto changedir
if "%key%"=="4x30" goto changedir
if "%key%"=="4x31" goto changedir
if "%key%"=="4x32" goto changedir
if "%key%"=="4x33" goto changedir
if "%key%"=="4x34" goto changedir
if "%key%"=="4x35" goto changedir
if "%key%"=="4x36" goto changedir
if "%key%"=="4x37" goto changedir
if "%key%"=="4x38" goto changedir
if "%key%"=="4x39" goto changedir
if "%key%"=="4x40" goto changedir
if "%key%"=="4x41" goto changedir
if "%key%"=="4x42" goto changedir
if "%key%"=="4x43" goto changedir
if "%key%"=="4x44" goto changedir
if "%key%"=="4x45" goto changedir
if "%key%"=="4x46" goto changedir
if "%key%"=="4x47" goto changedir
if "%key%"=="4x48" goto changedir
if "%key%"=="4x49" goto changedir
if "%key%"=="4x50" goto changedir
if "%key%"=="4x51" goto changedir
if "%key%"=="4x52" goto changedir
if "%key%"=="4x53" goto changedir
if "%key%"=="4x54" goto changedir
if "%key%"=="4x55" goto changedir
if "%key%"=="4x56" goto changedir
if "%key%"=="4x57" goto changedir
if "%key%"=="4x58" goto changedir
if "%key%"=="4x59" goto changedir
if "%key%"=="4x60" goto changedir
if "%key%"=="4x61" goto changedir
if "%key%"=="4x62" goto changedir
if "%key%"=="4x63" goto changedir
if "%key%"=="4x64" goto changedir
if "%key%"=="4x65" goto changedir
if "%key%"=="4x66" goto changedir
if "%key%"=="4x67" goto changedir
if "%key%"=="4x68" goto changedir
if "%key%"=="4x69" goto changedir
if "%key%"=="4x70" goto changedir
if "%key%"=="4x71" goto changedir
if "%key%"=="4x72" goto changedir
if "%key%"=="4x73" goto changedir
if "%key%"=="4x74" goto changedir
if "%key%"=="4x75" goto changedir
if "%key%"=="4x76" goto changedir
if "%key%"=="4x77" goto changedir
if "%key%"=="4x78" goto changedir
if "%key%"=="4x79" goto changedir
if "%key%"=="4x80" goto changedir
if "%key%"=="4x81" goto changedir
if "%key%"=="4x82" goto changedir
if "%key%"=="4x83" goto changedir
if "%key%"=="4x84" goto changedir
if "%key%"=="4x85" goto changedir
if "%key%"=="4x86" goto changedir
if "%key%"=="4x87" goto changedir
if "%key%"=="4x88" goto changedir
if "%key%"=="4x89" goto changedir
if "%key%"=="4x90" goto changedir
if "%key%"=="4x91" goto changedir
if "%key%"=="4x92" goto changedir
if "%key%"=="4x93" goto changedir
if "%key%"=="4x94" goto changedir
if "%key%"=="4x95" goto changedir
if "%key%"=="4x96" goto changedir
if "%key%"=="4x97" goto changedir
if "%key%"=="4x98" goto changedir
if "%key%"=="4x99" goto changedir
if "%key%"=="4x100" goto changedir
if "%key%"=="4x101" goto changedir
if "%key%"=="4x102" goto changedir
if "%key%"=="4x103" goto changedir
if "%key%"=="4x104" goto changedir
if "%key%"=="4x105" goto changedir
if "%key%"=="4x106" goto changedir
if "%key%"=="4x107" goto changedir
if "%key%"=="4x108" goto changedir
if "%key%"=="4x109" goto changedir
if "%key%"=="4x110" goto changedir
if "%key%"=="4x111" goto changedir
if "%key%"=="4x112" goto changedir
if "%key%"=="4x113" goto changedir
if "%key%"=="4x114" goto changedir
if "%key%"=="4x115" goto changedir
if "%key%"=="4x116" goto changedir
if "%key%"=="4x117" goto changedir
if "%key%"=="4x118" goto changedir
if "%key%"=="4x119" goto changedir
if "%key%"=="4x120" goto changedir
if "%key%"=="4x121" goto changedir
if "%key%"=="4x122" goto changedir
if "%key%"=="4x123" goto changedir
if "%key%"=="4x124" goto changedir
if "%key%"=="4x125" goto changedir
if "%key%"=="4x126" goto changedir
if "%key%"=="4x127" goto changedir
if "%key%"=="4x128" goto changedir
if "%key%"=="4x129" goto changedir
if "%key%"=="4x130" goto changedir
if "%key%"=="4x131" goto changedir
if "%key%"=="4x132" goto changedir
if "%key%"=="4x133" goto changedir
if "%key%"=="4x134" goto changedir
if "%key%"=="4x135" goto changedir
if "%key%"=="4x136" goto changedir
if "%key%"=="4x137" goto changedir
if "%key%"=="4x138" goto changedir
if "%key%"=="4x139" goto changedir
if "%key%"=="4x140" goto changedir
if "%key%"=="4x141" goto changedir
if "%key%"=="4x142" goto changedir
if "%key%"=="4x143" goto changedir
if "%key%"=="4x144" goto changedir
if "%key%"=="4x145" goto changedir
if "%key%"=="4x146" goto changedir
if "%key%"=="4x147" goto changedir
if "%key%"=="28x87" goto rempage
if "%key%"=="28x88" goto rempage
if "%key%"=="28x98" goto adapage
if "%key%"=="28x99" goto adapage
if "%key%"=="26x2" goto deldir
if "%key%"=="26x3" goto deldir
if "%key%"=="26x4" goto deldir
if "%key%"=="26x5" goto deldir
if "%key%"=="26x6" goto deldir
if "%key%"=="26x7" goto deldir
if "%key%"=="26x15" goto rendir
if "%key%"=="26x16" goto rendir
if "%key%"=="26x17" goto rendir
if "%key%"=="26x18" goto rendir
if "%key%"=="26x19" goto rendir
if "%key%"=="26x20" goto rendir
if "%key%"=="27x2" set clipboard=%cdir%&set copy=true
if "%key%"=="27x3" set clipboard=%cdir%&set copy=true
if "%key%"=="27x4" set clipboard=%cdir%&set copy=true
if "%key%"=="27x5" set clipboard=%cdir%&set copy=true
if "%key%"=="28x2" set clipboard=%cdir%&set copy=false
if "%key%"=="28x3" set clipboard=%cdir%&set copy=false
if "%key%"=="28x4" set clipboard=%cdir%&set copy=false
if "%key%"=="27x15" goto newdir
if "%key%"=="27x16" goto newdir
if "%key%"=="27x17" goto newdir
if "%key%"=="27x18" goto newdir
if "%key%"=="27x19" goto newdir
if "%key%"=="27x20" goto newdir
if "%key%"=="27x21" goto newdir
if "%key%"=="27x22" goto newdir
if "%key%"=="27x23" goto newdir
if "%key%"=="27x24" goto newdir
if "%key%"=="28x15" set adir=%cdir%&set sub=true&call :attrib&call :wc&goto interface
if "%key%"=="28x16" set adir=%cdir%&set sub=true&call :attrib&call :wc&goto interface
if "%key%"=="28x17" set adir=%cdir%&set sub=true&call :attrib&call :wc&goto interface
if "%key%"=="28x18" set adir=%cdir%&set sub=true&call :attrib&call :wc&goto interface
if "%key%"=="28x19" set adir=%cdir%&set sub=true&call :attrib&call :wc&goto interface
if "%key%"=="28x20" set adir=%cdir%&set sub=true&call :attrib&call :wc&goto interface
if "%key%"=="28x21" set adir=%cdir%&set sub=true&call :attrib&call :wc&goto interface
if "%key%"=="28x22" set adir=%cdir%&set sub=true&call :attrib&call :wc&goto interface
if "%key%"=="28x23" set adir=%cdir%&set sub=true&call :attrib&call :wc&goto interface
if "%key%"=="28x24" set adir=%cdir%&set sub=true&call :attrib&call :wc&goto interface
if "%key%"=="28x25" set adir=%cdir%&set sub=true&call :attrib&call :wc&goto interface
if "%key%"=="28x26" set adir=%cdir%&set sub=true&call :attrib&call :wc&goto interface
if "%key%"=="28x27" set adir=%cdir%&set sub=true&call :attrib&call :wc&goto interface
if "%key%"=="28x28" set adir=%cdir%&set sub=true&call :attrib&call :wc&goto interface
if "%key%"=="28x29" set adir=%cdir%&set sub=true&call :attrib&call :wc&goto interface
if "%key%"=="28x30" set adir=%cdir%&set sub=true&call :attrib&call :wc&goto interface
if "%key%"=="28x31" set adir=%cdir%&set sub=true&call :attrib&call :wc&goto interface
if "%key%"=="29x2" goto pastedir
if "%key%"=="29x3" goto pastedir
if "%key%"=="29x4" goto pastedir
if "%key%"=="29x5" goto pastedir
if "%key%"=="29x6" goto pastedir
if "%key%"=="6x2" cd ..&set cdir=%cd%&set adir=..&call :wc&goto interface
if "%key%"=="6x3" cd ..&set cdir=%cd%&set adir=..&call :wc&goto interface
if "%key%"=="7x2" goto checkdrives
if "%key%"=="7x3" goto checkdrives
if "%key%"=="7x4" goto checkdrives
if "%key%"=="7x5" goto checkdrives
if "%key%"=="7x6" goto checkdrives
if "%key%"=="7x7" goto checkdrives
if "%key%"=="7x8" goto checkdrives
if "%key%"=="7x9" goto checkdrives
if "%key%"=="8x2" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x3" call :wc&cd %userprofile%&set cdir=%call :wc&cd%&goto interface
if "%key%"=="8x4" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x5" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x6" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x7" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x8" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x9" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x10" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x11" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x12" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x13" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x14" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="9x2" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x3" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x4" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x5" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x6" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x7" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x8" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x9" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x10" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x11" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x12" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x13" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x14" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="2x146" exit /b
::low buttons
if "%key%"=="41x2" goto aboutpg
if "%key%"=="41x3" goto aboutpg
if "%key%"=="41x4" goto aboutpg
if "%key%"=="41x5" goto aboutpg
if "%key%"=="41x6" goto aboutpg
if "%key%"=="41x7" goto aboutpg
if "%key%"=="41x8" goto aboutpg
if "%key%"=="41x9" goto aboutpg
if "%key%"=="41x10" goto aboutpg
if "%key%"=="41x11" goto aboutpg
if "%key%"=="41x12" goto aboutpg
if "%key%"=="41x13" goto aboutpg
if "%key%"=="41x14" goto aboutpg
if "%key%"=="41x15" goto aboutpg
if "%key%"=="41x16" goto aboutpg
if "%key%"=="41x17" goto aboutpg
if "%key%"=="41x18" goto aboutpg
if "%key%"=="41x19" goto aboutpg
if "%key%"=="41x24" goto basichlp
if "%key%"=="41x25" goto basichlp
if "%key%"=="41x26" goto basichlp
if "%key%"=="41x27" goto basichlp
if "%key%"=="41x28" goto basichlp
if "%key%"=="41x29" goto basichlp
if "%key%"=="41x30" goto basichlp
if "%key%"=="41x31" goto basichlp
if "%key%"=="41x32" goto basichlp
if "%key%"=="41x33" goto basichlp
if "%key%"=="41x37" call :clinehelp&pause&goto endloop
if "%key%"=="41x38" call :clinehelp&pause&goto endloop
if "%key%"=="41x39" call :clinehelp&pause&goto endloop
if "%key%"=="41x40" call :clinehelp&pause&goto endloop
if "%key%"=="41x41" call :clinehelp&pause&goto endloop
if "%key%"=="41x42" call :clinehelp&pause&goto endloop
if "%key%"=="41x43" call :clinehelp&pause&goto endloop
if "%key%"=="41x44" call :clinehelp&pause&goto endloop
if "%key%"=="41x45" call :clinehelp&pause&goto endloop
if "%key%"=="41x46" call :clinehelp&pause&goto endloop
if "%key%"=="41x47" call :clinehelp&pause&goto endloop
if "%key%"=="41x48" call :clinehelp&pause&goto endloop
if "%key%"=="41x49" call :clinehelp&pause&goto endloop
if "%key%"=="41x50" call :clinehelp&pause&goto endloop
if "%key%"=="41x51" call :clinehelp&pause&goto endloop
if "%key%"=="41x52" call :clinehelp&pause&goto endloop
if "%key%"=="41x53" call :clinehelp&pause&goto endloop
if "%key%"=="41x54" call :clinehelp&pause&goto endloop
if "%key%"=="41x55" call :clinehelp&pause&goto endloop
if "%key%"=="41x59" explorer %cdir%
if "%key%"=="41x60" explorer %cdir%
if "%key%"=="41x61" explorer %cdir%
if "%key%"=="41x62" explorer %cdir%
if "%key%"=="41x63" explorer %cdir%
if "%key%"=="41x64" explorer %cdir%
if "%key%"=="41x65" explorer %cdir%
if "%key%"=="41x66" explorer %cdir%
if "%key%"=="41x67" explorer %cdir%
if "%key%"=="41x68" explorer %cdir%
if "%key%"=="41x69" explorer %cdir%
if "%key%"=="41x70" explorer %cdir%
if "%key%"=="41x71" explorer %cdir%
if "%key%"=="41x72" explorer %cdir%
if "%key%"=="41x73" explorer %cdir%
if "%key%"=="41x74" explorer %cdir%
if "%key%"=="41x75" explorer %cdir%
if "%key%"=="41x76" explorer %cdir%
if "%key%"=="41x77" explorer %cdir%
if "%key%"=="41x78" explorer %cdir%
if "%key%"=="41x79" explorer %cdir%
if "%key%"=="41x80" explorer %cdir%
if "%key%"=="41x81" explorer %cdir%
if "%key%"=="41x82" explorer %cdir%
if "%key%"=="41x86" cmd&color 0B&cls&goto endloop
if "%key%"=="41x87" cmd&color 0B&cls&goto endloop
if "%key%"=="41x88" cmd&color 0B&cls&goto endloop
if "%key%"=="41x89" cmd&color 0B&cls&goto endloop
if "%key%"=="41x90" cmd&color 0B&cls&goto endloop
if "%key%"=="41x91" cmd&color 0B&cls&goto endloop
if "%key%"=="41x92" cmd&color 0B&cls&goto endloop
if "%key%"=="41x93" cmd&color 0B&cls&goto endloop
if "%key%"=="41x94" cmd&color 0B&cls&goto endloop
if "%key%"=="41x95" cmd&color 0B&cls&goto endloop
if "%key%"=="41x96" cmd&color 0B&cls&goto endloop
if "%key%"=="41x97" cmd&color 0B&cls&goto endloop
if "%key%"=="41x98" cmd&color 0B&cls&goto endloop
if "%key%"=="41x99" cmd&color 0B&cls&goto endloop
if "%key%"=="41x100" cmd&color 0B&cls&goto endloop
if "%key%"=="41x101" cmd&color 0B&cls&goto endloop
if "%key%"=="41x102" cmd&color 0B&cls&goto endloop
if "%key%"=="41x103" cmd&color 0B&cls&goto endloop
if "%key%"=="41x104" cmd&color 0B&cls&goto endloop
if "%key%"=="41x105" cmd&color 0B&cls&goto endloop
if "%key%"=="41x106" cmd&color 0B&cls&goto endloop
if "%key%"=="41x107" cmd&color 0B&cls&goto endloop
if "%key%"=="41x108" cmd&color 0B&cls&goto endloop
if "%key%"=="41x109" cmd&color 0B&cls&goto endloop
if "%key%"=="41x110" cmd&color 0B&cls&goto endloop
call :itemcheck
::18
goto input
:checkdrives
call :wc
set nf=2
if exist A: set folder%nf%=drive&set name%nf%=A:&set /a nf=%nf%+1
if exist B: set folder%nf%=drive&set name%nf%=B:&set /a nf=%nf%+1
if exist C: set folder%nf%=drive&set name%nf%=C:&set /a nf=%nf%+1
if exist D: set folder%nf%=drive&set name%nf%=D:&set /a nf=%nf%+1
if exist E: set folder%nf%=drive&set name%nf%=E:&set /a nf=%nf%+1
if exist F: set folder%nf%=drive&set name%nf%=F:&set /a nf=%nf%+1
if exist G: set folder%nf%=drive&set name%nf%=G:&set /a nf=%nf%+1
if exist H: set folder%nf%=drive&set name%nf%=H:&set /a nf=%nf%+1
if exist I: set folder%nf%=drive&set name%nf%=I:&set /a nf=%nf%+1
if exist J: set folder%nf%=drive&set name%nf%=J:&set /a nf=%nf%+1
if exist K: set folder%nf%=drive&set name%nf%=K:&set /a nf=%nf%+1
if exist L: set folder%nf%=drive&set name%nf%=L:&set /a nf=%nf%+1
if exist M: set folder%nf%=drive&set name%nf%=M:&set /a nf=%nf%+1
if exist N: set folder%nf%=drive&set name%nf%=N:&set /a nf=%nf%+1
if exist O: set folder%nf%=drive&set name%nf%=O:&set /a nf=%nf%+1
if exist P: set folder%nf%=drive&set name%nf%=P:&set /a nf=%nf%+1
if exist Q: set folder%nf%=drive&set name%nf%=Q:&set /a nf=%nf%+1
if exist R: set folder%nf%=drive&set name%nf%=R:&set /a nf=%nf%+1
if exist S: set folder%nf%=drive&set name%nf%=S:&set /a nf=%nf%+1
if exist T: set folder%nf%=drive&set name%nf%=T:&set /a nf=%nf%+1
if exist U: set folder%nf%=drive&set name%nf%=U:&set /a nf=%nf%+1
if exist V: set folder%nf%=drive&set name%nf%=V:&set /a nf=%nf%+1
if exist W: set folder%nf%=drive&set name%nf%=W:&set /a nf=%nf%+1
if exist X: set folder%nf%=drive&set name%nf%=X:&set /a nf=%nf%+1
if exist Y: set folder%nf%=drive&set name%nf%=Y:&set /a nf=%nf%+1
if exist Z: set folder%nf%=drive&set name%nf%=Z:&set /a nf=%nf%+1
set cdir=Drives
goto endloop
:loopydoopy
set /a nf=%nf%+1
set /a rf=%nf%-2
if "%rf%"=="%amount%" set "rf="&goto endloop
set cf=!file%nf%!
set folder%rf%=true
set name%rf%=%cf:~36%
set name=!name%rf%!
set date%rf%=%cf:~0,11%
set time%rf%=%cf:~12,5%
goto looptillfiles

:adapage
set /a index1=%index1%+30
set /a index2=%index2%+30
set /a index3=%index3%+30
set /a index4=%index4%+30
set /a index5=%index5%+30
set /a index6=%index6%+30
set /a index7=%index7%+30
set /a index8=%index8%+30
set /a index9=%index9%+30
set /a index10=%index10%+30
set /a index11=%index11%+30
set /a index12=%index12%+30
set /a index13=%index13%+30
set /a index14=%index14%+30
set /a index15=%index15%+30
set /a index16=%index16%+30
set /a index17=%index17%+30
set /a index18=%index18%+30
set /a index19=%index19%+30
set /a index20=%index20%+30
set /a index21=%index21%+30
set /a index22=%index22%+30
set /a index23=%index23%+30
set /a index24=%index24%+30
set /a index25=%index25%+30
set /a index26=%index26%+30
set /a index27=%index27%+30
set /a index28=%index28%+30
set /a index29=%index29%+30
set /a index30=%index30%+30
set /a page=%page%+1
set /a pagecheck=%amount%/30+1+1
if "%page%"=="%pagecheck%" goto fixitsimple
goto endloop
:rempage
set /a index1=%index1%-30
set /a index2=%index2%-30
set /a index3=%index3%-30
set /a index4=%index4%-30
set /a index5=%index5%-30
set /a index6=%index6%-30
set /a index7=%index7%-30
set /a index8=%index8%-30
set /a index9=%index9%-30
set /a index10=%index10%-30
set /a index11=%index11%-30
set /a index12=%index12%-30
set /a index13=%index13%-30
set /a index14=%index14%-30
set /a index15=%index15%-30
set /a index16=%index16%-30
set /a index17=%index17%-30
set /a index18=%index18%-30
set /a index19=%index19%-30
set /a index20=%index20%-30
set /a index21=%index21%-30
set /a index22=%index22%-30
set /a index23=%index23%-30
set /a index24=%index24%-30
set /a index25=%index25%-30
set /a index26=%index26%-30
set /a index27=%index27%-30
set /a index28=%index28%-30
set /a index29=%index29%-30
set /a index30=%index30%-30
set /a page=%page%-1
if "%page%"=="0" goto fixitsmile
goto endloop

:fixitsmile
call :fis
set /a pagecheck=%amount%/30+1+1
set /a page=%pagecheck%
:looptilltheend
set /a ps=%pagecheck%*30+1
if "%index30%"=="%ps%" goto rempage
set /a index1=%index1%+1
set /a index2=%index2%+1
set /a index3=%index3%+1
set /a index4=%index4%+1
set /a index5=%index5%+1
set /a index6=%index6%+1
set /a index7=%index7%+1
set /a index8=%index8%+1
set /a index9=%index9%+1
set /a index10=%index10%+1
set /a index11=%index11%+1
set /a index12=%index12%+1
set /a index13=%index13%+1
set /a index14=%index14%+1
set /a index15=%index15%+1
set /a index16=%index16%+1
set /a index17=%index17%+1
set /a index18=%index18%+1
set /a index19=%index19%+1
set /a index20=%index20%+1
set /a index21=%index21%+1
set /a index22=%index22%+1
set /a index23=%index23%+1
set /a index24=%index24%+1
set /a index25=%index25%+1
set /a index26=%index26%+1
set /a index27=%index27%+1
set /a index28=%index28%+1
set /a index29=%index29%+1
set /a index30=%index30%+1
goto looptilltheend

:fis
set page=31
set index1=32
set index2=33
set index3=34
set index4=35
set index5=36
set index6=37
set index7=38
set index8=39
set index9=40
set index10=41
set index11=42
set index12=43
set index13=44
set index14=45
set index15=46
set index16=47
set index17=48
set index18=49
set index19=50
set index20=51
set index21=52
set index22=53
set index23=54
set index24=55
set index25=56
set index26=57
set index27=58
set index28=59
set index29=60
set index30=61
goto :eof

:fixitsimple
set page=1
set index1=2
set index2=3
set index3=4
set index4=5
set index5=6
set index6=7
set index7=8
set index8=9
set index9=10
set index10=11
set index11=12
set index12=13
set index13=14
set index14=15
set index15=16
set index16=17
set index17=18
set index18=19
set index19=20
set index20=21
set index21=22
set index22=23
set index23=24
set index24=25
set index25=26
set index26=27
set index27=28
set index28=29
set index29=30
set index30=31
goto endloop


:wc
set "st=1"
if "!folder%index%!"=="false" set "index="&goto loadfile
set "index="
echo %tab%%bck% 2>nul&set /p=<nul
if "%init%"=="yes" goto wcanyway
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| ...                                      ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
echo.^|__________________________________________^|                                        Changing directory...                                           ^|
echo.^| File info                                ^|                                                                                                        ^|
echo.^|                                          ^|                                               .                                                        ^|
echo.^| Please select a file                     ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File/Directory options                   ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Delete       Rename                      ^|                                                                                                        ^|
echo.^| Copy         New folder                  ^|                                                                                                        ^|
echo.^| Cut          Change attributes           ^|                                           ^<- Page %page% -^>  
echo.^| Paste                                    ^|                                                                                                        ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  Please wait while the file manager wipes the files from memory of the last directory...                                                          ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter: %cd:~0,2%
if not "%volumename: no label=%"=="." echo.^|  Volume label: %volumename: no label=%
if "%volumename: no label=%"=="." echo.^|  No volume label
echo.^|  Free space: %fs: =% byte(s)
echo.^|  Serial number: %serialnum%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [ ] Mouse mode ^|     Launch it    ^|
echo.^|_____________________^|____________^|_____________________^|__________________________^|___________________________^|________________^|__________________^|
:wcanyway
set nf=3
:wcloop
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
if "%st%"=="1" echo.^|                                          ^|                                               .                                                        ^|&set st=2&goto yall
if "%st%"=="2" echo.^|                                          ^|                                               ..                                                       ^|&set st=3&goto yall
if "%st%"=="3" echo.^|                                          ^|                                               ...                                                      ^|&set st=4&goto yall
if "%st%"=="4" echo.^|                                          ^|                                                ..                                                      ^|&set st=5&goto yall
if "%st%"=="5" echo.^|                                          ^|                                                 .                                                      ^|&set st=6&goto yall
if "%st%"=="6" echo.^|                                          ^|                                                                                                        ^|&set st=1&goto yall
:yall
set /a nf=%nf%+1
set /a rf=%nf%-2
if "!name%rf%!"=="" set "rf="&set "st="&goto :eof
set "cf="
set "folder%rf%="
set "name%rf%="
set "date%rf%="
set "time%rf%="
set "type%rf%="
goto wcloop

:loadfile
set INPUT=%adir%
echo %tab%%bck% 2>nul&set /p=<nul
for %%F in ("%INPUT%") do (
	set ATTRIBS=%%~aF
	set CURR_FILE=%%~nxF
	set READ_ATTRIB=!ATTRIBS: -1,1!
)
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| ...                                      ^|
echo.^| - Drives                                 ^|
echo.^| - User folder                            ^|
echo.^| - Recycle Bin                            ^|
echo.^|__________________________________________^|
echo.^| Folder info                              ^|
echo.^|                                          ^|
if not "%cd:~29%"=="" echo.^| Location: %cdir:~0,28%..
if "%cd:~29%"=="" echo.^| Location: %cdir:~0,28%
echo.^| Size: %foldersize:~-16%
echo.
echo.^|__________________________________________^|
echo.^| File info                                ^|
echo.^|                                          ^|
echo.^|                                          ^|
echo.^|                                          ^|
echo.^|                                          ^|
echo.^|                                          ^|
echo.^|__________________________________________^|
echo.^| File/Directory options                   ^|
echo.^|                                          ^|
echo.^| Delete       Rename                      ^|
echo.^| Copy         New folder                  ^|
echo.^| Cut          Change attributes           ^|                                           ^<- Page %page% -^>
echo.^| Paste                                    ^|                                                                                                        ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  Click anywhere to continue...                                                                                                                    
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter: %cd:~0,2%
if not "%volumename: no label=%"=="." echo.^|  Volume label: %volumename: no label=%
if "%volumename: no label=%"=="." echo.^|  No volume label
echo.^|  Free space: %fs: =% byte(s)
echo.^|  Serial number: %serialnum%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [ ] Mouse mode ^|     Launch it    ^|
echo.^|_____________________^|____________^|_____________________^|__________________________^|___________________________^|________________^|__________________^|

echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| _                                       ^|
echo.^| - Drives                                 ^|
echo.^| - User folder                            ^|
echo.^| - Recycle Bin                            ^|
echo.^|__________________________________________^|
echo.^| Folder info                              ^|
echo.^|                                          ^|
if not "%cd:~29%"=="" echo.^| Location: %cdir:~0,28%..
if "%cd:~29%"=="" echo.^| Location: %cdir:~0,28%
echo.^| Size: %foldersize:~-16%
echo.
echo.^|__________________________________________^|
echo.^| File info                                ^|
echo.^|                                          ^|
if "%CURR_FILE:~34,1%"=="" echo.^| Name: %CURR_FILE:~0,33%    
if not "%CURR_FILE:~34,1%"=="" echo.^| Name: %CURR_FILE:~0,33%..^|
echo.^| Attributes: %ATTRIBS%       
echo.^|                                          ^|
echo.^|                                          ^|
echo.^|__________________________________________^|
echo.^| File options                             ^|
echo.^|                                          ^|
echo.^| Delete       Rename                      ^|
echo.^| Copy         View file                   ^|
echo.^| Cut          Change attributes           ^|
echo.^| Paste                                    ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  Click anywhere to continue...                                                                                                                    
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter: %cd:~0,2%
if not "%volumename: no label=%"=="." echo.^|  Volume label: %volumename: no label=%
if "%volumename: no label=%"=="." echo.^|  No volume label
echo.^|  Free space: %fs: =% byte(s)
echo.^|  Serial number: %serialnum%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [X] Mouse mode ^|     Launch it    ^|
echo.^|_____________________^|____________^|_____________________^|__________________________^|___________________________^|________________^|__________________^|
:im
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if "%key%"=="28x87" goto rempage
if "%key%"=="28x88" goto rempage
if "%key%"=="28x98" goto adapage
if "%key%"=="28x99" goto adapage
if "%key%"=="6x2" cd ..&set cdir=%cd%&set adir=..&call :wc&goto interface
if "%key%"=="6x3" cd ..&set cdir=%cd%&set adir=..&call :wc&goto interface
if "%key%"=="7x2" goto checkdrives
if "%key%"=="7x3" goto checkdrives
if "%key%"=="7x4" goto checkdrives
if "%key%"=="7x5" goto checkdrives
if "%key%"=="7x6" goto checkdrives
if "%key%"=="7x7" goto checkdrives
if "%key%"=="7x8" goto checkdrives
if "%key%"=="7x9" goto checkdrives
if "%key%"=="26x2" del "%adir%" /Q >NUL&call :wc&goto interface
if "%key%"=="26x3" del "%adir%" /Q >NUL&call :wc&goto interface
if "%key%"=="26x4" del "%adir%" /Q >NUL&call :wc&goto interface
if "%key%"=="26x5" del "%adir%" /Q >NUL&call :wc&goto interface
if "%key%"=="26x6" del "%adir%" /Q >NUL&call :wc&goto interface
if "%key%"=="26x7" del "%adir%" /Q >NUL&call :wc&goto interface
if "%key%"=="26x15" goto renfile
if "%key%"=="26x16" goto renfile
if "%key%"=="26x17" goto renfile
if "%key%"=="26x18" goto renfile
if "%key%"=="26x19" goto renfile
if "%key%"=="26x20" goto renfile
if "%key%"=="28x15" set sub=true&set file=yes&call :attrib&set file=no&call :wc&goto interface
if "%key%"=="28x16" set sub=true&set file=yes&call :attrib&set file=no&call :wc&goto interface
if "%key%"=="28x17" set sub=true&set file=yes&call :attrib&set file=no&call :wc&goto interface
if "%key%"=="28x18" set sub=true&set file=yes&call :attrib&set file=no&call :wc&goto interface
if "%key%"=="28x19" set sub=true&set file=yes&call :attrib&set file=no&call :wc&goto interface
if "%key%"=="28x20" set sub=true&set file=yes&call :attrib&set file=no&call :wc&goto interface
if "%key%"=="28x21" set sub=true&set file=yes&call :attrib&set file=no&call :wc&goto interface
if "%key%"=="28x22" set sub=true&set file=yes&call :attrib&set file=no&call :wc&goto interface
if "%key%"=="28x23" set sub=true&set file=yes&call :attrib&set file=no&call :wc&goto interface
if "%key%"=="28x24" set sub=true&set file=yes&call :attrib&set file=no&call :wc&goto interface
if "%key%"=="28x25" set sub=true&set file=yes&call :attrib&set file=no&call :wc&goto interface
if "%key%"=="28x26" set sub=true&set file=yes&call :attrib&set file=no&call :wc&goto interface
if "%key%"=="28x27" set sub=true&set file=yes&call :attrib&set file=no&call :wc&goto interface
if "%key%"=="28x28" set sub=true&set file=yes&call :attrib&set file=no&call :wc&goto interface
if "%key%"=="28x29" set sub=true&set file=yes&call :attrib&set file=no&call :wc&goto interface
if "%key%"=="28x30" set sub=true&set file=yes&call :attrib&set file=no&call :wc&goto interface
if "%key%"=="28x31" set sub=true&set file=yes&call :attrib&set file=no&call :wc&goto interface
if "%key%"=="27x2" set clipboard=%adir%&set copy=true
if "%key%"=="27x3" set clipboard=%adir%&set copy=true
if "%key%"=="27x4" set clipboard=%adir%&set copy=true
if "%key%"=="27x5" set clipboard=%adir%&set copy=true
if "%key%"=="28x2" set clipboard=%adir%&set copy=false
if "%key%"=="28x3" set clipboard=%adir%&set copy=false
if "%key%"=="28x4" set clipboard=%adir%&set copy=false
if "%key%"=="27x15" goto viewfile
if "%key%"=="27x16" goto viewfile
if "%key%"=="27x17" goto viewfile
if "%key%"=="27x18" goto viewfile
if "%key%"=="27x19" goto viewfile
if "%key%"=="27x20" goto viewfile
if "%key%"=="27x21" goto viewfile
if "%key%"=="27x22" goto viewfile
if "%key%"=="27x23" goto viewfile
if "%key%"=="29x2" goto pastefile
if "%key%"=="29x3" goto pastefile
if "%key%"=="29x4" goto pastefile
if "%key%"=="29x5" goto pastefile
if "%key%"=="29x6" goto pastefile
if "%key%"=="8x2" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x3" call :wc&cd %userprofile%&set cdir=%call :wc&cd%&goto interface
if "%key%"=="8x4" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x5" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x6" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x7" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x8" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x9" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x10" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x11" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x12" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x13" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="8x14" call :wc&cd %userprofile%&set cdir=%cd%&goto interface
if "%key%"=="9x2" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x3" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x4" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x5" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x6" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x7" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x8" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x9" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x10" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x11" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x12" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x13" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="9x14" call :wc&cd %homedrive%\$Recycle.Bin&set cdir=%cd%&goto interface
if "%key%"=="2x146" exit /bif "%key%"=="41x2" goto aboutpg
if "%key%"=="41x3" goto aboutpg
if "%key%"=="41x4" goto aboutpg
if "%key%"=="41x5" goto aboutpg
if "%key%"=="41x6" goto aboutpg
if "%key%"=="41x7" goto aboutpg
if "%key%"=="41x8" goto aboutpg
if "%key%"=="41x9" goto aboutpg
if "%key%"=="41x10" goto aboutpg
if "%key%"=="41x11" goto aboutpg
if "%key%"=="41x12" goto aboutpg
if "%key%"=="41x13" goto aboutpg
if "%key%"=="41x14" goto aboutpg
if "%key%"=="41x15" goto aboutpg
if "%key%"=="41x16" goto aboutpg
if "%key%"=="41x17" goto aboutpg
if "%key%"=="41x18" goto aboutpg
if "%key%"=="41x19" goto aboutpg
if "%key%"=="41x24" goto basichlp
if "%key%"=="41x25" goto basichlp
if "%key%"=="41x26" goto basichlp
if "%key%"=="41x27" goto basichlp
if "%key%"=="41x28" goto basichlp
if "%key%"=="41x29" goto basichlp
if "%key%"=="41x30" goto basichlp
if "%key%"=="41x31" goto basichlp
if "%key%"=="41x32" goto basichlp
if "%key%"=="41x33" goto basichlp
if "%key%"=="41x37" call :clinehelp&pause&goto endloop
if "%key%"=="41x38" call :clinehelp&pause&goto endloop
if "%key%"=="41x39" call :clinehelp&pause&goto endloop
if "%key%"=="41x40" call :clinehelp&pause&goto endloop
if "%key%"=="41x41" call :clinehelp&pause&goto endloop
if "%key%"=="41x42" call :clinehelp&pause&goto endloop
if "%key%"=="41x43" call :clinehelp&pause&goto endloop
if "%key%"=="41x44" call :clinehelp&pause&goto endloop
if "%key%"=="41x45" call :clinehelp&pause&goto endloop
if "%key%"=="41x46" call :clinehelp&pause&goto endloop
if "%key%"=="41x47" call :clinehelp&pause&goto endloop
if "%key%"=="41x48" call :clinehelp&pause&goto endloop
if "%key%"=="41x49" call :clinehelp&pause&goto endloop
if "%key%"=="41x50" call :clinehelp&pause&goto endloop
if "%key%"=="41x51" call :clinehelp&pause&goto endloop
if "%key%"=="41x52" call :clinehelp&pause&goto endloop
if "%key%"=="41x53" call :clinehelp&pause&goto endloop
if "%key%"=="41x54" call :clinehelp&pause&goto endloop
if "%key%"=="41x55" call :clinehelp&pause&goto endloop
if "%key%"=="41x59" explorer %cdir%
if "%key%"=="41x60" explorer %cdir%
if "%key%"=="41x61" explorer %cdir%
if "%key%"=="41x62" explorer %cdir%
if "%key%"=="41x63" explorer %cdir%
if "%key%"=="41x64" explorer %cdir%
if "%key%"=="41x65" explorer %cdir%
if "%key%"=="41x66" explorer %cdir%
if "%key%"=="41x67" explorer %cdir%
if "%key%"=="41x68" explorer %cdir%
if "%key%"=="41x69" explorer %cdir%
if "%key%"=="41x70" explorer %cdir%
if "%key%"=="41x71" explorer %cdir%
if "%key%"=="41x72" explorer %cdir%
if "%key%"=="41x73" explorer %cdir%
if "%key%"=="41x74" explorer %cdir%
if "%key%"=="41x75" explorer %cdir%
if "%key%"=="41x76" explorer %cdir%
if "%key%"=="41x77" explorer %cdir%
if "%key%"=="41x78" explorer %cdir%
if "%key%"=="41x79" explorer %cdir%
if "%key%"=="41x80" explorer %cdir%
if "%key%"=="41x81" explorer %cdir%
if "%key%"=="41x82" explorer %cdir%
if "%key%"=="41x86" cmd&color 0B&cls&goto endloop
if "%key%"=="41x87" cmd&color 0B&cls&goto endloop
if "%key%"=="41x88" cmd&color 0B&cls&goto endloop
if "%key%"=="41x89" cmd&color 0B&cls&goto endloop
if "%key%"=="41x90" cmd&color 0B&cls&goto endloop
if "%key%"=="41x91" cmd&color 0B&cls&goto endloop
if "%key%"=="41x92" cmd&color 0B&cls&goto endloop
if "%key%"=="41x93" cmd&color 0B&cls&goto endloop
if "%key%"=="41x94" cmd&color 0B&cls&goto endloop
if "%key%"=="41x95" cmd&color 0B&cls&goto endloop
if "%key%"=="41x96" cmd&color 0B&cls&goto endloop
if "%key%"=="41x97" cmd&color 0B&cls&goto endloop
if "%key%"=="41x98" cmd&color 0B&cls&goto endloop
if "%key%"=="41x99" cmd&color 0B&cls&goto endloop
if "%key%"=="41x100" cmd&color 0B&cls&goto endloop
if "%key%"=="41x101" cmd&color 0B&cls&goto endloop
if "%key%"=="41x102" cmd&color 0B&cls&goto endloop
if "%key%"=="41x103" cmd&color 0B&cls&goto endloop
if "%key%"=="41x104" cmd&color 0B&cls&goto endloop
if "%key%"=="41x105" cmd&color 0B&cls&goto endloop
if "%key%"=="41x106" cmd&color 0B&cls&goto endloop
if "%key%"=="41x107" cmd&color 0B&cls&goto endloop
if "%key%"=="41x108" cmd&color 0B&cls&goto endloop
if "%key%"=="41x109" cmd&color 0B&cls&goto endloop
if "%key%"=="41x110" cmd&color 0B&cls&goto endloop
if "%key%"=="41x135" start "" "%adir%"&goto loadfile
if "%key%"=="41x136" start "" "%adir%"&goto loadfile
if "%key%"=="41x137" start "" "%adir%"&goto loadfile
if "%key%"=="41x138" start "" "%adir%"&goto loadfile
if "%key%"=="41x139" start "" "%adir%"&goto loadfile
if "%key%"=="41x140" start "" "%adir%"&goto loadfile
if "%key%"=="41x141" start "" "%adir%"&goto loadfile
if "%key%"=="41x142" start "" "%adir%"&goto loadfile
if "%key%"=="41x143" start "" "%adir%"&goto loadfile
call :itemcheck
goto yolp


:aboutpg
color b0
cls
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                      лллллллллллллл                                                           
echo.                                                      лл                                                                       
echo.                                                      лл    лллллллл                                                           
echo.                                                      лл        лллл               File Manager                                
echo.                                                      лллллллллллллл                                                           
echo.                                                                                   About                                       
echo.                                                        лл      лл                                                             
echo.                                                        лл      лл                 Version 0.8a                                
echo.                                                        лллллллллл                 Codename ICE                                
echo.                                                                                   Revision 80                                 
echo.                                                 лллллллллллллллллллллллл          Created by: Markus Maal                     
echo.                                                 лллллллллллллллллллллллл          (MarkusTegelane/TheMarkusGuy)               
echo.                                                           ллл                                                                 
echo.                                                           ллл                                                                 
echo.                                                           ллл                                                                 
echo.                                                           ллл                                                                 
echo.                                                 лллллллллллллллллллллллл                                                      
echo.                                                 лллллллллллллллллллллллл                                                      
echo.                                                                                                                               
echo.                                                                                                                               
echo.                                                                                                                               
bg mouse >nul
cls
color 0b
goto endloop

:itemcheck

:item1
if "%key%"=="6x46" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="6x47" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="6x48" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="6x49" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="6x50" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="7x46" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="7x47" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="7x48" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="7x49" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="7x50" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="8x46" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="8x47" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="8x48" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="8x49" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="8x50" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="9x46" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="9x47" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="9x48" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="9x49" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="9x50" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="10x45" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="10x46" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="10x47" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="10x48" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="10x49" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="10x50" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
if "%key%"=="10x51" cd "%cd%\!name%index1%!" 2>nul&set cdir=%cd%&set index=%index1%&set adir=!name%index1%!&call :wc&goto interface
:item2
if "!name%index2%!"=="" goto item3
if "%key%"=="6x56" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="6x57" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="6x58" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="6x59" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="6x60" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="7x56" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="7x57" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="7x58" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="7x59" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="7x60" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="8x56" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="8x57" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="8x58" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="8x59" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="8x60" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="9x56" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="9x57" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="9x58" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="9x59" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="9x60" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="10x55" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="10x56" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="10x57" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="10x58" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="10x59" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="10x60" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
if "%key%"=="10x61" cd "%cd%\!name%index2%!" 2>nul&set cdir=%cd%&set index=%index2%&set adir=!name%index2%!&call :wc&goto interface
:item3
if "!name%index3%!"=="" goto item4
if "%key%"=="6x66" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="6x67" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="6x68" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="6x69" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="6x70" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="7x66" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="7x67" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="7x68" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="7x69" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="7x70" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="8x66" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="8x67" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="8x68" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="8x69" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="8x70" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="9x66" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="9x67" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="9x68" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="9x69" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="9x70" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="10x64" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="10x65" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="10x66" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="10x67" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="10x68" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="10x69" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="10x70" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="10x71" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
if "%key%"=="10x72" cd !name%index3%! 2>nul&set cdir=%cd%&set index=%index3%&set adir=!name%index3%!&call :wc&goto interface
:item4
if "!name%index4%!"=="" goto item5
if "%key%"=="6x76" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="6x77" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="6x78" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="6x79" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="6x80" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="7x76" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="7x77" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="7x78" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="7x79" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="7x80" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="8x76" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="8x77" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="8x78" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="8x79" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="8x80" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="9x76" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="9x77" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="9x78" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="9x79" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="9x80" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="10x74" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="10x75" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="10x76" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="10x77" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="10x78" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="10x79" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="10x80" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="10x81" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
if "%key%"=="10x82" cd !name%index4%! 2>nul&set cdir=%cd%&set index=%index4%&set adir=!name%index4%!&call :wc&goto interface
:item5
if "!name%index5%!"=="" goto item6
if "%key%"=="6x86" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="6x87" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="6x88" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="6x89" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="6x90" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="7x86" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="7x87" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="7x88" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="7x89" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="7x90" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="8x86" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="8x87" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="8x88" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="8x89" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="8x90" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="9x86" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="9x87" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="9x88" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="9x89" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="9x90" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="10x84" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="10x85" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="10x86" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="10x87" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="10x88" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="10x89" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="10x90" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="10x91" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
if "%key%"=="10x92" cd !name%index5%! 2>nul&set cdir=%cd%&set index=%index5%&set adir=!name%index5%!&call :wc&goto interface
:item6
if "!name%index6%!"=="" goto item7
if "%key%"=="6x96" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="6x97" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="6x98" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="6x99" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="6x100" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="7x96" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="7x97" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="7x98" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="7x99" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="7x100" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="8x96" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="8x97" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="8x98" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="8x99" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="8x100" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="9x96" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="9x97" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="9x98" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="9x99" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="9x100" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="10x94" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="10x95" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="10x96" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="10x97" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="10x98" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="10x99" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="10x100" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="10x101" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
if "%key%"=="10x102" cd !name%index6%! 2>nul&set cdir=%cd%&set index=%index6%&set adir=!name%index6%!&call :wc&goto interface
:item7
if "!name%index7%!"=="" goto item8
if "%key%"=="6x106" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="6x107" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="6x108" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="6x109" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="6x110" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="7x106" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="7x107" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="7x108" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="7x109" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="7x110" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="8x106" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="8x107" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="8x108" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="8x109" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="8x110" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="9x106" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="9x107" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="9x108" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="9x109" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="9x110" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="10x104" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="10x105" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="10x106" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="10x107" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="10x108" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="10x109" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="10x110" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="10x111" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
if "%key%"=="10x112" cd !name%index7%! 2>nul&set cdir=%cd%&set index=%index7%&set adir=!name%index7%!&call :wc&goto interface
:item8
if "!name%index8%!"=="" goto item9
if "%key%"=="6x116" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="6x117" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="6x118" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="6x119" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="6x120" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="7x116" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="7x117" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="7x118" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="7x119" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="7x120" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="8x116" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="8x117" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="8x118" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="8x119" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="8x120" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="9x116" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="9x117" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="9x118" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="9x119" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="9x120" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="10x114" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="10x115" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="10x116" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="10x117" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="10x118" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="10x119" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="10x120" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="10x121" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
if "%key%"=="10x122" cd !name%index8%! 2>nul&set cdir=%cd%&set index=%index8%&set adir=!name%index8%!&call :wc&goto interface
:item9
if "!name%index9%!"=="" goto item10
if "%key%"=="6x126" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="6x127" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="6x128" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="6x129" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="6x130" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="7x126" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="7x127" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="7x128" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="7x129" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="7x130" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="8x126" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="8x127" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="8x128" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="8x129" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="8x130" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="9x126" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="9x127" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="9x128" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="9x129" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="9x130" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="10x124" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="10x125" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="10x126" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="10x127" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="10x128" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="10x129" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="10x130" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="10x131" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
if "%key%"=="10x132" cd !name%index9%! 2>nul&set cdir=%cd%&set index=%index9%&set adir=!name%index9%!&call :wc&goto interface
:item10
if "!name%index10%!"=="" goto item11
if "%key%"=="6x136" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="6x137" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="6x138" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="6x139" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="6x140" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="7x136" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="7x137" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="7x138" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="7x139" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="7x140" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="8x136" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="8x137" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="8x138" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="8x139" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="8x140" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="9x136" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="9x137" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="9x138" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="9x139" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="9x140" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="10x134" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="10x135" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="10x136" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="10x137" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="10x138" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="10x139" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="10x140" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="10x141" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
if "%key%"=="10x142" cd !name%index10%! 2>nul&set cdir=%cd%&set index=%index10%&set adir=!name%index10%!&call :wc&goto interface
:item11
if "!name%index11%!"=="" goto item12
if "%key%"=="12x46" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="12x47" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="12x48" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="12x49" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="12x50" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="13x46" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="13x47" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="13x48" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="13x49" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="13x50" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="14x46" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="14x47" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="14x48" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="14x49" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="14x50" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="15x46" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="15x47" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="15x48" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="15x49" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="15x50" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="16x45" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="16x46" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="16x47" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="16x48" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="16x49" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="16x50" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
if "%key%"=="16x51" cd "%cd%\!name%index11%!" 2>nul&set cdir=%cd%&set index=%index11%&set adir=!name%index11%!&call :wc&goto interface
:item12
if "!name%index12%!"=="" goto item13
if "%key%"=="12x56" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="12x57" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="12x58" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="12x59" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="12x60" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="13x56" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="13x57" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="13x58" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="13x59" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="13x60" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="14x56" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="14x57" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="14x58" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="14x59" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="14x60" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="15x56" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="15x57" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="15x58" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="15x59" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="15x60" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="16x55" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="16x56" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="16x57" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="16x58" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="16x59" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="16x60" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
if "%key%"=="16x61" cd "%cd%\!name%index12%!" 2>nul&set cdir=%cd%&set index=%index12%&set adir=!name%index12%!&call :wc&goto interface
:item13
if "!name%index13%!"=="" goto item14
if "%key%"=="12x66" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="12x67" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="12x68" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="12x69" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="12x70" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="13x66" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="13x67" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="13x68" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="13x69" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="13x70" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="14x66" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="14x67" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="14x68" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="14x69" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="14x70" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="15x66" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="15x67" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="15x68" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="15x69" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="15x70" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="16x65" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="16x66" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="16x67" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="16x68" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="16x69" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="16x70" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
if "%key%"=="16x71" cd "%cd%\!name%index13%!" 2>nul&set cdir=%cd%&set index=%index13%&set adir=!name%index13%!&call :wc&goto interface
:item14
if "!name%index14%!"=="" goto item15
if "%key%"=="12x76" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="12x77" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="12x78" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="12x79" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="12x80" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="13x76" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="13x77" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="13x78" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="13x79" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="13x80" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="14x76" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="14x77" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="14x78" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="14x79" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="14x80" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="15x76" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="15x77" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="15x78" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="15x79" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="15x80" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="16x75" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="16x76" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="16x77" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="16x78" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="16x79" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="16x80" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
if "%key%"=="16x81" cd "%cd%\!name%index14%!" 2>nul&set cdir=%cd%&set index=%index14%&set adir=!name%index14%!&call :wc&goto interface
:item15
if "!name%index15%!"=="" goto item16
if "%key%"=="12x86" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="12x87" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="12x88" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="12x89" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="12x90" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="13x86" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="13x87" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="13x88" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="13x89" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="13x90" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="14x86" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="14x87" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="14x88" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="14x89" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="14x90" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="15x86" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="15x87" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="15x88" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="15x89" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="15x90" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="16x85" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="16x86" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="16x87" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="16x88" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="16x89" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="16x90" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
if "%key%"=="16x91" cd "%cd%\!name%index15%!" 2>nul&set cdir=%cd%&set index=%index15%&set adir=!name%index15%!&call :wc&goto interface
:item16
if "!name%index16%!"=="" goto item17
if "%key%"=="12x96" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="12x97" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="12x98" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="12x99" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="12x100" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="13x96" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="13x97" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="13x98" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="13x99" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="13x100" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="14x96" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="14x97" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="14x98" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="14x99" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="14x100" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="15x96" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="15x97" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="15x98" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="15x99" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="15x100" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="16x95" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="16x96" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="16x97" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="16x98" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="16x99" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="16x100" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
if "%key%"=="16x101" cd "%cd%\!name%index16%!" 2>nul&set cdir=%cd%&set index=%index16%&set adir=!name%index16%!&call :wc&goto interface
:item17
if "!name%index17%!"=="" goto item18
if "%key%"=="12x106" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="12x107" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="12x108" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="12x109" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="12x110" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="13x106" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="13x107" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="13x108" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="13x109" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="13x110" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="14x106" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="14x107" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="14x108" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="14x109" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="14x110" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="15x106" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="15x107" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="15x108" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="15x109" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="15x110" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="16x105" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="16x106" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="16x107" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="16x108" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="16x109" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="16x110" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
if "%key%"=="16x111" cd "%cd%\!name%index17%!" 2>nul&set cdir=%cd%&set index=%index17%&set adir=!name%index17%!&call :wc&goto interface
:item18
if "!name%index18%!"=="" goto item19
if "%key%"=="12x116" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="12x117" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="12x118" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="12x119" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="12x120" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="13x116" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="13x117" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="13x118" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="13x119" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="13x120" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="14x116" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="14x117" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="14x118" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="14x119" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="14x120" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="15x116" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="15x117" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="15x118" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="15x119" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="15x120" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="16x115" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="16x116" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="16x117" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="16x118" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="16x119" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="16x120" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
if "%key%"=="16x121" cd "%cd%\!name%index18%!" 2>nul&set cdir=%cd%&set index=%index18%&set adir=!name%index18%!&call :wc&goto interface
:item19
if "!name%index19%!"=="" goto item20
if "%key%"=="12x126" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="12x127" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="12x128" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="12x129" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="12x130" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="13x126" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="13x127" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="13x128" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="13x129" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="13x130" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="14x126" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="14x127" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="14x128" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="14x129" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="14x130" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="15x126" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="15x127" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="15x128" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="15x129" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="15x130" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="16x125" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="16x126" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="16x127" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="16x128" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="16x129" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="16x130" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
if "%key%"=="16x131" cd "%cd%\!name%index19%!" 2>nul&set cdir=%cd%&set index=%index19%&set adir=!name%index19%!&call :wc&goto interface
:item20
if "!name%index20%!"=="" goto item21
if "%key%"=="12x136" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="12x137" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="12x138" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="12x139" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="12x140" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="13x136" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="13x137" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="13x138" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="13x139" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="13x140" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="14x136" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="14x137" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="14x138" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="14x139" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="14x140" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="15x136" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="15x137" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="15x138" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="15x139" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="15x140" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="16x135" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="16x136" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="16x137" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="16x138" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="16x139" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="16x140" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
if "%key%"=="16x141" cd "%cd%\!name%index20%!" 2>nul&set cdir=%cd%&set index=%index20%&set adir=!name%index20%!&call :wc&goto interface
:item21
if "!name%index21%!"=="" goto item22
if "%key%"=="18x46" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="18x47" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="18x48" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="18x49" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="18x50" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="19x46" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="19x47" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="19x48" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="19x49" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="19x50" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="20x46" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="20x47" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="20x48" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="20x49" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="20x50" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="21x46" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="21x47" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="21x48" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="21x49" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="21x50" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="22x45" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="22x46" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="22x47" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="22x48" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="22x49" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="22x50" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
if "%key%"=="22x51" cd "%cd%\!name%index21%!" 2>nul&set cdir=%cd%&set index=%index21%&set adir=!name%index21%!&call :wc&goto interface
:item22
if "!name%index22%!"=="" goto item23
if "%key%"=="18x56" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="18x57" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="18x58" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="18x59" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="18x60" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="19x56" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="19x57" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="19x58" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="19x59" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="19x60" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="20x56" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="20x57" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="20x58" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="20x59" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="20x60" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="21x56" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="21x57" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="21x58" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="21x59" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="21x60" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="22x55" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="22x56" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="22x57" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="22x58" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="22x59" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="22x60" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
if "%key%"=="22x61" cd "%cd%\!name%index22%!" 2>nul&set cdir=%cd%&set index=%index22%&set adir=!name%index22%!&call :wc&goto interface
:item23
if "!name%index23%!"=="" goto item24
if "%key%"=="18x66" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="18x67" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="18x68" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="18x69" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="18x70" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="19x66" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="19x67" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="19x68" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="19x69" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="19x70" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="20x66" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="20x67" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="20x68" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="20x69" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="20x70" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="21x66" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="21x67" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="21x68" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="21x69" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="21x70" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="22x65" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="22x66" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="22x67" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="22x68" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="22x69" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="22x70" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
if "%key%"=="22x71" cd "%cd%\!name%index23%!" 2>nul&set cdir=%cd%&set index=%index23%&set adir=!name%index23%!&call :wc&goto interface
:item24
if "!name%index24%!"=="" goto item25
if "%key%"=="18x76" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="18x77" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="18x78" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="18x79" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="18x80" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="19x76" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="19x77" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="19x78" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="19x79" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="19x80" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="20x76" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="20x77" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="20x78" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="20x79" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="20x80" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="21x76" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="21x77" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="21x78" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="21x79" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="21x80" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="22x75" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="22x76" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="22x77" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="22x78" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="22x79" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="22x80" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
if "%key%"=="22x81" cd "%cd%\!name%index24%!" 2>nul&set cdir=%cd%&set index=%index24%&set adir=!name%index24%!&call :wc&goto interface
:item25
if "!name%index25%!"=="" goto item26
if "%key%"=="18x86" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="18x87" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="18x88" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="18x89" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="18x90" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="19x86" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="19x87" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="19x88" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="19x89" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="19x90" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="20x86" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="20x87" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="20x88" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="20x89" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="20x90" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="21x86" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="21x87" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="21x88" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="21x89" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="21x90" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="22x85" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="22x86" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="22x87" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="22x88" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="22x89" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="22x90" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
if "%key%"=="22x91" cd "%cd%\!name%index25%!" 2>nul&set cdir=%cd%&set index=%index25%&set adir=!name%index25%!&call :wc&goto interface
:item26
if "!name%index26%!"=="" goto item27
if "%key%"=="18x96" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="18x97" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="18x98" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="18x99" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="18x100" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="19x96" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="19x97" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="19x98" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="19x99" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="19x100" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="20x96" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="20x97" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="20x98" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="20x99" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="20x100" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="21x96" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="21x97" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="21x98" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="21x99" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="21x100" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="22x95" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="22x96" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="22x97" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="22x98" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="22x99" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="22x100" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
if "%key%"=="22x101" cd "%cd%\!name%index26%!" 2>nul&set cdir=%cd%&set index=%index26%&set adir=!name%index26%!&call :wc&goto interface
:item27
if "!name%index27%!"=="" goto item28
if "%key%"=="18x106" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="18x107" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="18x108" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="18x109" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="18x110" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="19x106" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="19x107" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="19x108" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="19x109" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="19x110" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="20x106" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="20x107" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="20x108" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="20x109" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="20x110" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="21x106" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="21x107" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="21x108" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="21x109" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="21x110" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="22x105" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="22x106" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="22x107" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="22x108" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="22x109" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="22x110" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
if "%key%"=="22x111" cd "%cd%\!name%index27%!" 2>nul&set cdir=%cd%&set index=%index27%&set adir=!name%index27%!&call :wc&goto interface
:item28
if "!name%index28%!"=="" goto item29
if "%key%"=="18x116" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="18x117" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="18x118" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="18x119" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="18x120" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="19x116" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="19x117" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="19x118" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="19x119" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="19x120" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="20x116" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="20x117" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="20x118" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="20x119" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="20x120" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="21x116" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="21x117" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="21x118" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="21x119" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="21x120" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="22x115" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="22x116" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="22x117" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="22x118" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="22x119" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="22x120" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
if "%key%"=="22x121" cd "%cd%\!name%index28%!" 2>nul&set cdir=%cd%&set index=%index28%&set adir=!name%index28%!&call :wc&goto interface
:item29
if "!name%index29%!"=="" goto item30
if "%key%"=="18x126" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="18x127" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="18x128" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="18x129" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="18x130" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="19x126" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="19x127" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="19x128" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="19x129" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="19x130" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="20x126" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="20x127" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="20x128" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="20x129" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="20x130" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="21x126" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="21x127" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="21x128" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="21x129" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="21x130" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="22x125" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="22x126" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="22x127" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="22x128" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="22x129" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="22x130" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
if "%key%"=="22x131" cd "%cd%\!name%index29%!" 2>nul&set cdir=%cd%&set index=%index29%&set adir=!name%index29%!&call :wc&goto interface
:item30
if "!name%index30%!"=="" goto :eof
if "%key%"=="18x136" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="18x137" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="18x138" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="18x139" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="18x140" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="19x136" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="19x137" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="19x138" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="19x139" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="19x140" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="20x136" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="20x137" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="20x138" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="20x139" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="20x140" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="21x136" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="21x137" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="21x138" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="21x139" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="21x140" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="22x135" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="22x136" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="22x137" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="22x138" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="22x139" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="22x140" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
if "%key%"=="22x141" cd "%cd%\!name%index30%!" 2>nul&set cdir=%cd%&set index=%index30%&set adir=!name%index30%!&call :wc&goto interface
goto :eof

:deldir
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| ...                                      ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                Are you sure?                                           ^|
echo.^| File info                                ^|           This action will delete any file inside of the current directory. This cannot be undone.     ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Please select a file                     ^|                                         Yes                    No                                      ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File/Directory options                   ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Delete       Rename                      ^|                                                                                                        ^|
echo.^| Copy         New folder                  ^|                                                                                                        ^|
echo.^| Cut          Change attributes           ^|                                           ^<- Page %page% -^>  
echo.^| Paste                                    ^|                                                                                                        ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  Directory deletion                                                                                                                               ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter: %cd:~0,2%
if not "%volumename: no label=%"=="." echo.^|  Volume label: %volumename: no label=%
if "%volumename: no label=%"=="." echo.^|  No volume label
echo.^|  Free space: %fs: =% byte(s)
echo.^|  Serial number: %serialnum%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [ ] Mouse mode ^|     Launch it    ^|
echo.^|_____________________^|____________^|_____________________^|__________________________^|___________________________^|________________^|__________________^|
:id
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if "%key%"=="19x107" goto interface
if "%key%"=="19x108" goto interface
if "%key%"=="19x87" goto remdir
if "%key%"=="19x86" goto remdir
if "%key%"=="19x85" goto remdir
goto id

:remdir
set ddir=%cd%
cd ..
set adir=%cd%
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| ...                                      ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File info                                ^|                                      The directory is being erased...                                  ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Please select a file                     ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File/Directory options                   ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Delete       Rename                      ^|                                                                                                        ^|
echo.^| Copy         New folder                  ^|                                                                                                        ^|
echo.^| Cut          Change attributes           ^|                                           ^<- Page %page% -^>  
echo.^| Paste                                    ^|                                                                                                        ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  Deleting directory. To avoid data corruption, DO NOT TURN OFF/UNPLUG THE COMPUTER OR TERMINATE CMD/CONHOST or RD                                 ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter: %cd:~0,2%
if not "%volumename: no label=%"=="." echo.^|  Volume label: %volumename: no label=%
if "%volumename: no label=%"=="." echo.^|  No volume label
echo.^|  Free space: %fs: =% byte(s)
echo.^|  Serial number: %serialnum%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [ ] Mouse mode ^|     Launch it    ^|
echo.^|_____________________^|____________^|_____________________^|__________________________^|___________________________^|________________^|__________________^|
rd "%ddir%" /s /q 2>nul
call :wc
goto interface

:rendir
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| ...                                      ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
echo.^|__________________________________________^|      Old name:                                                                                         ^|
echo.^| File info                                ^|      New name:                                                                                         ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Please select a file                     ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File/Directory options                   ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Delete       Rename                      ^|                                                                                                        ^|
echo.^| Copy         New folder                  ^|                                                                                                        ^|
echo.^| Cut          Change attributes           ^|                                           ^<- Page %page% -^>  
echo.^| Paste                                    ^|                                                                                                        ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  Directory rename                                                                                                                                 ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter: %cd:~0,2%
if not "%volumename: no label=%"=="." echo.^|  Volume label: %volumename: no label=%
if "%volumename: no label=%"=="." echo.^|  No volume label
echo.^|  Free space: %fs: =% byte(s)
echo.^|  Serial number: %serialnum%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [ ] Mouse mode ^|     Launch it    ^|
echo.^|_____________________^|____________^|_____________________^|__________________________^|___________________________^|________________^|__________________^|
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| ...                                      ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
echo.^|__________________________________________^|      Old name:%cdir%
set /p nname=^| File info                                ^|      New name:
cd ..
ren "%cdir%" "%nname%" 2>nul
cd "%nname%"
set adir=%cd%
set cdir=%cd%
call :wc
goto interface

:renfile
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| ...                                      ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
echo.^|__________________________________________^|      Old name:                                                                                         ^|
echo.^| File info                                ^|      New name:                                                                                         ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Please select a file                     ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File/Directory options                   ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Delete       Rename                      ^|                                                                                                        ^|
echo.^| Copy         New folder                  ^|                                                                                                        ^|
echo.^| Cut          Change attributes           ^|                                           ^<- Page %page% -^>  
echo.^| Paste                                    ^|                                                                                                        ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  Directory rename                                                                                                                                 ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter: %cd:~0,2%
if not "%volumename: no label=%"=="." echo.^|  Volume label: %volumename: no label=%
if "%volumename: no label=%"=="." echo.^|  No volume label
echo.^|  Free space: %fs: =% byte(s)
echo.^|  Serial number: %serialnum%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [ ] Mouse mode ^|     Launch it    ^|
echo.^|_____________________^|____________^|_____________________^|__________________________^|___________________________^|________________^|__________________^|
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| ...                                      ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
echo.^|__________________________________________^|      Old name:%CURR_FILE%
set /p nname=^| File info                                ^|      New name:
ren "%CURR_FILE%" "%nname%" 2>nul
set adir=%nname%
goto loadfile

:viewfile
if not exist GUI_notepad.bat goto :eof
cmd /k "%odir%\GUI_notepad.bat" %CURR_FILE%
goto :eof

:attrib
set ro=false
set ar=false
set sys=false
set hid=false
if "%sub%"=="" set sub=false
:rebib
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Xx                                       ^|                                                                                                        ^|
echo.^| - Drives                                 ^| Change attributes (%adir:~0,85%)
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
if "%ro%"=="false" echo.^|__________________________________________^| [ ] Read-only                                                                                          ^|
if "%ro%"=="true" echo.^|__________________________________________^| [X] Read-only                                                                                          ^|
if "%ar%"=="false" echo.^| Folder info                              ^| [ ] Archive                                                                                            ^|
if "%ar%"=="true" echo.^| Folder info                              ^| [X] Archive                                                                                            ^|
if "%sys%"=="false" echo.^|                                          ^| [ ] System                                                                                             ^|
if "%sys%"=="true" echo.^|                                          ^| [X] System                                                                                             ^|
if "%hid%"=="false" echo.^|                                          ^| [ ] Hidden (only affects Windows Explorer)                                                             ^|
if "%hid%"=="true" echo.^|                                          ^| [X] Hidden (only affects Windows Explorer)                                                             ^|
echo.^|                                          ^|                                                                                                        ^|
if "%sub%"=="false" echo.^|                                          ^| [ ] Process files and subfolders (folder only)                                                         ^|
if "%sub%"=="true" echo.^|                                          ^| [X] Process files and subfolders (folder only)                                                         ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File info                                ^| [Accept] [Cancel]                                                                                      ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File/Directory options                   ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  Directory rename                                                                                                                                 ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter: %cd:~0,2%
if not "%volumename: no label=%"=="." echo.^|  Volume label: %volumename: no label=%
if "%volumename: no label=%"=="." echo.^|  No volume label
echo.^|  Free space: %fs: =% byte(s)
echo.^|  Serial number: %serialnum%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                               ^| [X] Mouse mode ^|                  ^|
echo.^|_______________________________________________________________________________________________________________^|________________^|__________________^|
::insert code for mouse

for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if "%key%"=="10x46" call :changero&goto rebib
if "%key%"=="11x46" call :changear&goto rebib
if "%key%"=="12x46" call :changesys&goto rebib
if "%key%"=="13x46" call :changehid&goto rebib
if "%key%"=="15x46" call :subfolders&goto rebib
if "%key%"=="17x46" goto changeattribs
if "%key%"=="17x47" goto changeattribs
if "%key%"=="17x48" goto changeattribs
if "%key%"=="17x49" goto changeattribs
if "%key%"=="17x50" goto changeattribs
if "%key%"=="17x51" goto changeattribs
if "%key%"=="17x55" goto :eof
if "%key%"=="17x56" goto :eof
if "%key%"=="17x57" goto :eof
if "%key%"=="17x58" goto :eof
if "%key%"=="17x59" goto :eof
if "%key%"=="17x60" goto :eof
goto rebib

:changero
if "%ro%"=="true" set ro=false&goto :eof
if "%ro%"=="false" set ro=true&goto :eof
goto :eof

:changear
if "%ar%"=="true" set ar=false&goto :eof
if "%ar%"=="false" set ar=true&goto :eof
goto :eof

:changesys
if "%sys%"=="true" set sys=false&goto :eof
if "%sys%"=="false" set sys=true&goto :eof
goto :eof

:changehid
if "%hid%"=="true" set hid=false&goto :eof
if "%hid%"=="false" set hid=true&goto :eof
goto :eof

:subfolders
if "%sub%"=="true" set sub=false&goto :eof
if "%sub%"=="false" set sub=true&goto :eof
goto :eof

:changeattribs
if "%ar%"=="true" set c=+A
if "%ar%"=="false" set c=-A
if "%ro%"=="true" set c=%c% +R
if "%ro%"=="false" set c=%c% -R
if "%sys%"=="true" set c=%c% +S
if "%sys%"=="false" set c=%c% -S
if "%hid%"=="true" set c=%c% +H
if "%hid%"=="false" set c=%c% -H
if "%sub%"=="true" set c=%c% /S
if not "%file%"=="yes" attrib "%adir%" %c%
if "%file%"=="yes" attrib "%CURR_FILE%" %c%
goto :eof
:newdir
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| ...                                      ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
echo.^|__________________________________________^|      New folder name:                                                                                  ^|
echo.^| File info                                ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Please select a file                     ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File/Directory options                   ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Delete       Rename                      ^|                                                                                                        ^|
echo.^| Copy         New folder                  ^|                                                                                                        ^|
echo.^| Cut          Change attributes           ^|                                           ^<- Page %page% -^>  
echo.^| Paste                                    ^|                                                                                                        ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  Directory rename                                                                                                                                 ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter: %cd:~0,2%
if not "%volumename: no label=%"=="." echo.^|  Volume label: %volumename: no label=%
if "%volumename: no label=%"=="." echo.^|  No volume label
echo.^|  Free space: %fs: =% byte(s)
echo.^|  Serial number: %serialnum%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [ ] Mouse mode ^|     Launch it    ^|
echo.^|_____________________^|____________^|_____________________^|__________________________^|___________________________^|________________^|__________________^|
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| ...                                      ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
set /p nname=^|__________________________________________^|      New folder name:
md "%nname%"
call :wc
goto interface

:id
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if "%key%"=="19x107" goto interface
if "%key%"=="19x108" goto interface
if "%key%"=="19x87" goto remdir
if "%key%"=="19x86" goto remdir
if "%key%"=="19x85" goto remdir
goto id

:pastedir
if "%copy%"=="true" goto copydir
if "%copy%"=="false" goto copydir
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| ...                                      ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File info                                ^|                                      Error: Clipboard is empty                                         ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Please select a file                     ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File/Directory options                   ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Delete       Rename                      ^|                                                                                                        ^|
echo.^| Copy         New folder                  ^|                                                                                                        ^|
echo.^| Cut          Change attributes           ^|                                           ^<- Page %page% -^>  
echo.^| Paste                                    ^|                                                                                                        ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  Deleting directory. To avoid data corruption, DO NOT TURN OFF/UNPLUG THE COMPUTER OR TERMINATE CMD/CONHOST or RD                                 ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter: %cd:~0,2%
if not "%volumename: no label=%"=="." echo.^|  Volume label: %volumename: no label=%
if "%volumename: no label=%"=="." echo.^|  No volume label
echo.^|  Free space: %fs: =% byte(s)
echo.^|  Serial number: %serialnum%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [ ] Mouse mode ^|     Launch it    ^|
echo.^|_____________________^|____________^|_____________________^|__________________________^|___________________________^|________________^|__________________^|
bg mouse >nul
goto interface

:copydir
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| ...                                      ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File info                                ^|                                            Counting items...                                           ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Please select a file                     ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File/Directory options                   ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Delete       Rename                      ^|                                                                                                        ^|
echo.^| Copy         New folder                  ^|                                                                                                        ^|
echo.^| Cut          Change attributes           ^|                                           ^<- Page %page% -^>  
echo.^| Paste                                    ^|                                                                                                        ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  DO NOT TURN OFF/UNPLUG THE COMPUTER, CLOSE THE WINDOW OR TERMINATE ANY OF THE FOLLOWING PROCESSES: CMD, CONHOST, XCOPY, RD                       
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter: %cd:~0,2%
if not "%volumename: no label=%"=="." echo.^|  Volume label: %volumename: no label=%
if "%volumename: no label=%"=="." echo.^|  No volume label
echo.^|  Free space: %fs: =% byte(s)
echo.^|  Serial number: %serialnum%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [ ] Mouse mode ^|     Launch it    ^|
echo.^|_____________________^|____________^|_____________________^|__________________________^|___________________________^|________________^|__________________^|
if exist "%temp%\dirs.txt" del "%temp%\dirs.txt"
if exist "%temp%\db.txt" del "%temp%\db.txt"
dir "%clipboard%" /a-d /b /s >%temp%\dirs.txt
set ad=LO
set ldir=%cd%
cd %temp%
For /f %%j in ('Find "" /v /c ^< dirs.txt') Do Set /a lc=%%j
cd %ldir%
:fmloop
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| %time:~0,8%                                                                                                                       
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| ...                                      ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
if "%copy%"=="true" echo.^| File info                                ^|                              Please wait: Copying operation in progress....                            ^|
if "%copy%"=="false" echo.^| File info                                ^|                              Please wait: Moving operation in progress....                             ^|
echo.^|                                          ^|                                                                                                        ^|
if %AD% GTR 97 echo.^| Please select a file                     ^|                              [лллллллллллллллллллл] %AD%%%                                                &goto yall
if %AD% GEQ 95 echo.^| Please select a file                     ^|                              [ллллллллллллллллллл ] %AD%%%                                                &goto yall
if %AD% GEQ 90 echo.^| Please select a file                     ^|                              [лллллллллллллллллл  ] %AD%%%                                                &goto yall
if %AD% GEQ 85 echo.^| Please select a file                     ^|                              [ллллллллллллллллл   ] %AD%%%                                                &goto yall
if %AD% GEQ 80 echo.^| Please select a file                     ^|                              [лллллллллллллллл    ] %AD%%%                                                &goto yall
if %AD% GEQ 75 echo.^| Please select a file                     ^|                              [ллллллллллллллл     ] %AD%%%                                                &goto yall
if %AD% GEQ 70 echo.^| Please select a file                     ^|                              [лллллллллллллл      ] %AD%%%                                                &goto yall
if %AD% GEQ 65 echo.^| Please select a file                     ^|                              [ллллллллллллл       ] %AD%%%                                                &goto yall
if %AD% GEQ 60 echo.^| Please select a file                     ^|                              [лллллллллллл        ] %AD%%%                                                &goto yall
if %AD% GEQ 55 echo.^| Please select a file                     ^|                              [ллллллллллл         ] %AD%%%                                                &goto yall
if %AD% GEQ 50 echo.^| Please select a file                     ^|                              [лллллллллл          ] %AD%%%                                                &goto yall
if %AD% GEQ 45 echo.^| Please select a file                     ^|                              [ллллллллл           ] %AD%%%                                                &goto yall
if %AD% GEQ 40 echo.^| Please select a file                     ^|                              [лллллллл            ] %AD%%%                                                &goto yall
if %AD% GEQ 35 echo.^| Please select a file                     ^|                              [ллллллл             ] %AD%%%                                                &goto yall
if %AD% GEQ 30 echo.^| Please select a file                     ^|                              [лллллл              ] %AD%%%                                                &goto yall
if %AD% GEQ 25 echo.^| Please select a file                     ^|                              [ллллл               ] %AD%%%                                                &goto yall
if %AD% GEQ 20 echo.^| Please select a file                     ^|                              [лллл                ] %AD%%%                                                &goto yall
if %AD% GEQ 15 echo.^| Please select a file                     ^|                              [ллл                 ] %AD%%%                                                &goto yall
if %AD% GEQ 10 echo.^| Please select a file                     ^|                              [лл                  ] %AD%%%                                                &goto yall
if %AD% GEQ 5 echo.^| Please select a file                     ^|                              [л                   ] %AD%%%                                                &goto yall
if %AD% LSS 5 echo.^| Please select a file                     ^|                              [                    ] %AD%%%                                                &goto yall
:yall
if "%AD%"=="LO" set /a ad=0&goto skpcheck
if %AD% GTR 99 goto finishcount
::bg _kbd
::set key=%errorlevel%
::if not "%errorlevel%"=="0" goto finishcount
if not "%ad%"=="LO" goto skipcount
:skpcheck
start /b xcopy "%clipboard%" "%cd%" /e /c /h /s /r /k /y >%temp%\db.txt
goto skipcount
:skipcount
set _File=db.txt
set ldir=%cd%
cd %temp%
For /f %%j in ('Find "" /v /c ^< db.txt') Do Set /a fc=%%j
cd %ldir%
set cdir=%cd% 
set /a AD=%fc%*100/%lc%
title Copying files (%fc%/%lc%)
goto fmloop
:finishcount
if "%copy%"=="false" title Deleting original directory&rd "%clipboard%" /s /q >nul
call :wc
goto interface

:pastefile
if "%copy%"=="true" goto copyfile
if "%copy%"=="false" goto copyfile
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| ...                                      ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File info                                ^|                                      Error: Clipboard is empty                                         ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Please select a file                     ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File/Directory options                   ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Delete       Rename                      ^|                                                                                                        ^|
echo.^| Copy         New folder                  ^|                                                                                                        ^|
echo.^| Cut          Change attributes           ^|                                           ^<- Page %page% -^>  
echo.^| Paste                                    ^|                                                                                                        ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  Deleting directory. To avoid data corruption, DO NOT TURN OFF/UNPLUG THE COMPUTER OR TERMINATE CMD/CONHOST or RD                                 ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter: %cd:~0,2%
if not "%volumename: no label=%"=="." echo.^|  Volume label: %volumename: no label=%
if "%volumename: no label=%"=="." echo.^|  No volume label
echo.^|  Free space: %fs: =% byte(s)
echo.^|  Serial number: %serialnum%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [ ] Mouse mode ^|     Launch it    ^|
echo.^|_____________________^|____________^|_____________________^|__________________________^|___________________________^|________________^|__________________^|
bg mouse >nul
goto interface

:copyfile
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| %time:~0,8%                                                                                                                       
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| ...                                      ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
if "%copy%"=="true" echo.^| File info                                ^|                              Please wait: Copying operation in progress....                            ^|
if "%copy%"=="false" echo.^| File info                                ^|                              Please wait: Moving operation in progress....                            ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Please select a file                     ^|                                                                                                       &goto yall
copy "%clipboard%" "%cdir%" /Y >NUL
if "%copy%"=="false" del "%clipboard%" >nul
call :wc
goto interface

:remdir
set ddir=%cd%
cd ..
set adir=%cd%
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| ...                                      ^|                                                                                                        ^|
echo.^| - Drives                                 ^|                                                                                                        ^|
echo.^| - User folder                            ^|                                                                                                        ^|
echo.^| - Recycle Bin                            ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| Folder info                              ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Location:                                ^|                                                                                                        ^|
echo.^| Size:                                    ^|                                                                                                        ^|
echo.^| Attributes:                              ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File info                                ^|                                      The directory is being erased...                                  ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Please select a file                     ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^|__________________________________________^|                                                                                                        ^|
echo.^| File/Directory options                   ^|                                                                                                        ^|
echo.^|                                          ^|                                                                                                        ^|
echo.^| Delete       Rename                      ^|                                                                                                        ^|
echo.^| Copy         New folder                  ^|                                                                                                        ^|
echo.^| Cut          Change attributes           ^|                                           ^<- Page %page% -^>  
echo.^| Paste                                    ^|                                                                                                        ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  Deleting directory. To avoid data corruption, DO NOT TURN OFF/UNPLUG THE COMPUTER OR TERMINATE CMD/CONHOST or RD                                 ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter: %cd:~0,2%
if not "%volumename: no label=%"=="." echo.^|  Volume label: %volumename: no label=%
if "%volumename: no label=%"=="." echo.^|  No volume label
echo.^|  Free space: %fs: =% byte(s)
echo.^|  Serial number: %serialnum%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [ ] Mouse mode ^|     Launch it    ^|
echo.^|_____________________^|____________^|_____________________^|__________________________^|___________________________^|________________^|__________________^|
rd "%ddir%" /s /q 2>nul
call :wc
goto interface

:clinehelp
echo.
echo GUI_filemanager [folder name] [/drives]
echo.
echo folder name - Specifies the folder name, GUI filemanager will
echo navigate to upon launch
echo.
echo /drives - Displays drives instead of current directory
echo.
echo./? - Displays command line help
echo.
echo./noshow - Disables splash screen
echo.
echo Executing GUI_filemanager without any arguments
echo will load the full interface in current directory.
echo.
goto :eof

:basichlp
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager - Basic help                                                                                                                         ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^| Basic help                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^| Files and directories                                                                                                                             ^|
echo.^|                                                                                                                                                   ^|
echo.^| Directories are home to your files. They are pretty much folders and they can store a lot of files. Files are your data. Things like documents,   ^|
echo.^| multimedia and a lot more. In File manager, there are 30 files and/or directories per page. You can use arrows (^<- and -^>) to scroll between    ^|
echo.^| pages. If you get past the last page, you'll be back at the first page and vice versa. At the left hand side, you can see information about the   ^|
echo.^| folder and file, if selected. To see file information, just click on a file (ones that don't have word DIR on them). Clicking on a directory      ^|
echo.^| (ones that do have word DIR on them) will open that directory.                                                                                    ^|
echo.^|                                                                                                                                                   ^|
echo.^| File and directory options                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^| When you have selected a file or you're in a directory, you can select from many options. These options include delete, rename, copy, cut, paste  ^|
echo.^| new folder, view file, change attributes. When you select delete, the file or a directory will be deleted forever. It will not be moved to the    ^|
echo.^| Recycle Bin. Rename simply allows you to change the name of a file or directory. Cut and copy will add current file or directory to the clipboard.^|
echo.^| Paste allows you to cut a file/directory (moves it to a different location) or copy a file/directory (makes a copy of the original file). New     ^|
echo.^| Folder allows you to make a directory with a desired name. View file allows you to view selected file in GUI notepad (you must have               ^|
echo.^| GUI_notepad.bat in the launch directory of the file manager). Changing attributes allows you to mark a file or a directory as hidden, archived,   ^|
echo.^| read-only or system.                                                                                                                              ^|
echo.^|                                                                                                                                                   ^|
echo.^| Quick folders                                                                                                                                     ^|
echo.^|                                                                                                                                                   ^|
echo.^| Quick folders allow you to navigate quickly to the user folder or see all drives (internal/external drives, optical media, floppy disks and more) ^|
echo.^| The _ symbol allows you to navigate to upper directory (e.g. directory up from C:\ice\banana is C:\ice)                                          ^|
echo.^|                                                                                                                                                   ^|
echo.^| The menu at the bottom                                                                                                                            ^|
echo.^|                                                                                                                                                   ^|
echo.^| This menu contains useful tools. The menu at the bottom includes about, basic help (you are here), command line help (power users), open in       ^|
echo.^| Windows(TM) explorer (opens current directory in normal Windows(TM) file browser), start command prompt here (starts command prompt in current    ^|
echo.^| folder), mouse mode (indicates if you can use mouse as an input) and launch it (starts selected file as a process)                                ^|
echo.^|                                                                                                                                                   ^|
echo.^|                                                                                                                                                   ^|
echo.^|                                                                                                                                                   ^|
echo.^| Page 1/2                                                                                                                                          ^|
echo.^| Click anywhere to continue...                                                                                                                     ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
bg mouse >nul
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager - Basic help                                                                 The close button (not functional in help page) -----^> X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory: %cdir:~0,126%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^| Basic help                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^| Disc info                                                                                                                                         ^|
echo.^|                                                                                                                                                   ^|
echo.^| This is a section on the bottom, that allows you to see drive letter, volume label (what it is called in My Computer in normal Windows(TM)        ^|
echo.^| Explorer), free space and serial number (number that is used to identify your drive)                                                              ^|
echo.^|                                                                                                                                                   ^|
echo.^| Infromation section                                                                                                                               ^|
echo.^|                                                                                                                                                   ^|
echo.^| This is a section just above the disk info. It basically tells you, what you can do or what the file manager is doing right now.                  ^|
echo.^|                                                                                                                                                   ^|
echo.^| Quitting the file manager                                                                                                                         ^|
echo.^|                                                                                                                                                   ^|
echo.^| To quit file manager, just press the X at the upper right corner. You can also use normal close button or ^C, both of which won't cause any harm. ^|
echo.^|                                                                                                                                                   ^|
echo.^| I found a glitch. What should I do?                                                                                                               ^|
echo.^|                                                                                                                                                   ^|
echo.^| Report specific details of the glitch to me using private message on YouTube. By specific details I mean the following: what does the glitch do,  ^|
echo.^| why did it happen (if you know), when did it happen (what did you do), how did you resolve it, if you did, possible fixes (if you know any).      ^|
echo.^|                                                                                                                                                   ^|
echo.^| What does the about section tell about the file manager?                                                                                          ^|
echo.^|                                                                                                                                                   ^|
echo.^| It shows the author (created by), who you must credit, if you used parts or all of this batch file on your own project. It also shows you the     ^|
echo.^| codename, which is basically a nickname during development. It shows the revision, which means how many times batch file is being modified and    ^|
echo.^| overwritten. And finally, it shows the software used to create it.                                                                                ^|
echo.^|                                                                                                                                                   ^|
echo.^| I have a question, but I don't see the answer in the help                                                                                         ^|
echo.^|                                                                                                                                                   ^|
echo.^| As this is just basic help, it won't tell you everything. In case you have undocumented issue or just want to know more about this batch file in  ^|
echo.^| general, you can always comment or PM me on YouTube.                                                                                              ^|
echo.^|                                                                                                                                                   ^|
echo.^| PM stands for Private Message (in case you didn't know)                                                                                           ^|
echo.^|                                                                                                                                                   ^|
echo.^| Page 2/2                                                                                                                                          ^|
echo.^| Click anywhere to continue...                                                                                                                     ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
bg mouse >nul
goto endloop

:changedir
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| Current directory:                                                                                                                                ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| ...                                      ^|
echo.^| - Drives                                 ^|
echo.^| - User folder                            ^|
echo.^| - Recycle Bin                            ^|
echo.^|__________________________________________^|
echo.^| Folder info                              ^|
echo.^|                                          ^|
echo.^| Location:                                ^|
echo.^| Size:                                    ^|
echo.^| Attributes:                              ^|
echo.^|__________________________________________^|
echo.^| File info                                ^|
echo.^|                                          ^|
echo.^| Please select a file                     ^|
echo.^|                                          ^|
echo.^|                                          ^|
echo.^|                                          ^|
echo.^|__________________________________________^|
echo.^| File/Directory options                   ^|
echo.^|                                          ^|
echo.^| Delete       Rename                      ^|
echo.^| Copy         New folder                  ^|
echo.^| Cut          Change attributes           ^|                                           ^<- Page %page% -^>  
echo.^| Paste                                    ^|
echo.^|__________________________________________^|________________________________________________________________________________________________________^|
echo.^|  Please enter the name of a directory you want to navigate to...                                                                                  ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^|                                                                                                                                                   ^|
echo.^|  Disk info                                                                                                                                        ^|
echo.^|                                                                                                                                                   ^|
echo.^|  Drive letter: %cd:~0,2%
if not "%volumename: no label=%"=="." echo.^|  Volume label: %volumename: no label=%
if "%volumename: no label=%"=="." echo.^|  No volume label
echo.^|  Free space: %fs: =% byte(s)
echo.^|  Serial number: %serialnum%
echo.^|___________________________________________________________________________________________________________________________________________________^|
echo.^| About this program  ^| Basic help ^| Command line usuage ^| Open in Windows Explorer ^| Start command prompt here ^| [ ] Mouse mode ^|     Launch it    ^|
echo.^|_____________________^|____________^|_____________________^|__________________________^|___________________________^|________________^|__________________^|
echo %tab%%bck% 2>nul&set /p=<nul
echo. ___________________________________________________________________________________________________________________________________________________ 
echo.^|                                                                                                                                                   ^|
echo.^| File manager                                                                                                                                    X ^|
echo.^|___________________________________________________________________________________________________________________________________________________^|
set /p cdir=^| Current directory:
%cdir:~0,2%
cd %cdir%
call :wc
goto interface


:panic
color 0b
ping localhost -n 2 >nul
color b0
ping localhost -n 2 >nul
color 0b
ping localhost -n 2 >nul
color b0
ping localhost -n 2 >nul
color 0b
ping localhost -n 2 >nul
color b0
ping localhost -n 2 >nul
color 0b
ping localhost -n 2 >nul
color b0
ping localhost -n 2 >nul
color 0b
ping localhost -n 2 >nul
color b0
ping localhost -n 2 >nul
echo PANIC: BG.EXE not found in accessible %%PATH%%
ping localhost -n 5 >nul
goto :eof
