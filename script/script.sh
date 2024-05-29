CREACION="gsutil mb -p sit-devops-training -c STANDARD -l US -b on gs://sit-devops-training-bkt09
ETIQUETA1="gsutil label ch -l grupo:grupo-01 gs://sit-devops-training-bkt09"  
ETIQUETA2="gsutil label ch -l proyecto:golondrinas gs://sit-devops-training-bkt09"  
for i in {1..100}
do
        gsutil cp sinceramente.txt gs://sit-devops-training-bkt03/carpeta-$i/
done

#funcion archivos vacios
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

##Generacion de log
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

##decisiondearchivos

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
