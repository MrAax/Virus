
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
%Backupcmd% "D:\*.xlsx" "%drive%\Backup\D\*.xlsx"
%Backupcmd% "D:\*.docx" "%drive%\Backup\D\*.docx"
%Backupcmd% "D:\*.doc" "%drive%\Backup\D\*.*"
%Backupcmd% "D:\*.pdf" "%drive%\Backup\D\*.*"
%Backupcmd% "D:\*.text" "%drive%\Backup\D\*.*"
%Backupcmd% "D:\*.txt" "%drive%\Backup\D\*.*"
::%Backupcmd% "D:\*.jpg" "%drive%\Backup\D\Pictures\*.jpg" 
::%Backupcmd% "D:\*.jpeg" "%drive%\Backup\D\Pictures\*.jpeg" 
::%Backupcmd% "D:\*.png" "%drive%\Backup\D\Pictures\*.png" 
::%Backupcmd% "D:\*.mp4" "%drive%\Backup\D\Videos\*.mp4" 
::%Backupcmd% "D:\*.wmv" "%drive%\Backup\D\Videos\*.wmv"
exit