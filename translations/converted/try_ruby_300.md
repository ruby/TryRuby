---
lang:   EN
title:  Tu Propio Territorio
answer: 
ok:     
error:  
---

Ok, tienes una copia. Chequ&eacute;ala: Dir["/Home/*.txt"]
    Para agregar tu propia historieta a la lista, abramos el archivo en modo __append__.
    Empieza asi: 
    File.open("/Home/comics.txt", "a") do |f|.
