# HTML2EXE
![Windows Terminal](https://img.shields.io/badge/Windows%20Terminal-%234D4D4D.svg?style=for-the-badge&logo=windows-terminal&logoColor=white)
![NW.js](https://img.shields.io/badge/nw.js-gray?style=for-the-badge)
![Converter](https://img.shields.io/badge/converter-gray?style=for-the-badge)
[![License](https://img.shields.io/github/license/jgc777/HTML2EXE?style=for-the-badge)](./LICENSE)


> [!TIP]
> Este programa no está optimizado. Si no necesitas nw.js, considera utilizar [HTML2EXE 2.0](https://jgc.corefn.xyz/HTML2EXE-2.0/)

 Convierte archivos .html o compatibles con Chromium a ejecutables portables para Windows (x64) gracias a NW.js. Tengo que reescribir esto completamente ya que ocupa demasiado espacio y no es nada eficiente.
## Uso
 Símplemente descargue la última compilación del ejecutable desde [aquí](https://mega.nz/file/ar4lyBCK#ew99JnjTvG0_X4xHLUN7NOaWQfHrw6snF6F72VJr2XA) y úselo de acuerdo a las instrucciones.

### Sintaxis
 `.html2.exe [html]` (o arrastrar su archivo a .html2.exe)

### Opcional: icono
 `.html2.exe [html (*.html)] [icono (*.ico)]`
 #### Puede adjuntar archivos a su html tras moverlos a una carpeta de esta manera:
  Por ejemplo, si usted tiene un html llamado ejemplo.html, guarde los archivos que este requiera en una carpeta llamada extra en la misma carpeta que el html. Al mismo tiempo usted NO necesita modificar el html para que obtenga los archivos de este directorio, por ejemplo para que ejemplo.html obtenga el recurso imagen.png desde esa carpeta va a necesitar obtenerlo con esta ruta: `./imagen.png`

## Recompilar
 Si usted no se fía de la seguridad del programa puede usar el script Compilar.html2.exe.bat tras revisar el código (o modificarlo) para compilar el programa. Todas las dependencias son obtenidas de fuentes seguras al compilar excepto Bat To Exe Converter, descarga que no he podido automatizar.

## Por añadir
- Ocultar la ventana de la terminal en el ejecutable generado sin generar falsas detecciones de antiviruses
- Añadir más opciones en la línea de comandos
- Automatizar la descarga de "Bat To Exe Converter"
- Menos tamaño
