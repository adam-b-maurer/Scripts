@rem //-- Author: Daniel Romischer (daniel@romischer.com)
@echo off

goto :start

:Usage
echo.
echo    Syntax:  mdir [type] Dirname
echo.
echo		Avail. Types:
echo.
echo		BigRock	- Creates another big rock - Small Project/Research
echo.
echo		Legal	- Creates A Legal Directory Structure
echo.
echo		Project	- Creates a New projects - Bioinformatics
echo.
echo		StartMenu - Creates Common Folder structure in '\All Users'
echo.
echo    Example:	mdir BigRock SomeDirName
echo.
goto :Exit

:BigRock
mkdir %2
cd %2
mkdir eBooks
mkdir Software
mkdir Notes
mkdir Websites
mkdir Samples
cd..
goto :Exit

:Legal
mkdir %2
cd %2
mkdir "A, automobil Records"
mkdir "B, bank Records"
mkdir "C, budget"
mkdir "D, Credit Cards"
mkdir "E, dental Records"
mkdir "F, expenses"
mkdir "G, income"
mkdir "H, insurance"
mkdir "IJ, investments"
mkdir "K, legal"
mkdir "L, loans"
mkdir "M, medical Records"
mkdir "N, morgage/rent"
mkdir "O, personal"
mkdir "PQ, real estate"
mkdir "R, receipts"
mkdir "S, school"
mkdir "T, taxes"
mkdir "UV, utilities"
mkdir "W, warranties"
mkdir "XYZ, year end"
cd..
goto :Exit

:Project
mkdir %2
cd %2
mkdir Data
mkdir Graphics
mkdir Text
mkdir Programs
mkdir Notes
mkdir Websites

cd Data
mkdir Result
mkdir Sequences
mkdir Structures
mkdir TestCases
cd..

cd Text
mkdir Notebook
mkdir Reports
mkdir Email
cd..

cd Programs
mkdir Source
mkdir Scripts
mkdir Bin
cd..
cd..
goto :Exit

:StartMenu
::Start Menu Folders
mkdir "c:\Documents and Settings\All Users\Start Menu\Internet Utils"
mkdir "c:\Documents and Settings\All Users\Start Menu\Players"
mkdir "c:\Documents and Settings\All Users\Start Menu\Readers"
mkdir "c:\Documents and Settings\All Users\Start Menu\Utilites"

::Program Folders
mkdir "c:\Documents and Settings\All Users\Start Menu\Programs\Graphic Studio"
mkdir "c:\Documents and Settings\All Users\Start Menu\Programs\Office"
mkdir "c:\Documents and Settings\All Users\Start Menu\Programs\Developer Tools"
mkdir "c:\Documents and Settings\All Users\Start Menu\Programs\Workshops & Tutorials & Forms"
mkdir "c:\Documents and Settings\All Users\Start Menu\Programs\System Tools"
mkdir "c:\Documents and Settings\All Users\Start Menu\Programs\Office"
mkdir "c:\Documents and Settings\All Users\Start Menu\Programs\Games"
mkdir "c:\Documents and Settings\All Users\Start Menu\Programs\Trialware & Temporary Folders"
goto :Exit

:start
if (%1)==() Goto :Usage
if (%1)==(BigRock) goto :BigRock
if (%1)==(Legal) goto :Legal
if (%1)==(Project) goto :Project
if (%1)==(StartMenu) goto :StartMenu

:Exit