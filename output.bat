@rem //-- Author: Daniel Romischer (daniel@romischer.com)
@echo off

goto :start

:Usage
echo Types out specified textfiles in a specified directory to stdout
echo.
echo    Syntax:  output "drive:path" filename [YES ^| NO]
echo.
echo    Param:       Description:
echo.
echo     -1          The absolute path to drive and directory that
echo                 you want to scan.
echo.
echo     -2          Filename, or File criterion such as *.exe
echo.
echo     -3          YES or NO to indicate you want to have the Directory
echo 		and the sub-directories searched			
echo.
echo    Example: 
echo			output "c:\documents and settings\" *.reg YES 
echo			output "c:\MSSQL\" sql*.sql NO    
echo.
goto :Exit


:openfile
echo.
echo ....................................................................
echo %1 %2 %3 %4 %5 %6 %7 %8 %9
echo ....................................................................
echo.
type "%1 %2 %3 %4 %5 %6 %7 %8 %9" 
goto :exit 


:include
dir %2 /b /s > _tfiles_
goto :startLOOP

:notinclude
dir %2 /b > _tfiles_
goto :startLOOP

:start

if (%1)==() Goto :Usage
if (%2)==() Goto :Usage
if (%3)==() Goto :Usage


cd /d "%1"

if %3==YES Goto :include
if %3==NO Goto :notinclude

:startLOOP
for /f "tokens=*" %%p in (_tfiles_) do call :openfile %%p

del "%1_tfiles_"

:exit