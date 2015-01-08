---
lang:   EN
title:  La Privada Colección de Dr. Dir
answer: \["\/comics\.txt"\]
ok:     
error:  
---

Acabas de listar todo lo existente en el directorio superior. El directorio ra&iacute;z, indicado
        por la barra en diagonal. Conteniendo algunos programas y otros tutoriales y semejantes.
    Entonces, &iquest;que es el m&eacute;todo Dir.entries? Bueno, es solo un m&eacute;todo &iquest;si?,
       entries es el m&eacute;todo llamado sobre la variable Dir.
       Y Dir tiene una colecci&oacute;n de m&eacute;todos para chequear los archivos de los directorios.
       Otra peque&ntilde;a cosa de la que no hemos hablado abiertamente. Argumentos de los m&eacute;todos, resaltados en verde.
    
            
Dir.entries __"/"__: Cualquier cosa listada luego de un m&eacute;todo
                es considerado acoplamiento.
            
print __poem__: Ves, print es un m&eacute;todo ordinario.
            Y el poema esta acoplado. Para ser impreso.
            
print __"pre", "event", "ual", "ism"__ posee varios argumentos,
                con comas entre ellos.
    
    Para listar solamente archivos de texto en el directorio: 
    Dir["/*.txt"]
