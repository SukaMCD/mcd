@echo off
setlocal

echo Installing McdBash for Windows...

:: Get absolute path of current directory
set "ROOT_DIR=%~dp0"
:: Remove trailing backslash
if "%ROOT_DIR:~-1%"=="\" set "ROOT_DIR=%ROOT_DIR:~0,-1%"

:: Add to User PATH
setx PATH "%PATH%;%ROOT_DIR%"

echo.
echo %GREEN%✔ Added to User PATH%NC%
echo.
echo Installation Complete!
echo Please RESTART your terminal (CMD, PowerShell, or Git Bash).
echo Then you can use 'mcd -h' from anywhere.
pause
