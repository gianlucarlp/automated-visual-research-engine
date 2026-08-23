@echo off
cd /d "%~dp0"
call build.bat
if errorlevel 1 exit /b 1
if not exist "%~dp0dist\bin" mkdir "%~dp0dist\bin"
if exist "%~dp0bin\ffmpeg.exe" copy /Y "%~dp0bin\ffmpeg.exe" "%~dp0dist\bin\ffmpeg.exe" >nul
if exist "%~dp0bin\ffprobe.exe" copy /Y "%~dp0bin\ffprobe.exe" "%~dp0dist\bin\ffprobe.exe" >nul
start "" "%~dp0dist\SRT_Documentary_Media_Mapper_V11_REFINED_FAST.exe"
