"""
Ejercicio infoUsers.py
Fecha: 25-03-2025
Autor: Jesús Venero Hormigo
"""

import os
import cpuinfo as cpu

if os.getgid() != 0:
    print('El script se debe de ejecutar como root')
    exit()

while True:
    print('1. Muestra información del SSOO e información de la CPU')
    print('2. Pedir un usuario. Si existe, se muestra información sobre él, si no, se crea.')
    print('3. Pedir al usuario un directorio. Comprobar si existe y si es un directorio, en caso contrario, lo crea.')
    print('4. Salir')

    opcion = int(input('Introduce una opcion: '))
    match opcion:
        case 1:
            print('Informacion del sistema operativo')
            print(os.uname().sysname)
            print("Información de la CPU:")
            print(cpu.get_cpu_info()["brand_raw"])
        case 2:
            cont = 0
            usu = input('Dime el nombre del usuario: ')
            r = open("/etc/passwd", "r")
            lineas = r.readlines()
            for i in lineas:
                if i.split(':')[0] == usu:
                    cont = 1
                    print('El usuario existe su informacion es: ',i)
            if cont == 0:
                print("El usuario no existe")
                os.system("useradd " + usu)
                print('Usuario creado')
        case 3:
            directorio = input("Ingrese un directorio: ")
            if os.path.exists(directorio) and os.path.isdir(directorio):
                print("El directorio existe")
            else:
                print("El directorio no existe")
                os.system("mkdir -p " + directorio)
                print('Directorio creado')
        case 4:
            print('Saliendo del programa...')
            exit()
        case _:
            print('Opcion no valida')
