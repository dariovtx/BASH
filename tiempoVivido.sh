#!/bin/bash
clear



fechaActual=$(date +"%d-%m-%Y" )

#echo "La Fecha actual es: $fechaActual" #esto muestra la fecha actual 

echo "Ingrese la fecha de nacimiento (dd-mm-aaaa):"

read fechaNacimiento #Esto es para guardar lo escrito por teclado formato: #31-07-1994

anio=$((fechaActual-fechaNacimiento))

echo $anio





#anio=  $(($(date ' +%D') - $fechaNacimiento ))


#echo "El año es $anio"


#varible=1
#echo $varible
#echo "Esta variable $varible"




#comandos utiles
#date +%G Año
#date +%m meses
#date +%d dia del mes
#date +%k   hour ( 0..23)
#date +%M Minutos
#date +%S Segundos

#echo -n "Hoy es "; date '+%G, %d de %B %Y'



#date;


#echo "Edad = " 
#echo "Días Vividos = " 
#echo "Horas Vividas = "
#echo "Minutos Vividos" 
#echo "Segundos Vividos "
#echo "so2011#" 

