@echo off

:menu
cls
echo +----------------------------------+
echo ^|        WELCOME TO MY MENU        ^|
echo +----------------------------------+
echo ^| 1. Check Disk Space              ^|
echo ^| 2. Select File                   ^|
echo ^| 3. Open Chrome                   ^|
echo ^| 4. Open YouTube                  ^|
echo ^| 5. Open Facebook                 ^|
echo ^| 6. Open Messenger                ^|
echo ^| 7. Open TikTok                   ^|
echo ^| 8. Open Files                    ^|
echo ^| 9. Exit Program                  ^|
echo +----------------------------------+
set /p option="Enter option number: "

if "%option%"=="1" goto check_disk_space
if "%option%"=="2" goto select_file
if "%option%"=="3" start chrome
if "%option%"=="4" start "" "https://www.youtube.com/"
if "%option%"=="5" start "" "https://www.facebook.com/"
if "%option%"=="6" start "" "https://www.messenger.com/"
if "%option%"=="7" start "" "https://www.tiktok.com/"
if "%option%"=="8" start explorer
if "%option%"=="9" exit
goto menu

:check_disk_space
cls
echo Checking disk space...
echo.
dir
echo.
pause
goto menu

:select_file
cls
echo Select a file to move or copy:
set /p source=

if not exist "%source%" (
  echo The source file "%source%" does not exist.
  pause
  goto menu
)

echo Enter the destination folder:
set /p destination=

if not exist "%destination%" (
  echo The destination folder "%destination%" does not exist.
  pause
  goto menu
)

echo Select an action:
echo 1. Move file
echo 2. Copy file
set /p action=

if "%action%"=="1" (
  move /y "%source%" "%destination%" > nul || (
    echo Failed to move file "%source%" to "%destination%". Error code: %errorlevel%
    pause
    goto menu
  )
) else if "%action%"=="2" (
  copy /y "%source%" "%destination%" > nul || (
    echo Failed to copy file "%source%" to "%destination%". Error code: %errorlevel%
    pause
    goto menu
  )
) else (
  echo Invalid action selected.
  pause
  goto menu
)

echo The file was copied/moved successfully.
pause
goto menu
