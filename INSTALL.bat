@echo off
title NPM Auto Install

echo ================================
echo        NPM AUTO INSTALL
echo ================================
echo.

:: Jika user memasukkan path folder sebagai argumen
if not "%~1"=="" (
    set TARGET_DIR=%~1
) else (
    :: Jika tidak, gunakan folder tempat file bat dijalankan
    set TARGET_DIR=%cd%
)

echo Target Folder:
echo %TARGET_DIR%
echo.

:: Cek apakah folder ada
if not exist "%TARGET_DIR%" (
    echo ERROR: Folder tidak ditemukan!
    pause
    exit /b
)

cd /d "%TARGET_DIR%"

:: Cek apakah ada package.json
if not exist "package.json" (
    echo ERROR: package.json tidak ditemukan di folder ini!
    echo Pastikan ini adalah folder project Node.js
    pause
    exit /b
)

echo Menjalankan npm install...
echo.

npm install

echo.
echo ================================
echo SELESAI!
echo ================================
pause
