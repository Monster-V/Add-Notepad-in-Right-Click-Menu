@echo off
:start
mode 40,20
color 0a
echo.
echo                Monster-V
echo ========================================
echo   Hello %username%, 
echo.
echo           This Batch program will add
echo           Notepad into your Right-Click
echo           Menu.
echo.
Echo                     Thanks For Using Me.
echo ________________________________________

echo       For Add    = 1
echo       For Remove = 2
echo       Exit       = 3
echo.
set /p input="Please Enter Your Choice : "

if %input%==1 goto add
if %input%==2 goto remove
if %input%==3 goto exit

:add
cls
REG Add "HKCR\Directory\Background\shell\Notepad\command" /d "C:\Windows\notepad.exe" /f
cls
mode 15,10
color 0a
echo.
echo.
echo.
echo      Done!
echo.
timeout /t 10
shutdown /l



:remove
cls
REG Delete "HKCR\Directory\Background\shell\Notepad" /f
cls
mode 15,10
color 0c
echo.
echo.
echo.
echo.
echo      Done!
timeout /t 10
shutdown /l




:exit
exit /b
