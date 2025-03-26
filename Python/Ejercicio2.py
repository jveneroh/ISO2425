"""
Ejercicio 2
Fecha: 26-03-2025
Autor: Jesús Venero Hormigo
"""

import os
import shutil

ficheros = []
rutas = []

fichero = open("rutas.txt", "r")
lineas = fichero.readlines()
for i in lineas:
    ruta = i.strip()
    if os.path.isfile(ruta):
        ficheros.append(ruta)
    elif os.path.isdir(ruta):
        rutas.append(ruta)

while True:
    print("A. Pedir nombre de fichero y eliminarlo.")
    print("B. Pedir nombre de directorio y mostrar su información.")
    print("C. Pedir nombre de fichero, nombre de destino y copiarlo en dicho destino.")
    print("D. Mostrar lista elegida por el usuario")
    print("E. Salir")
    opcion = input('Itroduce la letra de la opcion que quieras realizar: ')

    match opcion:
        case 'A':
            fich = input("Introduzca el nombre de un fichero: ")
            os.system(f"rm -f {fich}")
            ficheros.remove(fich)
        case 'B':
            directorio = input("Introduzca el nombre de un directorio: ")
            informacion = os.system(f"ls -laR {directorio}")
            print(informacion)
        case 'C':
            nombre = input("Introduzca un el nombre del fichero: ")
            destino = input("Introduzca el nombre del fichero, con la ruta destino: ")
            shutil.move(nombre, destino)
        case 'D':
            print("1 para mostar la lista de ficheros")
            print("2 para mostar la lista de directorios")
            opcion = input("Introduzca una opción: ")
            if opcion == "1":
                print(ficheros)
            if opcion == "2":
                print(rutas)
        case 'E':
            print('Saliendo del programa')
            break
        case _:
            print('Opcion no valida')
