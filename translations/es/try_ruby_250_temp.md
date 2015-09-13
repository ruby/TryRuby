---
lang:   ES
title:  El Total
answer: \w+
ok:     ¡Requeteolé!
error:
---

Una de las impresionantes novedades que acabamos de usar es un __bloque__. Vamos a explorar 
un poco más en esta lección y en la siguiente. Pero básicamente, un bloque es un poco de código Ruby
rodeado de llaves ({}).

Probemos otro bloque:

    5.times { print "¡Olé! " }

Los bloques siempre se asocian a métodos. Por ejemplo el método __times__, que coge el bloque y ejecuta el código muchas veces (en nuestro ejemplo: cinco veces).
