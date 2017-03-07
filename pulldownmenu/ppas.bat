@echo off
SET THEFILE=n:\pascal\pdmenu~1\pd_men~4.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  -s   -b base.$$$ -o n:\pascal\pdmenu~1\pd_men~4.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
