---
lang:   ES
title:  Hashes como Parejas
answer: ^\[".*"\]
load:   prev
ok:     Encontraste las claves
error:  
---

Ten en cuenta que los hashes no guardan las cosas en orden. Ese no es su trabajo. Simplemente emparejan dos cosas: una __clave__ y un __valor__.

En tus reseñas, el título del libro es la clave, y la puntuación es el valor.

Si quieres ver solo los títulos de todos los libros que has reseñado:

    libros.keys

Puedes probar también con .values en lugar de .keys
