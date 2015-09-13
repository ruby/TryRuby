---
lang:   ES
title:  El Objeto, ese Genial Pequeño Paquete
answer: Blurb:
ok:     Blurb actualizado
error:  
load:   prev;blurb1=Blurb.new;blurb1.contenido="¡El Everest ha sido robado!"
---

Ve y fija la hora y el ánimo del Blurb<sup>TM</sup>:

    blurb1.tiempo = Time.now
    blurb1.animo = :enfermo
    
    puts blurb1
