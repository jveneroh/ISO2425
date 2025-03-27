"""
Ejercicio 2
Fecha: 26-03-2025
Autor: Jesús Venero Hormigo
"""

import os
import shutil

if not os.path.exists("rutas.txt"):
    print("El archivo rutas.txt no existe. Crealo y ejecuta de nuevo el programa")
    exit()

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
            if os.path.isfile(fich):
                os.system(f"rm -f {fich}")
                ficheros.remove(fich)
            else:
                print('El archivo no existe.')
        case 'B':
            directorio = input("Introduzca el nombre de un directorio: ")
            if os.path.isdir(directorio):
                informacion = os.system(f"ls -laR {directorio}")
                print(informacion)
            else:
                print('El directorio no existe.')
        case 'C':
            nombre = input("Introduzca un el nombre del fichero: ")
            if os.path.isfile(nombre):
                destino = input("Introduzca el nombre del fichero, con la ruta destino: ")
                if os.path.isdir(os.path.dirname(destino)):
                    shutil.move(nombre, destino)
                    print('Archivo movido a destino correctamente')
                else:
                    print('La ruta destino no existe')
            else:
                print('El archivo no existe')
        case 'D':
            print("1. Para mostrar la lista de ficheros")
            print("2. Para mostrar la lista de directorios")
            opcion = input("Introduzca una opción: ")
            if opcion == "1":
                if ficheros:
                    print(ficheros)
                else:
                    print('No existen ficheros en la lista')
            elif opcion == "2":
                if rutas:
                    print(rutas)
                else:
                    print('No existen rutas en la lista')
            else:
                print('Opcion no valida')
        case 'E':
            print('Saliendo del programa')
            break
        case _:
            print('Opcion no valida')
