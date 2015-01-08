---
lang:   EN
title:  Mira Su Cara — La Transformación Ha Comenzado
answer: 
ok:     
error:  
---

El m&eacute;todo map recorre un array y reemplaza cada &iacute;tem con algo nuevo. &iquest;Dices que quieres reemplazar cada entrada de tu blog
        con el nombre de __Bruce Willis?__. Hazlo entonces: blog.map { "Bruce Willis" }
    Como el bloque siempre devuelve el string "Bruce Willis", eso es lo que obtienes. En el c&oacute;digo que acabas de usar, la entrada entry wfue reemplazada
        por solo el entry.mood.
    Ahora, quiero que hagas un popup con las entradas de tu blog. Yo no te voy a
                dar todo el c&oacute;digo. Solo te voy a dar una parte.
    
    blog.each do |entry|
            &nbsp;&nbsp;h2 entry.title
            &nbsp;&nbsp;p entry.fulltext
            end
    
    Ahora, yo espero que pongas el c&oacute;digo del popup alrededor y agregues un titulo con el nombre de tu blog usando h1. Como extra, tienes la hora de cada entrada para mostrar.
