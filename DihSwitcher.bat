:: ˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍ
:: |        Made by Apfel         |
:: |                              |
:: |      Discord: @apfel.28      |
:: |      YouTube: @Apfel28       |
:: |                              |
:: |  https://linktr.ee/apfel28_  |
:: ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
::
::
:: Read the licence before doing anything with this code!
::
::
::
::
::
::
::


@echo off
chcp 65001 >nul
title DihSwitcher ^| Made by ClientCentral
set dihdir=%userprofile%\Documents\DihSwitcher
set lct=false

net session >nul 2>&1
if %errorLevel% NEQ 0 (
    chcp 437 > nul
    powershell -Command "Start-Process -FilePath '%~f0' -Verb runAs"
    chcp 65001 > nul
    exit /b
)

if exist "%dihdir%" (
    goto start
) else (
    goto licence
)


:licence
echo Welcome, %username%!
:lct
echo   ___  _ _    ___        _ _      _            
echo  ^|   \(_) ^|_ / __^|_ __ _(_) ^|_ __^| ^|_  ___ _ _ 
echo  ^| ^|) ^| ^| ' \\__ \ V  V / ^|  _/ _^| ' \/ -_) '_^|
echo  ^|___/^|_^|_^|^|_^|___/\_/\_/^|_^|\__\__^|_^|^|_\___^|_^| 
echo. 
echo ˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍˍ
echo ^|        Made by Apfel         ^|
echo ^|                              ^|
echo ^|      Discord: @apfel.28      ^|
echo ^|      YouTube: @Apfel28       ^|
echo ^|                              ^|
echo ^|  https://linktr.ee/apfel28_  ^|
echo ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
echo.
echo ==================================== Safety ====================================
echo DihSwitcher requires Admin UAC to install versions above 1.21.114,
echo sends curls requests to github to check if versions exist and
echo downloads ^& installs the versions itself from github, which
echo are all things that can cause AntiVirus-software to false-
echo flag DihSwitcher. DihSwitcher isn't obvuscated, you can right-click
echo the .bat and press 'edit' to open the code and see yourself what
echo DihSwitcher does and that it is completly clean.
echo.
echo.
echo ==================================== Licene ====================================
echo.
echo (C) 2025 ClientCentral
echo     By using this program, you agree to the following license:
echo.
echo     You are NOT allowed to post DihSwitcher anywhere. If you want
echo     to share DihSwitcher, post the official download sources:
echo     ClientCentral'S Discord server invite link (Server-ID: 1200866946351116358)
echo     SkidClub Discord's server invite link (Server-ID: 1200866946351116358)
echo     When showing DihSwitcher in any public media such as YouTube
echo     videos, you are prohibited from censoring anything inside the
echo     DihSwitcher window, and required to visibly put the name and
echo     download source of DihSwitcher in the video or description.
echo     When putting tags or other long texts that are not supposed to
echo     be read in the video or description, the DihSwitcher name and
echo     download source need to be in front / before the tags / long text.
echo     You are not allowed to claim that you own DihSwitcher, are a
echo     developer or staff of DihSwitcher, or have any right to
echo     DihSwitcher. or claim things about the DihSwitcher software
echo     that are not true. Apfel is not responsible for harm done to
echo     the device or user that may be caused by bugs or unintended user
echo     behavior such as saving important files in DihSwitcher's saving
echo     directory and then using DihSwitcher's uninstaller. This license
echo     can change at any time, and the license shown here may be outdated
echo     at any time. You can check the updated license in the official
echo     sources that are stated above; you automatically agree with all
echo     changes to this license, even when not seeing them. It's up
echo     to you to stay updated about the license. You are not allowed
echo     to sell DihSwitcher or demand any money / action for people to
echo     obtain the source. You are not allowed to use DihSwitcher to cause
echo     any harm towards any person or entity. 
echo.
echo     When breaking this license, you are no longer allowed to use DihSwitcher.
echo     Breaking the license automatically acts as a cease and desist notice.
echo     We will take legal action and take down violating
echo     material and strike publishers.
echo.
echo ================================================================================
echo.
echo This Page contains credits, a safety notice and DihSwitcher's licence.
echo The licence conntains some important things, especially for content creators!
echo.
if "%lct%" EQU "true" ( goto lct2 )
echo [1] Agree
echo [2] Decline
echo.
set /p licence=^>
if "%licence%" EQU "1" (
    mkdir "%dihdir%"
    mklink "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\DihSwitcher" "%~f0"
    goto start 
) else if "%licence%" EQU "2" (
    exit
) else (
    cls
    goto licence
)

cls
goto licence

:start
cls
echo Welcome back, %username%!
echo   ___  _ _    ___        _ _      _            
echo  ^|   \(_) ^|_ / __^|_ __ _(_) ^|_ __^| ^|_  ___ _ _ 
echo  ^| ^|) ^| ^| ' \\__ \ V  V / ^|  _/ _^| ' \/ -_) '_^|
echo  ^|___/^|_^|_^|^|_^|___/\_/\_/^|_^|\__\__^|_^|^|_\___^|_^|  
echo.
echo [1] Switch version
echo.
echo [2] Delete version
echo [3] Open directory
echo [4] Read licence
echo [5] Uninstall DihSwitcher
echo [6] Exit 

set /p option=^>
if "%option%" EQU "1" (
    goto switch
) else if "%option%" EQU "2" (
    goto delete
) else if "%option%" EQU "3" (
    start "" "%dihdir%"
    goto start
) else if "%option%" EQU "4" (
    cls
    goto licence2
) else if "%option%" EQU "5" (
    goto uninstall
) else if "%option%" EQU "6" (
    exit
) else if "%option%" EQU "r" (
    start "" "%~f0"
    exit
) else (
    goto start
)

:switch
cls
echo   ___  _ _    ___        _ _      _            
echo  ^|   \(_) ^|_ / __^|_ __ _(_) ^|_ __^| ^|_  ___ _ _ 
echo  ^| ^|) ^| ^| ' \\__ \ V  V / ^|  _/ _^| ' \/ -_) '_^|
echo  ^|___/^|_^|_^|^|_^|___/\_/\_/^|_^|\__\__^|_^|^|_\___^|_^|  
echo.
echo What version do you want to switch to?
set /p whatver=^>
if exist "%dihdir%\%whatver%.appx" ( 
    start "" "%dihdir%\%whatver%.appx"
    echo ^| 1. Press on ^(Re^)install
    echo ^|    If a windows pops up saying you already have
    echo ^|    Minecraft installed, press on Reinstall again
    echo ^| 2. Wait for it to finish loading
    echo ^| 3. Do not press on start; close the window and
    echo ^|    press Windows + S
    echo ^| 4. Search for "Minecraft" and press enter
    echo ^|
    echo ^|    Press any key to return to main menu!
    pause >nul
    goto start
) else if exist "%dihdir%\%whatver%.msixvc" (
    echo.
    echo ^| ^(i^) %whatver% is being installed!
    chcp 437 > nul
    powershell -Command Add-AppxPackage -Path "%dihdir%\%whatver%.msixvc"
    chcp 65001 > nul
    echo.
    echo Done!
    echo.
    echo ^| 1. Press Windows + S on your keyboard
    echo ^| 2. Search for "Minecraft for Windows"
    echo ^| 3. Press on the ENTER key or click Open
    echo ^|
    echo ^|    Press any key to return to main menu!
    pause>nul
    goto start
) else (
    goto check 
)


:check

for /f %%A in ('curl -s -L -o /dev/null -w "%%{http_code}" "https://github.com/OnixClient/onix_compatible_appx/releases/download/%whatver%/%whatver%.msixvc"') do set response=%%A
if %response% EQU 200 (
    echo.
    echo ^(i^) Your download has started! Even though it might seem as if nothing
    echo     is happening, DihSwitcher is actively working in the background.
    echo.
    chcp 437 > nul
    powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/OnixClient/onix_compatible_appx/releases/download/%whatver%/%whatver%.msixvc', '%dihdir%/%whatver%.msixvc')"
    echo     Installing...
    powershell -Command Add-AppxPackage -Path "%dihdir%\%whatver%.msixvc"
    chcp 65001 > nul
    echo.
    echo ^|    Done!
    echo ^|
    echo ^| 1. Press Windows + S on your keyboard
    echo ^| 2. Search for "Minecraft for Windows"
    echo ^| 3. Press on the ENTER key or click Open
    echo ^|
    echo ^|    Press any key to return to main menu!
    goto start
) else if  %response% EQU 404 (
    goto check2
) else (
    echo Error: %response%
    echo Press any key to return to main menu.
    pause>nul
    goto start
)

:check2
for /f %%A in ('curl -s -L -o /dev/null -w "%%{http_code}" "https://github.com/OnixClient/onix_compatible_appx/releases/download/%whatver%/%whatver%.appx"') do set response=%%A
if %response% EQU 200 (
    echo.
    echo ^(i^) Your download has started! Even though it might seem as if nothing
    echo     is happening, DihSwitcher is actively working in the background.
    echo.
    chcp 437 > nul
    powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/OnixClient/onix_compatible_appx/releases/download/%whatver%/%whatver%.appx', '%dihdir%/%whatver%.appx')"
    chcp 65001 > nul
    start "" "%dihdir%/%whatver%.appx"
    echo ^|    Done! 
    echo ^|
    echo ^| 1. Press on ^(Re^)install
    echo ^|    If a windows pops up saying you already have
    echo ^|    Minecraft installed, press on Reinstall again
    echo ^| 2. Wait for it to finish loading
    echo ^| 3. Do not press on start; close the window and
    echo ^|    press Windows + S
    echo ^| 4. Search for "Minecraft" and press enter
    echo ^|
    echo ^|    Press any key to return to main menu!
    pause >nul
    goto start
) else if  %response% EQU 404 (
    echo.
    echo ^| That version does not exist! Here's what could've happened:
    echo ^|
    echo ^| 1. You entered a wrong format
    echo ^| 2. The version does not exist
    echo ^| 3. The version isn't available
    echo ^|    on DihSwitcher; versions
    echo ^|    are usually supported 1-3
    echo ^|    days after they release.
    echo ^|    Versions below 1.16.40 are
    echo ^|    also not supported.
    echo ^|
    echo ^|    Press any key to return to main menu!
    pause>nul
    goto start
) else (
    echo ^| Error: %response%
    echo ^| Press any key to return to main menu.
    pause>nul
    goto start
)


:delete
cls
echo   ___  _ _    ___        _ _      _            
echo  ^|   \(_) ^|_ / __^|_ __ _(_) ^|_ __^| ^|_  ___ _ _ 
echo  ^| ^|) ^| ^| ' \\__ \ V  V / ^|  _/ _^| ' \/ -_) '_^|
echo  ^|___/^|_^|_^|^|_^|___/\_/\_/^|_^|\__\__^|_^|^|_\___^|_^|  
echo.
echo What version do you want to delete?
set /p whatver=^>
if exist "%dihdir%\%whatver%.appx" (
    goto delete2
) else if exist "%dihdir%\%whatver%.msixvc" (
    goto delete3
) else (
    echo.
    echo You don't have %whatver% installed! Press any key to return to main menu.
    pause >nul
    goto start

)

pause > nul
goto start

:delete2
echo.
echo Are you sure you want to delete %whatver%? ( Y / N )
set /p delyn=^>
if %delyn% EQU Y (
    del "%dihdir%\%whatver%.appx" /q
    echo %whatver% successfully deleted! Press any key to return to main menu.
    pause >nul
    goto start
) else if %delyn% EQU y (
    del "%dihdir%\%whatver%.appx" /q
    echo %whatver% successfully deleted! Press any key to return to main menu.
    pause >nul
    goto start
) else (
    goto start
)

:delete3
echo.
echo Are you sure you want to delete %whatver%? ( Y / N )
set /p delyn=^>
if %delyn% EQU Y (
    del "%dihdir%\%whatver%.msixvc" /q
    echo %whatver% successfully deleted! Press any key to return to main menu.
    pause >nul
    goto start
) else if %delyn% EQU y (
    del "%dihdir%\%whatver%.msixvc" /q
    echo %whatver% successfully deleted! Press any key to return to main menu.
    pause >nul
    goto start
) else (
    goto start
)

:uninstall
cls
echo   ___  _ _    ___        _ _      _            
echo  ^|   \(_) ^|_ / __^|_ __ _(_) ^|_ __^| ^|_  ___ _ _ 
echo  ^| ^|) ^| ^| ' \\__ \ V  V / ^|  _/ _^| ' \/ -_) '_^|
echo  ^|___/^|_^|_^|^|_^|___/\_/\_/^|_^|\__\__^|_^|^|_\___^|_^|  
echo.
echo Are you sure you want to uninstalll DihSwitcher? ( Y / N )
set /p uninstallyn=
if %uninstallyn% EQU Y (
    rd /s /q "%dihdir%"
    echo MsgBox "DihSwitcher has been uninstalled!",64 + 0,"DihSwitcher" > "%temp%\dihswitcher.uninstalled.vbs"
    start "" "%temp%\dihswitcher.uninstalled.vbs"
    ping -n 1 -w 200 127.0.0.1 >nul
    del "%temp%\dihswitcher.uninstalled.vbs" /q
    start cmd.exe /k del "%~f0" /q ^& exit
    exit
) else if %uninstallyn% EQU y (
    rd /s /q "%dihdir%"
    echo MsgBox "DihSwitcher has been uninstalled!",64 + 0,"DihSwitcher" > "%temp%\dihswitcher.uninstalled.vbs"
    start "" "%temp%\dihswitcher.uninstalled.vbs"
    ping -n 1 -w 200 127.0.0.1 >nul
    del "%temp%\dihswitcher.uninstalled.vbs" /q
    start cmd.exe /k del "%~f0" /q ^& exit
    exit
) else (
    goto start
)


:licence2
set lct=true
goto lct
:lct2
set lct=false
echo Press any key to go back to main menu!
pause>nul
goto start
