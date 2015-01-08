---
lang:   EN
title:  Mi Comicas, Tu Comicas
answer: nil
ok:     
error:  
---

&iexcl;De acuerdo! Podemos comenzar a usar archivos para guardar cosas. Esto es excelente
                porque normalmente cuando salimos de Ruby, todas nuestras variables desaparecer&aacute;n.
                Ruby, por si mismo, olvida estas cosas. Pero si salvamos cosas en archivos,
                podemos leer esos archivos en futuras escapadas a Ruby.
    Hey, y &iquest;adivina que? &iexcl;El directorio /Home es tuyo! &iexcl;Te lo entrego a ti! &iexcl;Soy generoso! Hagamos una copia del archivo de la historieta.
    Querr&aacute;s hacer lo siguiente: 
    FileUtils.copy('/comics.txt', '/Home/comics.txt')
    
__Si ya has creado el archivo, usa File.delete('/Home/comics.txt') para arrojarlo a la basura.__
