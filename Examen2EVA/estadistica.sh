#!/bin/bash
#
# Script
# Autor: Jesús Venero Hormigo
# Fecha: 19-02-2025


clear


if [ $# -ne 1 ]; then

	echo "Debes de introducir 1 solo parametro"
	exit

fi

if [ ! -f $1 ]; then

	echo "El fichero no existe debes de crearlo antes"
	exit

fi

fich=$(cat $1 | wc -l)
if [ $fich -eq 0 ]; then

	echo "El fichero no puede estar vacio"
	exit

fi


for i in $1; do

	totalalumnos=$(cat $1 | wc -l)
	echo "Total alumnos: $totalalumnos"
	echo "Alumnos con un 10"
	grep 10 $1 | cut -d ":" -f 1
	echo "Alumnos con un 9"
	grep 9 $1 | cut -d ":" -f 1
	echo "Alumnos con un 8"
	grep 8 $1 | cut -d ":" -f 1
	echo "Alumnos con un 7"
	grep 7 $1 | cut -d ":" -f 1
	echo "Alumnos con un 6"
	grep 6 $1 | cut -d ":" -f 1
	echo "Alumnos con un 5"
	grep 5 $1 | cut -d ":" -f 1
	echo "Alumnos con un 4"
	grep 4 $1 | cut -d ":" -f 1
	echo "Alumnos con un 3"
	grep 3 $1 | cut -d ":" -f 1
	echo "Alumnos con un 2"
	grep 2 $1 | cut -d ":" -f 1
	echo "Alumos con un 1"
	grep 1 $1 | cut -d ":" -f 1

done
