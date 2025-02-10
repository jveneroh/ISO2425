#!/bin/bash
#
# Script para ver lineas de un archivo
# Autor: Jesús Venero Hormigo
# Fecha: 05-02-2025


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

ficheros=$(ls $2/*.txt)

for i in $ficheros; do
	if [ -f $i ];then
		lineas=$(cat $i | wc -l)
		if [ $lineas -ge 5 ]; then
			echo $i
			echo $i >> $1
			palabras=$(cat $i | wc -w)
			echo "El fichero tiene $palabras palabras" > $i.q
			cat $i >> $i.q
		fi
	fi
done

numero=$(cat $1 | wc -l)

echo $numero  >> $1
