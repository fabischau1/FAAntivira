@echo off
setlocal enabledelayedexpansion

set "UPDATE_URL=https://fabischau1.github.io/FAAntivira/FAupdate.FA"
set "INSTALLER_URL=https://fabischau1.github.io/FAAntivira/FA_Installer_AU.bat"

set "TEMP_UPDATE_FILE=C:\FA_Antivira\Temp\Update\FAupdate.FA"
set "LOCAL_VERSION_FILE=C:\FA_Antivira\Update\version.ver"
set "INSTALLER_FILE=C:\FA_Antivira\Temp\Update\FA_Installer.bat"

powershell -Command "(New-Object Net.WebClient).DownloadFile('%UPDATE_URL%', '%TEMP_UPDATE_FILE%')"

set /p LOCAL_VERSION=<%LOCAL_VERSION_FILE%
set /p REMOTE_VERSION=<%TEMP_UPDATE_FILE%

REM Versionsvergleich
if "%REMOTE_VERSION%" == "%LOCAL_VERSION%" (
    echo FA AntiVira is already up to date
    del "%TEMP_UPDATE_FILE%"
    exit /b 0
) else (
    echo Updating FA AntiVira
    del "%TEMP_UPDATE_FILE%"
    powershell -Command "(New-Object Net.WebClient).DownloadFile('%INSTALLER_URL%', '%INSTALLER_FILE%')"
    call "%INSTALLER_FILE%" /wait
    del "%INSTALLER_FILE%"
	echo FA AntiVira was updated
)

endlocal