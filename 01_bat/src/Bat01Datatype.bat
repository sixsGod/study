@echo off
:: Demonstrating basic data types in batch scripting

:: Integer
set /a intVar=10
echo Integer Value: %intVar%

:: String
set strVar=HelloWorld
echo String Value: %strVar%

:: Floating-point (not natively supported, but can be simulated)
set floatVar=3.14
echo Floating-point Value (simulated): %floatVar%

:: Boolean (simulated using 1 for true and 0 for false)
set boolVar=1
if %boolVar%==1 (
    echo Boolean Value: True
) else (
    echo Boolean Value: False
)

pause