---
lang:   EN
title:  Tu le Has Enseñado al Blog a Rechazar lo Malo
answer: #.BlogEntry:0x[0-9a-f]+ ((@title|@mood|@time|@fulltext)=.*?, ){3}.*
ok:     
error:  
---

&iquest;Viste como usamos dentro de la clase el s&iacute;mbolo arroba? De este modo: @time = Time.now
    Fuera de la clase, usamos accesos (accessors): entry.time = Time.now Pero dentro __variables de instancia__: @time = Time.now
       Son exactamente lo mismo, pero expresado en dos partes diferentes de tu programa.
    tu blog ahora necesita un titulo, estado de &aacute;nimo y el post para funcionar. Cuando un nuevo BlogEntry es creado, el m&eacute;todo initialize
       es usado para chequear cualquier argumento para new. &iexcl;Uh, necesitamos tres argumentos!
    Prueba de nuevo con los tres.

    

    entry2
= BlogEntry.new( "I Left my Hoodie on the Mountain!", :confused, "I am
never going back to that mountain and I hope a giraffe steals it." )
