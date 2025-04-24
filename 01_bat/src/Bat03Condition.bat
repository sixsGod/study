@echo off

:: Example of using conditions in a batch file

set /p input="Enter a number: "

if %input% LSS 10 (
    echo The number is less than 10.
) else if %input% EQU 10 (
    echo The number is equal to 10.
) else (
    echo The number is greater than 10.
)

pause