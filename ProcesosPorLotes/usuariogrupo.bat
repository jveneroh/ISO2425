@echo off
rem Autor: Jesús Venero Hormigo
rem Creacion de usuario y grupo
rem Fecha: 19-11-2024

set /P nombre_usuario="Indica el nombre de usuario que desee "
set /P contrasenia="Indica la contrasenia que desee "
set /P grupo="Indica el grupo al que pertenecera el usuario "

net user %nombre_usuario% %contrasenia% /add
net localgroup %grupo% /add
net localgroup %grupo% %nombre_usuario% /add

net user %nombre_usuario%
net localgroup %grupo%