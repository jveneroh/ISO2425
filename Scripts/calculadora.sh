#!/bin/bash
#
# Script Calculadora
# Autor: Jesús Venero Hormigo
# Fecha: 09-02-2025


clear

contador=-1

if [ $# -ne 2 ]; then

	echo "Debes de introducir dos parametros"
	exit

fi

if [ -f $1 ]; then

	echo "El archivo ya esta creado"
	exit

fi


while true; do

	contador=$(($contador+1))
	if [ $contador -eq $2 ]; then
		echo "Has superado el limite de intentos"
		echo "Te muestro el resultado del fichero y su ruta"
		pwd $1
		cat $1
		break
	fi
	echo "S. Para sumar"
	echo "R. Para la resta"
	echo "M. Para la multiplicacion"
	echo "D. Para la division"
	echo "X. Finalizar"
	read -p "Elige entre las anteriores opciones " opciones


	case $opciones in

		S)
			read -p "Dime el primer numero " numero1
			read -p "Dime el segundo numero " numero2
			echo $opciones $numero1 $numero2 >> $1
			res=$(($numero1+$numero2))
			echo "El resultado de la suma es $res"
		;;

		R)

			read -p "Dime el primer numero " numero1
			read -p "Dime el segundo numero " numero2
			echo $opciones $numero1 $numero2 >> $1
			res=$(($numero1-$numero2))
			echo "El resultado de la resta es $res"

		;;

		M)

			read -p "Dime el primero numero " numero1
			read -p "Dime el segundo numero " numero2
			echo $opciones $numero1 $numero2 >> $1
			res=$(($numero1*$numero2))
			echo "El resultado de la multiplicacion es $res"

		;;

		D)

			read -p "Dime el primero numero " numero1
			read -p "Dime el segundo numero " numero2
			echo $opciones $numero1 $numero2 >> $1
			res=$(($numero1/$numero2))
			echo "El resultado de la division es $res"

		;;

		X)

			echo "Antes de finalizar te muestro el archivo"
			pwd $1
			cat $1
			break

		;;

		*)

			echo "Opcion no valida"
			break

		;;

	esac

done
