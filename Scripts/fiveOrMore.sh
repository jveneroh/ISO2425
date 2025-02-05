#!/bin/bash
#
# Script para ver lineas de un archivo
# Autor: Jesús Venero Hormigo
# Fecha: 05-02-2025
# NO ES EL DEFINITIVO


clear


if [ $# -ne 2 ]; then

	echo "Debes de introducir dos parametros"
	exit

fi

if [ -f $1 ]; then

	echo "El fichero no debe de existir borralo"

fi

if [ ! -d $2 ]; then

	echo "El directorio debe de existir"

fi


vacio=$(ls $2 | wc -l)
if [ $vacio -eq 0 ]; then

	echo "El directorio esta vacio"
	exit

fi

echo "Jesus Venero Hormigo"

for txt in $2/*.txt; do

	comprobar=$(cat $txt | wc -l)
	echo $comprobar
	if [ $comprobar -ge 5 ]; then

		echo $txt

	fi

done
