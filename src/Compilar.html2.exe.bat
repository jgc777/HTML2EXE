@echo off
title COMPILADOR HTML2EXE
echo COMPILADOR HTML2EXE
echo.
echo Instalando/ actualizando wget...
echo.
winget install wget
cls
echo COMPILADOR HTML2EXE
echo.
echo Wget instalado
echo Descargando 7zip...
echo.
cd archivos.html2.exe
mkdir 7z
cd 7z
wget https://www.7-zip.org/a/7za920.zip
tar -xf 7za920.zip
move 7za.exe ..
cd ..
rmdir /s /q 7z
cls
echo COMPILADOR HTML2EXE
echo.
echo Wget instalado
echo 7zip cli descargado
echo Descargando nw.js
echo.
wget https://dl.nwjs.io/v0.85.0/nwjs-v0.85.0-win-x64.zip
rename nwjs-v0.85.0-win-x64.zip nw.zip
cls
echo COMPILADOR HTML2EXE
echo.
echo Wget instalado
echo 7zip cli descargado
echo Nw.js descargado
echo Compilando...
echo.
copy /y Bat_To_Exe_Converter.exe ..
copy /y icono.ico ..
cd ..
Bat_To_Exe_Converter /bat .html2.exe.bat /exe .html2.exe /icon icono.ico /x64 /include archivos.html2.exe /workdir 0 /extractdir 0 /deleteonexit /fileversion 1.0.0.5 /productversion 1.0.0.5 /productname HTML2EXE /company Jgc7 /description "Convierte archivos .html a ejecutables portables para Windows (x64)."
taskkill /f /im Bat_To_Exe_Converter.exe /t
del /q Bat_To_Exe_Converter.exe
del /q icono.ico
cd archivos.html2.exe
del /q nw.zip
del /q 7za.exe
cd ..
pause
exit