# CC30691020221-MPIP2
Project to show capabilities of MPI using a bruteforce algorithm against DES.

El archivo runbash.sh contiene el script para ejecutar todas las variaciones de las pruebas y generar un csv. Sin embargo, las lineas que tienen la intencion de ejecutar las pruebas con el algoritmo original están comentadas debido a que toman un tiempo muy elevado para llegar a una solución, y aún con los timeouts definidos se tardaría hasta un máximo de 3 horas en ejecutar. Para ejecutarlo basta con `bash runbash.sh`

De ser necesario, solamente se debe compilar bruteforce00 (1).c y bruteforce_original.c, con los outputs Bruteforce-Staggered y Bruteforce-Original respectivamente para que funcionen con el bash incluido. `mpicc bruteforce00 (1).c -o Bruteforce-Staggered`

Mas allá de eso, si se quisieran ejecutar sin ayuda del bashscript, los parámetros que recibe de entrada son:
* archivo de texto con texto cifrado en ascii code (usar de ejemplo los archivos crypt6,8 y 10).
* keyword utilizada para determinar si la clave es correcta. 
* Cantidad de cores
* Longitud de llave
* Opcional, no es parametro: colocar >> file.csv para generar un csv con los resultados de la ejecución.

