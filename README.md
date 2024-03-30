- [(WWW)](http://tinyurl.com/HTML2EXE-web)
- [(Github)](http://tinyurl.com/HTML2EXE)

# HTML2EXE

## Uso

Símplemente descargue la última compilación del ejecutable desde [aquí](tinyurl.com/HTML2EXE-download) y úselo de acuerdo a las instrucciones. Al ejecutarlo sin argumentos aparecerá esto en la terminal:
-------------------------------------------
HTML2EXE - Creado por Jgc7
1.0.0 (github.com/Jgc777/HTML2EXE)

nw.js (o node-webkit) 0.85.0 (nwjs.io)
Bat To Exe Converter 3.2 (f2ko.de)
7-zip 9.20 (7-zip.org)
-------------------------------------------

Uso:
.html2.exe [html] (o arrastrar su html a .html2.exe)

Opcional: icono
.html2.exe [html (*.html)] [icono (*.ico)]
Puede adjuntar archivos a su html tras moverlos a una carpeta de esta manera:

Por ejemplo, si usted tiene un html llamado ejemplo.html, guarde los archivos que este requiera
en una carpeta llamada extra en la misma carpeta que el html. Al mismo tiempo usted NO
necesita modificar el html para que obtenga los archivos de este directorio, por ejemplo para que ejemplo.html
obtenga el recurso imagen.png desde esa carpeta va a necesitar obtenerlo con esta ruta:
./imagen.png

## Recompilar

Si usted no se fía de la seguridad del programa puede usar el script COmpilar.html2.exe.bat tras revisar el código (o modificarlo) para compilar el programa. Todas las dependencias son obtenidas de fuentes seguras al compilar excepto Bat To Exe Converter, desccarga que no he podido automatizar.

## Por añadir

- Crear un icono
- Ocultar la ventana de la terminal en el ejecutable generado sin generar falsas detecciones de antiviruses
- Añadir más opciones en la línea de comandos
- Automatizar la descarga de "Bat To Exe Converter"