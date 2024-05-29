# <div align="center"> PROYECTO FINAL GRUPO 01 </div>
## <div align="center"> GOLONDRINAS </div>    

### INTEGRANTES GRUPO 01

<div align="center">

| INTEGRANTE                      | ACTIVIDADES REALIZADAS                                             |
|---------------------------------|--------------------------------------------------------------------|
|     1                           | ACT                                                                |
|     2  Yusef                    | Aportacion en Script, README e ideas                               |
|     3                           | ACT                                                                |
|     4                           | ACT                                                                |
|     5                           | ACT                                                                |

</div>

# Lineas de comandos

+ Creación de Bucket solicitado
~~~
CREACION="gsutil mb -p sit-devops-training -c STANDARD -l US -b on gs://sit-devops-training-bktX09
~~~
<p align="center">
<img src="images/creacion_bucket.png" width="500">
</p>

+ Asignación de Etiquetas al Bucket creado
~~~
ETIQUETA1="gsutil label ch -l grupo:grupo-01 gs://sit-devops-training-bkt09"  
ETIQUETA2="gsutil label ch -l proyecto:golondrinas gs://sit-devops-training-bkt09"  

~~~

<p align="center">
<img src="images/creaciondeetiquetas.png" width="500">
</p>

+ Creación del archivo vacio
~~~
touch sinceramente.txt
~~~

+ Creación de las carpetas y copia de los archivos vacios en cada una de las carpetas creadas.

~~~

#!/bin/bash

for i in {1..100}
do
        gsutil cp sinceramente.txt gs://sit-devops-training-bkt03/carpeta-$i/
done


~~~

<p align="center">
<img src="images/creaciondecarpetas.png" width="500">
</p>

<p align="center">
<img src="images/evidenciacarpetas.png" width="500">
</p>

+ Función que indique en qué carpetas están los archivos no vacíos de nombre sinceramente.txt

~~~

#!/bin/bash
vacio(){
sleep 0.001 
}
archivo(){
        echo "En carpeta-$i hay un archivo"

}
for i in {1..100}
do
variable=$(gsutil du gs://sit-devops-training-bkt09/grupo-01/carpeta-$i/sinceramente.txt)
#echo "La variable tiene $variable"
if [ "$variable" = "0            gs://sit-devops-training-bkt09/grupo-01/carpeta-$i/sinceramente.txt" ];
then

        vacio

else
        archivo

fi
done
genera_log(){

GRUPO="Grupo-01"
DATE=$(date +"%d%m%Y-%H%M")
DISTRO=$(lsb_release -d)
USER=$("whoami")

        touch "$GRUPO"-"$DATE".log

        echo "$GRUPO" >> "$GRUPO"-"$DATE".log
        echo "$DISTRO" >> "$GRUPO"-"$DATE".log
        echo "$USER" >> "$GRUPO"-"$DATE".log

}

genera_log



echo "Quisieras ver los mensajes? si / no"

read -p "> " RESPUESTA

        IMPRIME=$(gsutil cat gs://sit-devops-training-bkt09/grupo-01/carpeta*/*.txt)

valida(){


 if [ "$RESPUESTA" = "si" ]
 then

echo "Estos son los mensajes"

im_mns

 else

echo " !Ok Hasta Luego¡ "

 fi

}

im_mns(){

                while IFS= read -r line
                do
                                echo "$line"
                                sleep 15
                                done<$IMPRIME 
}


valida

~~~
