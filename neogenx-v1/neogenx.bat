@echo off
:boot_up
cls
echo.
echo =============================================
echo              INITIALIZING NEOGENX

echo                PLEASE WAIT...
echo =============================================
echo.
(for /l %%A in (1,1,3) do ( 
    echo. %%A...
    timeout /t 1 >nul
))
cls

:main_menu
color 0A
cls

echo =============================================
echo              NEOGENX UTILITIES

echo                THE BEST TOOL

echo =============================================
echo.
echo Select an option below:
echo.
echo [1] CPU Melt Program (nextr.dev made)
echo [2] Bloat Remover and Program Installer (nextr.dev made)
echo [3] Chrome Installer
echo [4] WinRAR Installer
echo [5] Discord Installer
echo [6] OBS Studio Installer
echo [0] Exit
echo.
set /p choice="Enter your choice (0-6): "

goto handle_choice

:handle_choice
cls
if "%choice%"=="1" goto download_script1
if "%choice%"=="2" goto download_script2
if "%choice%"=="3" goto download_script3
if "%choice%"=="4" goto download_script4
if "%choice%"=="5" goto download_script5
if "%choice%"=="6" goto download_script6
if "%choice%"=="0" goto exit_program

echo Invalid choice. Please try again.
pause
goto main_menu

:download_script1
cls
color 0E
echo Downloading Script 1 (CPU Melt Program)...
curl -o "script1.ps1" https://example.com/script1.ps1
echo Running Script 1...
powershell -ExecutionPolicy Bypass -File "script1.ps1"
pause
goto main_menu

:download_script2
cls
color 0E
echo Downloading Script 2 (Bloat Remover and Program Installer)...
curl -o "script2.ps1" https://example.com/script2.ps1
echo Running Script 2...
powershell -ExecutionPolicy Bypass -File "script2.ps1"
pause
goto main_menu

:download_script3
cls
color 0E
echo Downloading Script 3 (Chrome Installer)...
curl -o "script3.ps1" https://example.com/script3.ps1
echo Running Script 3...
powershell -ExecutionPolicy Bypass -File "script3.ps1"
pause
goto main_menu

:download_script4
cls
color 0E
echo Downloading Script 4 (WinRAR Installer)...
curl -o "script4.ps1" https://example.com/script4.ps1
echo Running Script 4...
powershell -ExecutionPolicy Bypass -File "script4.ps1"
pause
goto main_menu

:download_script5
cls
color 0E
echo Downloading Script 5 (Discord Installer)...
curl -o "script5.ps1" https://example.com/script5.ps1
echo Running Script 5...
powershell -ExecutionPolicy Bypass -File "script5.ps1"
pause
goto main_menu

:download_script6
cls
color 0E
echo Downloading Script 6 (OBS Studio Installer)...
curl -o "script6.ps1" https://example.com/script6.ps1
echo Running Script 6...
powershell -ExecutionPolicy Bypass -File "script6.ps1"
pause
goto main_menu

:exit_program
cls
color 0C
echo =============================================
echo            THANK YOU FOR USING NEOGENX

echo =============================================
pause
exit
