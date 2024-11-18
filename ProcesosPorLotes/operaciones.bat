@echo off
rem Script de Variable
rem Autor: Jesús Venero Hormigo
rem Fecha: 18-11-2024

echo Vamos a realizar operaciones como suma, resta, multiplicacion y division.
set /p num1="Introduzca el primero numero "
set /p num2="Introduzca el segundo numero "

set /a suma=num1+num2
set /a resta=num1-num2
set /a multiplicacion=num1*num2
set /a division=num1/num2

echo La suma es %suma%
echo La resta es %resta%
echo La multiplicacion es %multiplicacion%
echo La division es %division%