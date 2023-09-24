@echo off
:menu
cls

echo  [1]  Facebook
echo  [2]  Twitter
echo  [3]  Instagram
echo  [4]  Tiktok
echo  [5]  YouTube
echo  [6]  Reddit
echo  [7]  Tumblr
echo  [8]  Snapchat
echo  [9]  Pinterest
echo  [0] Discord
echo:
set /p choice=Enter your choice:

if "%choice%"=="1" start "" "https://www.facebook.com"
if "%choice%"=="2" start "" "https://www.twitter.com"
if "%choice%"=="3" start "" "https://www.instagram.com"
if "%choice%"=="4" start "" "https://www.tiktok.com/en/"
if "%choice%"=="5" start "" "https://www.youtube.com/"
if "%choice%"=="6" start "" "https://www.reddit.com/" 
if "%choice%"=="7" start "" "https://www.tumblr.com/"
if "%choice%"=="8" start "" "https://www.snapchat.com/en-GB"
if "%choice%"=="9" start "" "https://www.pinterest.ph/"
if "%choice%"=="0" start "" "https://discord.com/" 

:end
echo Exiting...
pause