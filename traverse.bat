@rem //-- Author: Daniel Romischer (daniel@romischer.com)
@echo off

goto :start

:traverse
dir *%1* /s
goto :Exit

:Usage
echo Traverses the directory incl. subdirectories for a specific
echo search term
echo.
echo.
echo    Syntax:  traverse [Searchterm]
echo.
echo    Example:	
echo.	cd [foldername]
echo.	traverse .dll
echo.
goto :Exit

:start
if (%1)==() Goto :Usage
goto :traverse

:Exit