Dim objShell
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run "cmd /c if exist file.txt (echo File Found && pause) else (echo No File Found && pause)"