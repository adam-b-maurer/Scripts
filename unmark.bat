@rem //-- Author: Daniel Romischer (daniel@romischer.com)
@echo off

goto :start

:attrib
attrib -r /s /d
goto :Exit

:Usage
echo Marks all files in folder and sub-folders as Writeable (clears Read-Only)
echo Execute inside the folder you wish to make writable
echo.
echo.
echo    Syntax:  unmark -all
echo.
echo    Example:	
echo.	cd [foldername]
echo.	unmark -all
echo.
goto :Exit

:start
if (%1)==() Goto :Usage
if (%1)==(-all) goto :attrib

:Exit