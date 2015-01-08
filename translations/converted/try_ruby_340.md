---
lang:   EN
title:  Sólo la Manecilla de la Hora
answer: \d+
ok:     
error:  
---

Estupendo, all&iacute; esta la hora. La hora exacta en la que agregaste la historieta al archivo. El mtime te devuelve un objeto Time de Ruby.
    Si s&oacute;lo quieres ver la hora que era, aprieta la flecha para arriba y cambia la l&iacute;nea a: 
    File.mtime("/Home/comics.txt").hour
