@echo off
REM This is a subroutine example in a batch file

REM Main script
echo Starting main script...
call :MySubroutine
echo Back in main script...
goto :EOF

:MySubroutine
echo This is the subroutine.
REM Add your subroutine logic here
goto :EOF