---
lang:   ES
title:  La fierecilla domada
answer: ^tame
ok:     Bien, bien.
error:  
---

Ya sabes cómo usar Ruby totalmente. Quiero decir que tienes controlado lo esencial.
Simplemente tienes que conocer más métodos y probar bloques más complejos.

Pero hay una parte de Ruby que no hemos tratado: cómo hacer tus propios métodos.
__¡Ejem!__ Pongámonos a ello, pues.

Además de usar los métodos predefinidos por Ruby (como puts, sort, times), puedes definir
tus propios métodos. ¿Por qué es una buena idea? Por dos razones:

### Para hacer tu programa más corto
Si tienes que hacer la misma cosa en más de una parte de tu código, es más fácil poner ese trozo de código en un método aparte.
De esta manera, tu código será más corto.

### Para hacer tu código más fácil de leer
Supón que tu programa necesita hacer muchas cosas distintas.
__Podrías__ meter tódo el código en una sola pieza, pero sería muy difícil de leer y entender después.

En su lugar deberías dividir tu código en distintos métodos y darle a cada uno un nombre fácil de entender.
Te lo agradecerás a ti mismo después.

¿Cómo se define un método? Así:

    def domar( numero_de_fierecillas )
    end
