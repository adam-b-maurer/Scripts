@rem //-- Author: Daniel Romischer (daniel@romischer.com)
@echo off

goto :start

:attrib
attrib +r /s /d
goto :Exit

:Usage
echo Marks all files in folder and sub-folders as Read-Only
echo Execute inside the folder you wish to make only read-only
echo.
echo.
echo    Syntax:  mark -all
echo.
echo    Example:	
echo.	cd [foldername]
echo.	mark -all
echo.
goto :Exit

:start
if (%1)==() Goto :Usage
if (%1)==(-all) goto :attrib

:Exit