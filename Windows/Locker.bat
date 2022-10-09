cls
@ECHO OFF
title Mansu locker
mode con: cols=150 lines=40
:A
color a
:Menu
echo ----------------"wollcome to My locker"---------------------
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST MyFolder goto MD MyFolder
:MD MyFolder
md MyFolder
echo MyFolder created successfully
:CONFIRM
color 6
echo if press (Y) it lock your folder. if press (N) it not lock your folder.(Y/N)
set/p "cho=>"
if %cho%==y goto LOCK
if %cho%==Y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo :Invalid choice.
echo :Plise choice Valid key.
goto CONFIRM
:LOCK
ren MyFolder "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
MSG "%username%" "Hi! %username% Your Folder locked"
goto End
:UNLOCK
color 7
echo Enter password to Unlock Your Secure Folder
set/p "pass=>"
if NOT %pass%== ***** goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" MyFolder
echo Folder Unlocked successfully
MSG "%username%" "Hi! %username% Your Folder Unlocked successfully"
goto End
:FAIL
color 6
echo :Invalid password.
echo :Plise Enter Valid password to Unlock Your Secure Folder.
set/p "pass=>"
if NOT %pass%== ***** goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" MyFolder
echo Folder Unlocked successfully
MSG "%username%" "Hi! %username% Your Folder Unlocked successfully"
goto End
:End
 end