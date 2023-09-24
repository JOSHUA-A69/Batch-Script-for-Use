@echo off

:start
cls
echo mkdir,rd,ren,and dir Script 
echo ---------------------------
echo 1. Make Directory
echo 2. Remove Directory
echo 3. Rename Directory or File
echo 4. List Directories
echo 5. Exit

set /p choice=Enter your choice:

if "%choice%"=="1" goto makeDir
if "%choice%"=="2" goto removeDir
if "%choice%"=="3" goto renameDirFile
if "%choice%"=="4" goto listDir
if "%choice%"=="5" goto end

:makeDir
set /p dirPath=Enter directory path:
set /p dirName=Enter directory name:
mkdir "%dirPath%\%dirName%"
echo Directory created successfully.
pause
goto start

:removeDir
set /p dirPath=Enter directory path:
set /p dirName=Enter directory name:
rd /s /q "%dirPath%\%dirName%"
echo Directory removed successfully.
pause
goto start

:renameDirFile
set /p filePath=Enter file or directory path to rename:
set /p newName=Enter new name:
ren "%filePath%" "%newName%"
echo Renamed successfully.
pause
goto start

:listDir
set /p dirPath=Enter directory path:
dir "%dirPath%"
pause
goto start

:end
echo Exiting script...
echo Group#5
echo Made by:Mary Joy Gumanid,Jericho Peligro, and Joshua Russel Uy
pause
