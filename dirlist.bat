@echo off & setlocal ENABLEEXTENSIONS
for /f "tokens=*" %%a in ('dir/w/s %1 ^|findstr "File(s) Directory AM PM"') do (
echo Directory %1 - %%a
)