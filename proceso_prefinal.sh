#!/bin/bash


clear

ps

echo " “Generando el listado de archivos que comienzan con letra “f”"


find / -name "f*"   | tee ./efe.txt | bg  #esto va a buscar todos los archivos que comiencen con f y los va a guardar en efe.txt, el comando bg lo coloca en segundo plano
#corregir error que muestra en terminal ./proceso.sh: line 11: bg: no job control




ps





