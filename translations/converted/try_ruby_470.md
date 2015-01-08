---
lang:   EN
title:  Un Objeto, Ese Estupendo Paquete Pequeño
answer: #.BlogEntry:0x[0-9a-f]+ ((@title|@mood|@time|@fulltext)=.*?, ){3}.*
ok:     
error:  
---

Sigue adelante y pon la hora: 
    entry.time = Time.now
    Y el estado de animo: 
    entry.mood = :sick
    Y el anuncio en si: 
    entry.fulltext = "I can't believe Mt. Hood was stolen! I am speechless! It was stolen by a giraffe who drove away
       in his Cadillac Seville very nonchalant!!"
    Para ver toda la configuraci&oacute;n, simplemente escribe en el prompt: 
    entry.
