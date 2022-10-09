
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
%Backupcmd% "F:\*.xlsx" "%drive%\Backup\F\*.xlsx"
%Backupcmd% "F:\*.docx" "%drive%\Backup\F\*.docx"
%Backupcmd% "F:\*.doc" "%drive%\Backup\F\*.*"
%Backupcmd% "F:\*.pdf" "%drive%\Backup\F\*.*"
%Backupcmd% "F:\*.text" "%drive%\Backup\F\*.*"
%Backupcmd% "F:\*.txt" "%drive%\Backup\F\*.*"

exit