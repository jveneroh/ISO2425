#!/bin/bash
#
# Script Agenda
# Autor: Jesús Venero Hormigo
# Fecha: 03-02-2025


clear



while true; do

	echo "a. Añadir una entrada"
	echo "b. Buscar por DNI"
	echo "c. Ver la agenda completa"
	echo "d. Eliminar todas las entradas de la agenda"
	echo "e. Finalizar"

	read -p "Elige entre las opciones anteriores " opcion

	case $opcion in

		a)
			clear
			read -p "Dime el dni " dni
			if grep "^$dni:" agenda.txt >/dev/null; then
				echo "El usuario existe"
			else
				read -p "Dime el nombre " nombre
				read -p "Dime el apellido " apellido
				read -p "Dime la localidad " localidad
				echo $dni:$nombre:$apellido:$localidad >> agenda.txt
			fi
		;;

		b)
			clear
			read -p "Dime el dni " dni
			if grep "^$dni:" agenda.txt > /dev/null; then
				dni2=$(grep $dni agenda.txt | cut -d ":" -f 1)
				nombre=$(grep $dni agenda.txt | cut -d ":" -f 2)
				apellidos=$(grep $dni agenda.txt | cut -d ":" -f 3)
				localidad=$(grep $dni agenda.txt | cut -d ":" -f 4)
				echo "La persona con dni numero $dni2 es: $nombre $apellidos, y vive en $localidad "
			else
				echo "Error dni no encontrado"
			fi
		;;

		c)
			clear
			if [ -s agenda.txt ]; then
				cat agenda.txt
			else
				echo "Agenda vacia"
			fi
		;;

		d)
			clear
			> agenda.txt
		;;

		e)
			clear
			echo "Saliendo del programa..."
			break
		;;

		*)
			echo "Opcion incorrecta ponga una de las anteriores"

	esac

done



