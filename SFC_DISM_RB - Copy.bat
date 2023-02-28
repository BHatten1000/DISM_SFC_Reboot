@echo off
echo Running System File Checker...
sfc /scannow
echo Waiting for System File Checker to finish...
:waitforSFC
timeout /t 5 >nul
tasklist /FI "IMAGENAME eq sfc.exe" 2>NUL | find /I /N "sfc.exe">NUL
if "%ERRORLEVEL%"=="0" (
goto waitforSFC
)
echo Running DISM with Restore Health...
dism /online /cleanup-image /restorehealth
echo Waiting for DISM to finish...
:waitforDISM
timeout /t 5 >nul
tasklist /FI "IMAGENAME eq dism.exe" 2>NUL | find /I /N "dism.exe">NUL
if "%ERRORLEVEL%"=="0" (
goto waitforDISM
)
echo Rebooting the system...
shutdown /r