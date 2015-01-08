---
lang:   EN
title:  Agilizando
answer: 
ok:     
error:  
---

Genial, tu blog es impresionante. Hey, hagamos las cosas algo mas f&aacute;cil. No querr&aacute;s
                poner la hora asi todas las veces que postees. Solo quieres escribir el titulo,
                el contenido y el emoticon r&aacute;pido, &iquest;verdad?
    Vamos a agregar un m&eacute;todo initialize.
    
    class BlogEntry
            &nbsp;&nbsp;def initialize( title, mood, fulltext )
            &nbsp;&nbsp;&nbsp;&nbsp;@time = Time.now
            &nbsp;&nbsp;&nbsp;&nbsp;@title, @mood, @fulltext = title, mood, fulltext
            &nbsp;&nbsp;end
            end
    
    Una vez que lo hallas escrito, prueba hacer una nueva entrada: 
    BlogEntry.new
