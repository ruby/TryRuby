---
lang:   EN
title:  De Todos los Sumarios, el #3 esta aquí
answer: \{\}
ok:     
error:  
class:  stretcher chapmark
---

Buen espect&aacute;culo, mi amigo! El m&eacute;todo join toma la lista de l&iacute;neas revertidas y las pone juntas en un string.
         (Seguro, tambi&eacute;n podr&iacute;as haber usado to_s.)
    Tiempo de Revisi&oacute;n.
    
            
__Exclamaciones.__ M&eacute;todos pueden tener signos de exclamaci&oacute;n (y tambi&eacute;n de interrogaci&oacute;n) en
                sus nombres. No es la gran cosa. Prueba: poem.include? "my hand"

            
__Corchetes.__ Establece objetivos y busca cosas. Busca y reemplaza.
            
__Concatenar__ m&eacute;todos te permite hacer mas cosas juntas. Partir poem, revertirlo,
            reensamblarlo: poem.lines.to_a.reverse.join

    
    En este punto, querras manosear un poco m&aacute;s el poema. Una lista completa de m&eacute;todos
    String estan
    <!--<a href="http://www.whytheluckystiff.net/ruby/pickaxe/html/ref_c_string.html" target="_new">here</a>.-->
    <a href="http://ruby-doc.org/core/classes/String.html" target="_blank">ac&aacute;</a>.
    No temas y prueba algunos (como poem.downcase o poem.delete.)
    Cuando est&eacute;s listo para seguir adelante, escribe: 
    books = {}
