---
lang:   EN
title:  Una Jirafa No Ha Robado el Sumario #7
answer: \[#.BlogEntry:0x[0-9a-f]+.*, #.BlogEntry:0x[0-9a-f]+.*\]
ok:     
error:  
class:  stretcher chapmark
---

Aha, estas aqu&iacute;. Y todo en una pieza. Todav&iacute;a vamos a hacer tu blog realidad, pero hasta entonces, vamos a revisar, &iquest;bien?
    
            
__Clases.__ Todo en Ruby es alg&uacute;n tipo de objeto. Las clases explican los objetos. Como ciertos objetos
                        trabajan. Por ejemplo, haces algunas entradas de blog y estos objetos est&aacute;n explicados en la clase BlogEntry.
            En otras palabras: los llamas objetos del tipo BlogEntry.
            
__Accessors__ son variables adosadas a un objeto que pueden ser usadas __fuera__ del objeto. (entry.time = Time.now)
            
__Variables de instancia__ son las mismas variables para accesos __dentro__ del objeto.
            Como en la definici&oacute;n de un m&eacute;todo. (@time = Time.now)
    
    Bueno, vamos a envolver las cosas, ni&ntilde;o. Aqu&iacute; esta el ultimo capitulo de la FASCINANTE &eacute;pica
        historia de Try Ruby! Ahora que ya has probado como todo funciona, &iquest;c&oacute;mo vas a
        usar eso alrededor de la casa y en tu tienda de comestibles? Eres una
        gran persona (una de mis favoritas), pero necesitas direcci&oacute;n.
    Vamos a terminar tu blog. Tienes entradas de blog, pero no un blog.
    Pon las entradas en un array: 
    blog = [entry, entry2]
