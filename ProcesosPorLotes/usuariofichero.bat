@echo off

rem Autor: Jesús Venero Hormigo
rem Creacion de usuario y txt
rem Fecha: 19-11-2024

echo > %1.txt
echo %username% >> %1.txt
echo %date% >> %1.txt
set /P apellido="Dime el apellido "
echo %apellido% >> %1.txt
type %1.txt
