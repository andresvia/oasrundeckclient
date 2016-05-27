# oasrundeckclient

## ¿Qué hace esto?

 - Crea al usuario rundeck y copia la llave publica.
 - Al desinstalarse este paquete se borra el usuario de rundeck.
 - Maneja el archivo de sudoers del usuario Rundeck.

*Para distrubuir una nueva llave publica del nodo Rundeck central*

 - Inserte la (o las) llave(s) publica(s) en el archivo: `package/os/home/rundeck/.ssh/authorized_keys`.
 - Creé un release de este paquete e instálelo los hosts que quiere controlar por medio de Rundeck.
