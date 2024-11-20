@echo off

rem Autor: Jesús Venero Hormigo
rem Crear directorios con menu
rem Fecha: 19-11-2024

set /P opcion="Pulsa 1 para crear fichero, pulsa 2 para mostrar arbol de directorios, pulsa 3 para mostrar archivos txt, pulsa 4 para crear los directorios alfredoff, marinapg y ramonam, pulsa 5 para copiar el contenido de tu usuario al escritorio "

if %opcion% EQU 1 goto fichero
if %opcion% EQU 2 goto arbol
if %opcion% EQU 3 goto txt
if %opcion% EQU 4 goto directorios
if %opcion% EQU 5 goto copia

:fichero
set /P fichero="Dime el nombre del archivo que desee "
echo > %fichero%.txt
pause
exit

:arbol
tree %userprofile%
pause
exit

:txt
dir *.txt
pause
exit

:directorios
mkdir alfredoff marinapg ramonam
pause
exit

:copia
mkdir C:\copia
xcopy /e %userprofile% C:\copia
pause
exit