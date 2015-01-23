---
lang:   ES
title:  Espera, ¿me gustó El Arco Iris de Gravedad?
answer: ^(esplendido|muy_bueno|mediocre|malo|abismal)$
load:   libros = {"El Arco Iris de Gravedad" => :esplendido, ""El fin profundo"" => :abismal, "Colores vivientes" => :mediocre}
ok:     Me gustó mucho
error:  
---

Una gran cosa de Ruby es que normalmente se reutilizan los nombres, lo que significa que hay menos nombres que memorizar.

Recuerda cómo se obtenían elementos de un array usando un número:
__puts boleto[1]__.

Para un hash, funciona igual, excepto que no usamos un número para obtener un elemento, sino un nombre.

Así que si quieres consultar una de tus antiguas reseñas, pon el título en el cuadrado. Pero no pongas un igual.
Así:

    puts libros["El Arco Iris de Gravedad"]
