@echo off
set html=%1
if not defined html goto help
if not exist %html% goto help
if exist %2 set ico=%2
title HTML2EXE
cls
echo -------------------------------------------
echo HTML2EXE - Creado por Jgc7
echo 1.0.5 (github.com/Jgc777/HTML2EXE)
echo.
echo nw.js 0.85.0 (nwjs.io)
echo Bat To Exe Converter 3.2 (f2ko.de)
echo 7-zip 9.20 (7-zip.org)
echo -------------------------------------------
echo.
pause
cls
cd archivos.html2.exe
echo HTML2EXE
echo.
echo Descomprimiendo...
7za x nw.zip
cd nwjs-v0.85.0-win-x64
move * ..
move locales ..
move swiftshader ..
cd ..
rmdir nwjs-v0.85.0-win-x64
del /q nw.zip
cls
echo HTML2EXE
echo.
echo Introduzca la info. del nuevo programa.
echo Algunas opciones opcionales evitan posibles
echo falsas detecciones por antiviruses.
echo.
set /p nombre=Nombre de la utilidad: 
set /p v=(opcional) Rev. (n.n.n.n): 
set /p co=(opcional) Creador: 
set /p desc=(opcional) Detalles: 
if not defined ico set /p ico=(opcional) Icono (.ico): 
cls
echo HTML2EXE
echo.
echo Preparando archivos...
echo {  "main": "index.html",  "name": "%nombre%"} > package.json
move Bat_To_Exe_Converter.exe ..
move exe.bat ..
copy 7za.exe ..
cd ..
copy %html% index.html
move index.html archivos.html2.exe
if exist extra xcopy extra archivos.html2.exe
7za a h2e.zip archivos.html2.exe
cd archivos.html2.exe
del /q *
rmdir /s /q locales
rmdir /s /q swiftshader
cd ..
move 7za.exe archivos.html2.exe
move h2e.zip archivos.html2.exe
cls
echo HTML2EXE
echo.
echo Compilando...
Bat_To_Exe_Converter /bat "exe.bat" /exe "%nombre%.exe" /icon "%ico%" /include "archivos.html2.exe" /x64 /workdir 1 /extractdir 1 /fileversion "%v%" /productversion "%v%" /productname "%nombre%" /company "%co%" /description "%desc%"
echo.
echo Finalizado. El programa creado es "%nombre%.exe".
echo.
echo Si arriba no aparece OK tras "adding resources" vuelva a convertir su html.
echo.
echo Al continuar se van a limpiar los archivos sobrantes del anterior proceso.
pause
echo Limpiando...
taskkill /f /im Bat_To_Exe_Converter.exe /t
del /q Bat_To_Exe_Converter.exe
del /q exe.bat
rmdir /q /s archivos.html2.exe
exit
:help
cmd /k "echo. && echo ------------------------------------------- && echo HTML2EXE - Creado por Jgc7 && echo 1.0.0 (github.com/Jgc777/HTML2EXE) && echo. && echo nw.js 0.75.0 (nwjs.io) && echo Bat To Exe Converter 3.2 (f2ko.de) && echo 7-zip 22.01 (7-zip.org) && echo ------------------------------------------- && echo. && echo Uso: && echo .html2.exe [html] (o arrastrar su html a .html2.exe) && echo. && echo Opcional: icono && echo .html2.exe [html (*.html)] [icono (*.ico)] && echo Puede adjuntar archivos a su html tras moverlos a una carpeta de esta manera: && echo. && echo Por ejemplo, si usted tiene un html llamado ejemplo.html, guarde los archivos que este requiera && echo en una carpeta llamada extra en la misma carpeta que el html. Al mismo tiempo usted NO && echo necesita modificar el html para que obtenga los archivos de este directorio, por ejemplo para que ejemplo.html && echo obtenga el recurso imagen.png desde esa carpeta va a necesitar obtenerlo con esta ruta: && echo ./imagen.png && echo."