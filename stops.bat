@rem //-- Author: Daniel Romischer (daniel@romischer.com)
@echo off

goto :start

:Usage
echo Stops a specified System Service
echo.
echo    Syntax:  stops [service]
echo.
echo		Avail. Services:
echo.
echo		IIS	- Stops all IIS components IIS, IIS ADMIN, and SMTP
echo.
echo		Jrun	- Stops all CF components and Jrun
echo.
echo		SQL	- Stops all SQL components (incl. Agent)
echo.
echo		MySQL	- Stops all MySQL components
echo.
echo		SQLexpress	- Stops the SQLexpress 2005 DB
echo.
echo		WinProxy	- Stops the WinProxy Service
echo.
echo    Example:	stops iis
echo.
goto :Exit

:IIS
net stop "World Wide Web Publishing"
net stop "Simple Mail Transfer Protocol (SMTP)"
net stop "IIS Admin"
goto :Exit

:Jrun
net stop "Macromedia Jrun Default Server"
net stop "Macromedia Jrun Admin Server"
net stop "Macromedia Jrun CFusion Server"
goto :Exit

:SQL
net stop "MSSQL$GURU"
net stop "SQLAgent$Guru"
REM net stop "MSSQLServerADHelper"
goto :Exit

:SQLexpress
net stop "SQL Server (SQLEXPRESS)"
goto :Exit

:WinProxy
net stop "WinProxy"
goto :Exit


:start
if (%1)==() Goto :Usage
if (%1)==(IIS) goto :IIS
if (%1)==(Jrun) goto :Jrun
if (%1)==(SQL) goto :SQL
if (%1)==(SQLexpress) goto :Jrun
if (%1)==(WinProxy) goto :WinProxy

:Exit
