#!/bin/bash

clear

#read direccion esto no es así lo tengo que pasar como parametro cuando ejecuto el archivo

echo "Nombre primer subdirectorio:"

read direcion1

echo "Nombre segundo subdirectorio:"

read direcion2

 #dire= "$1"

#Se fija si existe direccion1 y en caso de que no, lo crea
  if test -d "$1/$direcion1" ; then 
 echo "existe"
   else 
   mkdir "$1/$direcion1"
  fi
#Se fija si existe direccion2 y en caso de que no, lo crea
	if test -d "$1/$direcion2"; then echo ""
	else #echo "dir2 NO Existe"
	mkdir  $1/$direcion2  # este comando realiza la accion de crear el directorio
	fi
 

echo "Archivo /etc/passwd - cantidad de líneas "  $( cat /etc/passwd | wc -l   ) #cuenta las lineas totales que hay en el archivo passwd   

echo "Proceso concluido, verifique el contenido de los subdirectorios."

cat /etc/passwd | awk 'NR<=10' >  $1/$direcion1/passwdINVERSO.txt #Este comando cat va a crear y escribir el archivo passwdINVERSO.txt, awk lo que hace es copiar las primeras 10 lineas del archivo passwd

sort -r -o $1/$direcion1/passwdINVERSO.txt $1/$direcion1/passwdINVERSO.txt #Esto reeordena el archivo passwdINVERSO.txt de manera alphavetica invertida usando sort -r y lo guarda en el mismo archivo usando -o, el funcionamiento es sort -r -o archivo_a_ordenar archivo_de_salida

cat  /etc/shadow | tail --line=20  >  $1/$direcion2/shadowINVERSO.txt #Este comando cat va a crear y escribir el archivo dir1.txt, awk lo que hace es copiar las ultimas 10 lineas del archivo shadow

sort -r -o $1/$direcion2/shadowINVERSO.txt $1/$direcion2/shadowINVERSO.txt #Esto reeordena el archivo shadowINVERSO.txt de manera alphavetica invertida usando sort -r y lo guarda en el mismo archivo usando -o, el funcionamiento es sort -r -o archivo_a_ordenar archivo_de_salida

# /root/Desktop/TP

