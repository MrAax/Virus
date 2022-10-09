cls
@echo off
color a
title Mansu Drive Cliner 1.0.0.10
IF DEFINED ProgramFiles(x86) (
 goto M64
) ELSE (
 goto M32
)

:M64
 echo This is a x64 system
 SET TARGET_PATH=%ProgramFiles(x86)%
 SET COMMON=%CommonProgramFiles(x86)%
 SET T=%Temp%
 SET W=%Systemroot%
 goto CONFIRM

:M32
 echo This is a x86 system
 SET TARGET_PATH=%ProgramFiles%
 SET COMMON=%CommonProgramFiles%
 SET T=%Temp%
 SET W=%Systemroot%
 goto CONFIRM
 
:CONFIRM

set /p cho=Enter a wich Drive to scan:
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
if %cho%==cls goto cls
if %cho%==CLS goto cls
if %cho%==FORMAT goto Format
if %cho%==format goto Format
if %cho%==RESTART goto Restart
if %cho%==restart goto Restart
if %cho%==command goto command
if %cho%==COMMAND goto command
if %cho%==ip goto ip 
IF %cho%==IP GOTO ip
if %cho%==ping goto ping
if %cho%==PING goto ping
if %cho%==copy goto copy
if %cho%==end goto end
if %cho%==END goto end
echo :Invalid choice. Plise choice Valid key.
goto CONFIRM
:ip
ipconfig /all
netstat
pause >nul
goto CONFIRM
:ping
ping www.google.com
ping ""

pause >nul
goto CONFIRM
:cls
cls 
goto CONFIRM
:command
 start cmd
cls
goto end
:copy
copy *.doc A: *.%0 %1 %2
pause >nul
goto CONFIRM
:c
c:
 
echo Deleting from target folder...
del C:\DOCUME~1\%username%\LOCALS~1\Temp\*.* /q /s
rd %W%\prefetch\*.* /q /s
del %W%\prefetch\*.* /q /s
del C:\DOCUME~1\%username%\LOCALS~1\Temp\*.* /q /s
del C:\Users\%username%\AppData\Local\Temp\*.* /q /s
rd %T%\ 
del %T%\*.* /q /s
date /t
time /t
timeout 10
MSG "%username%" "Hi! %username% Your junk file is clene!"
goto CONFIRM
:d 
d:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:e 
e:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:f 
f:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!" 
:g 
g:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
del /*.db
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:h
h:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:i 
i:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:j
j:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:k
k:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:l 
l:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:m 
m:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:n
n:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:o
o:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:p
p:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:q
q:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:r 
r:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:s 
s:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:t 
t:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:u 
u:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:v 
v:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:w 
w:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:x
x:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:y
y:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"
:z
z:
attrib -s -h -r /s /d
del *.bat 
del *.vba 
del *.inf 
del *.dll 
del *.sys 
goto CONFIRM
MSG "%username%" "Hi! %username% Your junk file is clene!"

:Format
set /p a=Enter a Wich Drive to Format:
format %%a: /u /c /A:size
del /q *.* 
for /f "Tokens=*" %%G in ('dir /B') do rd /s /q "%%G"
popd 
goto CONFIRM
:Restart
SHUTDOWN -s -t 5
goto CONFIRM
:end
end
