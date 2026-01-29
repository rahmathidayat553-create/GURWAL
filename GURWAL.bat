@echo off
title SISTEM INFORMASI GURU WALI - AUTO START

REM ==== 1️⃣ Konfigurasi Node.js Portable ====
set NODE_HOME=%~dp0node
set PATH=%NODE_HOME%;%PATH%

REM ==== 2️⃣ Pindah ke folder project ====
cd /d %~dp0app

REM ==== 3️⃣ Jalankan server (port 5173 by default) ====
echo Menjalankan server GuruWali...
start "" http://localhost:3000
npm run dev

REM ==== 4️⃣ Jangan langsung tutup terminal ====
pause
