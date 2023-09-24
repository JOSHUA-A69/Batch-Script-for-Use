@echo off

:loop
REM Prompt the user to enter a directory path
set /p "dirpath=Enter directory path, or type 'exit' to quit: "

REM Check if the user wants to exit
if /i "%dirpath%"=="exit" (
    exit /b 0
)

REM Change to the specified directory
cd /d "%dirpath%" || (
    REM If the directory cannot be accessed, display an error message and pause
    echo Invalid directory path: "%dirpath%"
    pause
    REM Return to the beginning of the loop
    goto loop
)

REM List the contents of the directory
dir

REM Repeat the loop
goto loop

