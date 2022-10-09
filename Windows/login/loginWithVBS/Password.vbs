Dim objShell
Set objShell = WScript.CreateObject("WScript.Shell")
a=inputbox("Enter your Password: ")
if a="password" then 
objShell.Run "loginMaster.bat /c if exist file.txt (echo File Found && pause) else (echo No File Found && pause)"
'msgbox "login"
else
msgbox "You enter wrong Password!"

end if



