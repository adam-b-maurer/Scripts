@rem //-- Author: Daniel Romischer (daniel@romischer.com)
@echo off

goto :start

:Usage
echo Custom display for files
echo.
echo.
echo.
echo.
echo.
echo    Example:	files -all
echo.
goto :Exit

:all
dir %2 /a-d /s
goto :Exit


:start
if (%1)==(/?) Goto :Usage
if (%1)==(-all) goto :all

dir /w /a-d |more

:Exit


