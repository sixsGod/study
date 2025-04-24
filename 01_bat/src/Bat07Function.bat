@echo off
:: Define a function
:MyFunction
echo This is a function in a batch script.
:: Exit the function
goto :eof

:: Call the function
call :MyFunction

:: End of script
exit /b