---
lang:   ES
title:  Un Diminuto Libro En Blanco
answer: ^(esplendido|muy_bueno|mediocre|malo|abismal)$
load:   books = {}
ok:     Sí, eso es una nueva reseña
error:  Usa uno de :esplendido, :muy_bueno, :mediocre, :malo, :abismal. No te olvides los dos puntos.
---

Has creado un __hash__ vacío. Un hash es como un array, salvo que cada uno de sus elementos tiene un nombre.

Vamos a meter algunas mini-reseñas de libros en nuestro nuevo hash. Aquí está nuestro sistema de puntuación:

- :esplendido &rarr; una obra maestra
- :muy\_bueno &rarr; lo he disfrutado, sí
- :mediocre &rarr; genial y terrible a partes iguales
- :malo &rarr; notablemente malo
- :abismal &rarr; siniestro total

Para puntuar un libro, pon el título entre paréntesis cuadrados y la puntuación después del igual. Por ejemplo:

    books["Gravitys Rainbow"] = :esplendido

> Ya es momento de contarte que las lecciones de TryRuby son independientes unas de otras.
> Así que si te vuelves loco escribiendo reseñas ahora, solo las podrás usar en esta lección.
> Si quieres usar tus reseñas en la siguiente lección, te recomiendo que las copies y las pegues.
> Pero no te preocupes demasiado, cada lección tiene suficiente contenido predefinido para que juegues con él.
