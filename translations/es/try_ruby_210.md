---
lang:   ES
title:  Más mini-reseñas
answer: [3-9]
load:   libros = {"El Arco Iris de Gravedad" => :esplendido}
ok:     Ves, el método length funciona con strings, arrays y hashes.
error:
---

Sigue, rellénalo con reseñas. Y, si quieres ver la lista entera, teclea: __puts libros__

Las puntuaciones son: :esplendido, :muy_bueno, :mediocre, :malo y :abismal

Estas puntuaciones no son strings. Cuando pones dos puntos delante de una palabra, obtienes un __símbolo__.
Los símbolos son más baratos que los strings (en cuanto a memoria del ordenador). Si usas una palabra muchas veces
a lo largo de tu programa, mejor usa un símbolo. En lugar de tener miles de copias de esa palabra en memoria, 
el ordenador solamente almacenará el símbolo __una vez__.

Y más importante, un símbolo indica que no se trata de una palabra cualquiera, sino de algo que tiene significado para tu programa.

Introduce 2 reseñas más, usa __libros.length__ para ver cuántas reseñas tienes en el hash:

    libros["El fin profundo"]  = :abismal
    libros["Colores vivientes"] = :mediocre
    
    puts libros
    
    puts libros.length
