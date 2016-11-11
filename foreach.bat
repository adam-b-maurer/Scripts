@rem //-- Author: Daniel Romischer (daniel@romischer.com)
@echo off

goto :start

:Usage
echo Iterates thru a set of files in the current path and executes a custom command on them
echo.
echo    Syntax:  foreach [filetype] [command]
echo.
echo    Example:	foreach doc delete
echo				foreach txt type
echo.
goto :Exit

:foreach
for /r %x in (*.%1) do %2  %x %3 %4 %5 %6 %7
goto :Exit

:start
if (%1)==() Goto :Usage
if (%2)==() Goto :Usage

goto :foreach
:Exit