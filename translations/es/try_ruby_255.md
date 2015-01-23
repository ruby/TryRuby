---
lang:   ES
title:  ¿Quién da la vez?
answer: ^[0-9]$
ok:     Perfecto, justo a tiempo.
error:  Ejecuta el bloque entre 0 y 9 veces.
---

Como vimos en el primer ejemplo de un bloque (contando puntuaciones), podemos pasar una variable al bloque.
Qué valores __se le pasan__ es algo que determina el método que ejecuta el bloque.

Los valores __recibidos__ por el bloque se colocan en la variable que aparece al principio del bloque, entre las barras verticales: |

Probémoslo con este bloque:

    5.times { |vez|
      puts vez
    }

Aquí, el método __.times__ envía un valor a la variable __|vez|__. Pero date cuenta que la variable vez solo se conoce dentro del bloque.

> ¿Te has dado cuenta de que puedes partir el código en varias líneas? Lo hace más fácil de leer.
