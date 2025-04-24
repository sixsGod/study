@echo off
:: Simple computation script

:: Prompt user for two numbers
set /p num1=Enter the first number: 
set /p num2=Enter the second number: 

:: Perform addition, subtraction, multiplication, and division
set /a sum=num1 + num2
set /a diff=num1 - num2
set /a prod=num1 * num2

:: Check for division by zero
if %num2%==0 (
    echo Division by zero is not allowed.
    set div=undefined
) else (
    set /a div=num1 / num2
)

:: Display results
echo.
echo Results:
echo Sum: %sum%
echo Difference: %diff%
echo Product: %prod%
if "%div%"=="undefined" (
    echo Division: %div%
) else (
    echo Division: %div%
)

pause