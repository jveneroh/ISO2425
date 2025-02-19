#!/bin/bash
#
# Script
# Autor: Jesús Venero Hormigo
# Fecha: 19-02-2025


clear

if [ ! $USER == 'root' ]; then

	echo "Debes ser root para poder ejecutarlo"
	exit

fi


if [ $# -ne 1 ]; then

	echo "Solo puede ser un parametro"
	exit

fi


if [ $1 == "crear" ]; then

	mkdir /home/BAK
	exit

fi

if [ $1 == "borrar" ]; then

	if [ -d /home/BAK ]; then

		rm -r -f /home/BAK/*
		exit

	fi

fi

echo "Debes de introducir una de las dos opciones (crear) o (borrar)"
