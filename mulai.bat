@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo SIDEMAP berjalan di http://localhost:8000
echo Biarkan jendela ini terbuka selama memakai SIDEMAP. Tutup jendela ini untuk berhenti.
where python >nul 2>nul
if %errorlevel%==0 goto pakai_python
where py >nul 2>nul
if %errorlevel%==0 goto pakai_py
echo Python tidak ditemukan. Pasang Python dari python.org lalu jalankan lagi.
pause
exit /b
:pakai_python
start "" http://localhost:8000/
python -m http.server 8000
exit /b
:pakai_py
start "" http://localhost:8000/
py -m http.server 8000
