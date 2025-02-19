#!/bin/bash
#
# Script
# Autor: Jesús Venero Hormigo
# Fecha: 19-02-2025



clear


read -p "Dime el nombre del fichero que quieres añadir notas " fich


while true; do

read -p "Desea introducir un alumno nuevo (si,no) " alumno

if [ $alumno == "no" ]; then

	echo "Ok, saliendo del programa..."
	exit

fi

if [ -f $fich ]; then

	read -p "El fichero ya existe, desea sobreescribirlo? (si,no) " opcion
	if [ $opcion == "si" ]; then

		read -p "Dime el nombre del alumno y apellidos del alumno " nombre
		read -p "Dime la nota del alumno " nota

		if [ $nota -ge 1 ] && [ $nota -le 10 ]; then

			echo "$nombre: $nota" >> $fich

		else

			echo "Debes introducir una nota entre el 1 y el 10"

		fi

	else

		echo "No se va a sobreescribir, saliendo del programa..."
		exit

	fi

else

	echo "El fichero no existe vamos a crearlo"
	read -p "Dime el nombre del alumno y apellidos del alumno " nombre
	read -p "Dime la nota del alumno " nota

	if [ $nota -ge 1 ] && [ $nota -le 10 ]; then

		echo "$nombre: $nota" >> $fich

	else

		echo "Debes de introducir una nota entre el 1 y el 10"

	fi

fi

done
