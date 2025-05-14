"""
Ejercicio 5 P2
Autor: Jesús Venero Hormigo
Fecha: 14-05-2025
"""
import os

nombre_fichero = input('Introduce el nombre del fichero: ')

if os.path.exists(nombre_fichero):
    fichero = open(nombre_fichero, 'r')
    grupos = []
    for linea in fichero:
        grupos.append(linea.strip())
else:
    print('El fichero no existe')
    exit()

while True:
    print('Crear todos los grupos leidos en el fichero')
    print('Pedir grupo si existe mostrar informacion')
    print('Pedir grupo si existe lo elimina si no mostrar mensaje')
    print('Salir del programa...')
    opcion = input('Introduce una opcion: ')

