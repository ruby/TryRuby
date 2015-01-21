---
lang:   ES
title:  Elemental
answer: ^(12|35|47)$
load:   boleto = [12, 47, 35]
ok:     Correcto
error:  Casi
---

Hemos almacenado nuestros números de lotería en la variable boleto. ¿Qué tal si los sacamos otra vez?

Ya hemos visto que podemos obtener el número más alto con __max__. De igual modo, podemos
obtener el primer (__first__) o último (__last__) elemento de la lista.
Pero, ¿y si queremos un elemento concreto?



### [ ]
Ruby usa los paréntesis cuadrados [ ] para apuntar a un elemento.
Los paréntesis cuadrados son muy comunes en Ruby.
Son como una mirilla para apuntar a un objetivo. Exactamente.
Estos paréntesis significan: "Estoy buscando a ___". Preparados, apunten.

Obtengamos todos nuestros números de lotería:

    puts boleto[0]
    puts boleto[1]
    puts boleto[2]

¿Por qué usamos [0], [1], [2] y no [1], [2] y [3]? 
¿Es algún tipo de idea Zen japonesa?
No, a nosotros los programadores nos gusta empezar a contar desde cero. No es solo una cosa de Ruby,
en la mayoría de lenguajes de programación los índices de este tipo suelen empezar en cero.

> Un pequeño recordatorio: puedes usar el botón __Copy__ para copiar el ejemplo al editor.
