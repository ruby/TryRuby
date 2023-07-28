---
lang:   ES
title:  ¿Eres severo?
answer: :mediocre
load:	libros = {"El Arco Iris de Gravedad" => :esplendido, "El fin profundo" => :abismal, "Colores vivientes" => :mediocre, "Abejorros" => :mediocre}
ok:     ¡Genial! Has hecho un marcador de puntuaciones.
error:  
---

¿Estás siendo severo e injusto con tus puntuaciones? Hagamos la cuenta con un nuevo hash __puntuaciones__:

Veamos, contemos tus reseñas. Sigue conmigo. Teclea:

    puntuaciones = Hash.new {0}
    
    libros.values.each { |puntuacion|
      puntuaciones[puntuacion] += 1
    }
    
    puts puntuaciones

La linea vertical en el código es el carácter "pipe", probablemente lo encontrarás en la tecla del 1 (pulsa Alt gr y el 1).

El _+=1_ significa: incrementa el valor en 1.

No te preocupes si no entiendes todo lo que está pasando. Todo será explicado en su momento.

