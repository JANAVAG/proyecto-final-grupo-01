# <div align="center"> PROYECTO FINAL GRUPO 01 </div>
## <div align="center"> GOLONDRINAS </div>    

### INTEGRANTES GRUPO 01

<div align="center">

| INTEGRANTE                      | ACTIVIDADES REALIZADAS                                             |
|---------------------------------|--------------------------------------------------------------------|
|     1                           | ACT                                                                |
|     2                           | ACT                                                                |
|     3                           | ACT                                                                |
|     4                           | ACT                                                                |
|     5                           | ACT                                                                |

</div>

# Lineas de comandos

+ Creación de Bucket solicitado
~~~
CREACION="gsutil mb sit-devops-training -c STANDARD -l US -b on gs://sit-devops-training-bktXX"  
~~~
+ Asignación de Etiquetas al Bucket creado
~~~
ETIQUETA1="gsutil label ch -l grupo:grupo-01 gs://sit-devops-training-bktXX"  
ETIQUETA2="gsutil label ch -l proyecto:golondrinas gs://sit-devops-training-bktXX"  
~~~
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
