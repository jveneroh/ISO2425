#!/bin/bash
#
# Script
# Autor: Jesús Venero Hormigo
# Fecha: 19-02-2025


clear

if [ ! $USER == 'root' ]; then

	echo "Debes de ser root para poder ejecutarlo"
	exit

fi


if [ $# -ne 1 ]; then

	echo "Debes de introducir un solo parametro"

fi


if [ -f $1 ]; then

	cp $1 /home/$USER

	hora=$(date +%H:%M)
	dia=$(date +%d)
	mes=$(date +%m)
	anio=$(date +%Y)
	echo "Copia realizada correctamente a las $hora el dia $dia de $mes de $anio"

else


	echo "El $1 no es un fichero"
	exit

fi
