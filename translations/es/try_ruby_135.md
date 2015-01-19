---
lang:   ES
title:  Elemental
answer: ^(12|35|47)$
load:   ticket = [12, 47, 35]
ok:     Correcto
error:  Casi
---

Hemos almacenado nuestros números de lotería en la variable ticket. ¿Qué tal si los sacamos otra vez?

Ya hemos visto que podemos obtener el número más alto con __max__. De igual modo, podemos
obtener el primer (__first__) o último (__last__) elemento de la lista.
Pero, ¿y si queremos un elemento concreto?



### [ ]
Ruby usa los paréntesis cuadrados [ ] para apuntar a un elemento.
Los paréntesis cuadrados son muy comunes en Ruby.
Son como una mirilla para apuntar a un objetivo. Exactamente.
Estos paréntesis significan: "Estoy buscando a ___". Preparados, apunten.

Obtengamos todos nuestros números de lotería:

    puts ticket[0]
    puts ticket[1]
    puts ticket[2]

¿Por qué usamos [0], [1], [2] y no [1], [2] and [3]? 
¿Es algún tipo de idea Zen japonesa?
No, a nosotros los programadores nos gusta empezar a contar desde cero. No es solo una cosa de Ruby,
este índice que empieza en cero se usa en la mayoría de lenguajes de programación.

> Un pequeño recordatorio: puedes usar el botón __Copy__ para copiar el ejemplo al editor.
