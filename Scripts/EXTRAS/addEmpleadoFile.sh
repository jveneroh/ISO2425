#!/bin/bash
#
# Script addEmplead
# Autor: Jesús Venero Hormigo
# Fecha: 17-02-2025


clear

if [ $# -ne 1 ]; then

	echo "Parametros incorrectos, debes de introducir solo 1"
	exit

fi


if [ ! $USER == 'root' ];then

	echo "El usuario debe de ser root"
	exit

fi


if [ ! -f $1 ]; then

	echo "El fichero no existe"
	exit

fi


while IFS=: read user grupo; do

	echo $user
	echo $grupo

	if ! grep "^$grupo:" /etc/group > /dev/null; then

		echo "El grupo no existe, vamos a crearlo"
		groupadd $grupo

	fi

	if ! grep "^$user:" /etc/passwd >/dev/null; then

		echo "El usuario no existe, vamos a crearlo"
		useradd $user
		usermod -G $grupo $user

	else

		usermod -G $grupo $user

	fi

done < $1
