@echo off
setlocal enabledelayedexpansion

:: Define an array
set array[0]=Apple
set array[1]=Banana
set array[2]=Cherry
set array[3]=Date

:: Get the size of the array
set arraySize=4

:: Loop through the array and display its elements
for /L %%i in (0,1,%arraySize%-1) do (
    echo Element %%i: !array[%%i]!
)

pause