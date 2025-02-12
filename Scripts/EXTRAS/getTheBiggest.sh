#!/bin/bash
#
# Script para comprobar lineas
# Autor: Jesús Venero Hormigo
# Fecha: 12-02-2025


clear

if [ $# -lt 2 ]; then

	echo "Debes de introducir dos parametros"
	exit

fi


if [ -f $1 ]; then

	echo "El fichero no debe de existir"
	exit

fi


if [ -d $2 ]; then

	archivo=$(ls $2 | wc -l)
	if [ $archivo -eq 0 ];then

		echo "Debe de existir ficheros dentro de la ruta"
		exit

	fi

else

	echo "El directorio debe de existir"

fi


echo "Autor: Jesús Venero Hormigo"

maxlineas=0
archivobueno=""

for i in $2/* ; do

	lineas=$(cat $i | wc -l)
	if [ $maxlineas -lt $lineas ]; then

		maxlineas=$lineas
		archivobueno=$i

	fi

done

nombrearchivo=$(echo $archivobueno | cut -d "/" -f 2)

echo "El nombre del fichero con mas lineas es $nombrearchivo y tiene $maxlineas lineas" >> $1
