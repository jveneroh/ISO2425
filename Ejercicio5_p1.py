"""
Ejercicio 5 P1
Autor: Jesús Venero Hormigo
Fecha: 14-05-2025
"""

nombre_fichero = input('Introduce el nombre del fichero: ')
fichero = open(nombre_fichero, 'w')

while True:
    grupo = input('Introduce el nombre del grupo. Poniendo NO finalizas: ')
    if grupo =='NO':
        break
    fichero.write(grupo + '\n')

print('Fichero creado correctamente')