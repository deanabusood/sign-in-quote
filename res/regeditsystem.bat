@echo off
setlocal EnableDelayedExpansion

set "params=%*"
	cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

@REM set replaced characters for caption to original state
set caption=%1
set caption=!caption:_= !
set caption=!caption:+=,!

@REM set replaced characters for text to original state
set text=%2
set text=!text:_= !
set text=!text:+=,!
set "text=%text:`=!%"

REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v legalnoticecaption /t REG_SZ /d "%caption%" /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v legalnoticetext /t REG_SZ /d "%text%" /f

exit