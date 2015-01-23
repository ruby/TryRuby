---
lang:   ES
title:  Dar y recibir
answer: \d+
ok:     Perfecto.
error:  
---

La mayoría de los métodos no solo reciben parametros de entrada, pero también __devolverán algo__.
He cambiado tu método un poco para que te devuelva un valor. Pruébalo:

    def domar( numero_de_fierecillas )
      numero_de_fierecillas.times {
        puts "Domé una fierecilla"
      }
      return numero_de_fierecillas
    end

    puts domar(3)

### Return
Y cómo te estás volviendo tan experto y avanzado, una consejo más:
puedes omitir la palabra __return__ de la última línea del método.
Ruby automágicamente devolverá el último valor que se haya usado dentro del método.

Así que podemos cambiar la última línea a esto: __numero\_de\_fierecillas__.

Pero como el método __.times__ también devuelve el __numero\_de\_fierecillas__ podemos eliminar la última línea completamente.
¡ Resulta que nuestra versión original del método ya era la que queríamos !
