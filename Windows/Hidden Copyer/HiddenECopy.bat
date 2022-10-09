
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

%Backupcmd% "E:\*.xlsx" "%drive%\Backup\E\*.xlsx"
%Backupcmd% "E:\*.docx" "%drive%\Backup\E\*.docx"
%Backupcmd% "E:\*.doc" "%drive%\Backup\E\*.*"
%Backupcmd% "E:\*.pdf" "%drive%\Backup\E\*.*"
%Backupcmd% "E:\*.text" "%drive%\Backup\E\*.*"
%Backupcmd% "E:\*.txt" "%drive%\Backup\E\*.*"
exit