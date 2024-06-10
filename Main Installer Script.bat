::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCeDJGmW+0g1Kw9HcCOLKGOvBIk56fvi0Mu3iXI0WvEreYPX36ayBfoy2m7YUIwM5lEUkcgDbA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCeDJGmW+0g1Kw9HcCOLKGOvBIk56fvi0Mu3iXI0WvEreYPX36ayBfoy2m7YUIwM5lEUndMJbA==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
:: Check if an argument (APK file) is passed
if "%~1"=="" (
    echo Please drag and drop an APK file onto apk installer shortcut.
    pause
    exit /b 1
)

:: Get the current directory where the batch file is located
set ADB_PATH="%~dp0adb.exe"

:: Install the APK
%ADB_PATH% install "%~1"

:: Check if the installation was successful
if %errorlevel%==0 (
    echo APK installed successfully. For more shit like this visit: https://github.com/imrizo
) else (
    echo Failed to install APK.
)

pause
exit /b 0
