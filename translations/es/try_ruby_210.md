---
lang:   ES
title:  Más mini-reseñas
answer: [3-10]
load:   books = {"Gravitys Rainbow" => :esplendido}
ok:     Ves, el método length funciona con strings, arrays y hashes.
error:
---

Sigue, rellenalo de reseñas. Y, si quieres ver la lista entera, teclea: __puts books__

Las puntuaciones son

Again, the ratings are: :esplendido, :muy_bueno, :mediocre, :malo y :abismal

Estas puntuaciones no son string. Cuando pones dos puntos delante de una palabra, obtienes un __símbolo__.
Los símbolos son más baratos que los strings (en cuanto a memoria del ordenador). Si usas una palabra muchas veces
a lo largo de tu programa, mejor usa un símbolo. En lugar de tener miles de copias de esa palabra en memoria, 
el ordenador solamente almacenará el símbolo __una vez__.

Y más importante, un símbolo indica que no se trata de una palabra cualquiera, sino de algo que tiene significado para tu programa.

Introduce 2 reseñas más, usa __books.length__ para ver cuántas reviews tienes en el hash:

    books["The deep end"]  = :abismal
    books["Living colors"] = :mediocre
    
    puts books
    
    puts books.length
