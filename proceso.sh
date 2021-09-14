#!/bin/bash


clear

ps

echo " “Generando el listado de archivos que comienzan con letra “f”"


nohup find / -name "f*"  | tee /root/Desktop/TP/efe.txt &>/dev/null &  #esto va a buscar todos los archivos que comiencen con f y los va a guardar en efe.txt
jobs
ps





