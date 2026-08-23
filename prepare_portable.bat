@echo off
cd /d "%~dp0"

if not exist "dist" (
  echo Pasta dist nao encontrada. Execute build.bat primeiro.
  pause
  exit /b 1
)

if not exist "dist\bin" mkdir "dist\bin"

if exist "bin\ffmpeg.exe" (
  copy /Y "bin\ffmpeg.exe" "dist\bin\ffmpeg.exe" >nul
) else (
  echo AVISO: bin\ffmpeg.exe nao encontrado.
)

if exist "bin\ffprobe.exe" (
  copy /Y "bin\ffprobe.exe" "dist\bin\ffprobe.exe" >nul
) else (
  echo AVISO: bin\ffprobe.exe nao encontrado.
)

echo.
echo Estrutura portable preparada em:
echo dist\
echo.
echo Deve ficar assim:
echo dist\SRT_Documentary_Media_Mapper_V10_FAST_ECONOMY.exe
echo dist\bin\ffmpeg.exe
echo dist\bin\ffprobe.exe
echo.
pause
