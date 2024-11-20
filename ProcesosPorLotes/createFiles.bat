@echo off

rem Autor: Jesús Venero Hormigo
rem Crear menu de opciones
rem Fecha: 19-11-2024

set /P opcion="Pulsa 1 si quieres crear fichero txt, pulse 2 si quierea crear fichero bat "

if %opcion% EQU 1 goto txt
if %opcion% EQU 2 goto bat

:txt
echo Vamos a crear un fichero txt
set /P nombre="Dime el nombre del fichero txt "
echo > %nombre%.txt
echo Se realizo correctamente el fichero
pause
exit

:bat
echo Vamos a crear un fichero bat
set /P nombre="Dime el nombre del fichero bat "
echo > %nombre%.bat
echo Se realizo correctamente el fichero
pause
exit