@rem //-- Author: Daniel Romischer (daniel@romischer.com)
@echo off

goto :start

:Usage
echo Starts a specified System Service
echo.
echo    Syntax:  starts [service]
echo.
echo		Avail. Services:
echo.
echo		IIS	- Starts all IIS components IIS, IIS ADMIN, and SMTP
echo.
echo		Jrun	- Starts all CF components and Jrun
echo.
echo		SQL	- Starts all SQL components (incl. Agent)
echo.
echo		SQLexpress	- Start the SQLexpress 2005 DB
echo.
echo		WinProxy	- Start the WinProxy Service
echo.
echo    Example:	starts IIS
echo.
goto :Exit

:IIS
net start "World Wide Web Publishing"
net start "Simple Mail Transfer Protocol (SMTP)"
net start "IIS Admin"
goto :Exit

:Jrun
net start "Macromedia Jrun Default Server"
net start "Macromedia Jrun Admin Server"
net start "Macromedia Jrun CFusion Server"
goto :Exit

:SQL
net start "MSSQL$GURU"
net start "SQLAgent$Guru"
REM net start "MSSQLServerADHelper"
goto :Exit

:SQLexpress
net start "SQL Server (SQLEXPRESS)"
goto :Exit

:WinProxy
net start "WinProxy"
goto :Exit


:start
if (%1)==() Goto :Usage
if (%1)==(IIS) goto :IIS
if (%1)==(Jrun) goto :Jrun
if (%1)==(SQL) goto :SQL
if (%1)==(SQLexpress) goto :SQLexpress
if (%1)==(WinProxy) goto :WinProxy

:Exit