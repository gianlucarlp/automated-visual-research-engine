@echo off
setlocal
cd /d "%~dp0"

echo =================================================
echo SRT DOCUMENTARY MEDIA MAPPER V11 REFINED FAST - BUILD
echo =================================================

python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python -m pip install pyinstaller

if errorlevel 1 (
  echo Falha instalando dependencias.
  pause
  exit /b 1
)

if exist build rmdir /s /q build
if exist dist rmdir /s /q dist
if exist SRT_Documentary_Media_Mapper_V11_REFINED_FAST.spec del /q SRT_Documentary_Media_Mapper_V11_REFINED_FAST.spec

python -m PyInstaller --noconfirm --clean --onefile --windowed ^
 --name SRT_Documentary_Media_Mapper_V11_REFINED_FAST ^
 --add-data "config;config" ^
 --paths "." ^
 app\main.py

if errorlevel 1 (
  echo.
  echo ERRO NO BUILD.
  pause
  exit /b 1
)

echo.
echo =================================================
echo EXECUTAVEL GERADO:
echo dist\SRT_Documentary_Media_Mapper_V11_REFINED_FAST.exe
echo =================================================
pause
