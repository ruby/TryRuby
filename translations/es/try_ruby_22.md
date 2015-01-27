---
lang:   ES
title:  Mostrándolo diferente
answer: ^[0-9\.,-]{1,}$
ok:     Bien dicho
error:  
---

¿Has notado que si escribes más de una fórmula, solo ves la respuesta de la última?
¿Qué pasa?


> Para hacer esta web más sencilla de usar, le he dicho a Ruby que copie el resultado de tu programa en la pantalla 
> output de arriba. Para que cuando escribas una fórmula veas los resultados.
> __Pero solo el último resultado__. Y solo si la pantalla output está vacía.

Así que cuando introdujiste dos o más fórmulas, Ruby solamente mostró el resultado de la última.

¡Por supuesto, tienes la capacidad de controlar la pantalla! Simplemente escribe __puts__ antes de cada fórmula
(dejando un espacio entre ellos). Puts significa: *'pon algo en la pantalla'

Prueba esto:

    puts 4 * 10
    puts 5 - 12
    puts 30 / 4

Ahora quita el puts de la última fórmula y mira qué pasa.
