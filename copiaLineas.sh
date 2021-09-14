#!/bin/bash

clear

read direccion

if   test -d "$direccion/dir1" ; then  
	if test -d "$direccion/dir2"; then echo ""
	else #echo "dir2 NO Existe"
	mkdir  $direccion/dir2  # este comando realiza la accion de crear el directorio
	fi
else if test -d "$direccion/dir2"; then 
	mkdir  $direccion/dir1  # este comando realiza la accion de crear el directorio
#En caso de no existir el directorio lo crea
	else	
	mkdir  $direccion/dir1  # este comando realiza la accion de crear el directorio
	mkdir  $direccion/dir2  # este comando realiza la accion de crear el directori
fi
fi


cat /etc/passwd | awk 'NR<=10' >  $direccion/dir1/dir1.txt #Este comando cat va a crear y escribir el archivo dir1.txt, awk lo que hace es copiar las primeras 10 lineas del archivo passwd
cat /etc/passwd | tail --line=5  >>  $direccion/dir1/dir1.txt #Este comando cat va a crear y escribir el archivo dir1.txt, awk lo que hace es copiar las ultimas 5 lineas del archivo passwd
cat /etc/passwd | wc -l  >>  $direccion/dir1/dir1.txt #este comando wc -l cuenta la cantidad de lineas totales del archivo passwd

cat /etc/shadow | awk 'NR<=5' >  $direccion/dir2/dir2.txt #Este comando cat va a crear y escribir el archivo dir1.txt, awk lo que hace es copiar las primeras 5 lineas del archivo shawod
cat /etc/shadow | tail --line=10  >>  $direccion/dir2/dir2.txt #Este comando cat va a crear y escribir el archivo dir1.txt, awk lo que hace es copiar las ultimas 10 lineas del archivo shadow

cat /etc/shadow | wc -l   >>  $direccion/dir2/dir2.txt #este comando wc -l cuenta la cantidad de lineas totales del archivo shadow

# /root/Desktop/TP




