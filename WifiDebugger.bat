@echo off
setlocal

where adb.exe >nul 2>nul

if %errorlevel% neq 0 (
    echo.
    echo ERROR: adb.exe not found in your system PATH.
    echo Please ensure Android SDK Platform-Tools are installed and their directory
    echo "(e.g., C:\Users\your_username\AppData\Local\Android\sdk\platform-tools)"
    echo is added to your system s PATH environment variable.
    echo You can find instructions online for 'add adb to path windows'.
    echo.
    echo Press any key to exit...
    pause > nul
    goto :eof
)

if "%1" == "" (
    set /p device_ip="Please enter the device IP address (e.g., 192.168.1.100:5555): "
) else (
    set "device_ip=%~1"
)

echo.
echo Attempting to connect to %device_ip%...
adb connect %device_ip%

echo.
echo Check Android Studio. Your device should now be listed.
echo If it doesnt work, ensure:
echo 1. Your phone is on the same Wi-Fi network as your computer.
echo 2. You have enabled "Wireless debugging" in Developer Options.
echo 3. "You have run 'adb tcpip 5555' (or your chosen port) once via USB connection."
echo 4. Your phone s IP address and port are correct.
echo.
echo Press any key to exit...
pause > nul

endlocal
