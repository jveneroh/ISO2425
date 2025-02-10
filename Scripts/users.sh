#!/bin/bash
#
# Script informe de usuarios
# Autor: Jesús Venero Hormigo
# Fecha: 10-02-2025


clear


if [ $# -gt 1 ]; then
	echo "Has introducido más de dos parámetros"
	exit
fi

IFS=":"

hora=$(date +%H:%M)
dia=$(date +%d-%m-%Y)


if [ $# -eq 0 ]; then

	u=1000

else

	u=$1

fi

echo "==========================="

echo "Informe de usuarios el día $dia a las $hora "

contador=0

while read user x uid gid g home shell
do
	if [ $uid -ge $u ]; then
		echo $user - $uid
		contador=$(($contador+1))
	fi

done </etc/passwd

echo "Total: $contador usuarios"

echo "============================"

echo "$dia - $hora - El usuario $USER ha solicitado un informe de usaurios." >> /tmp/logeventos
