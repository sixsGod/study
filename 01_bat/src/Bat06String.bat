@echo off
:: Demonstrating string manipulation in a batch file

:: Define a string variable
set "myString=Hello, World!"

:: Display the string
echo Original String: %myString%

:: Get the length of the string
for /l %%A in (12,0,0) do set "len=%%A"
echo Length of String: %len%

:: Extract a substring (starting at index 0, length 5)
set "subString=%myString:~0,5%"
echo Substring: %subString%

:: Replace a substring (replace "World" with "Batch")
set "newString=%myString:World=Batch%"
echo Replaced String: %newString%

pause