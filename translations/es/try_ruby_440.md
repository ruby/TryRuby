---
lang:   ES
title:  Tengo hambre
answer: ^No tengo hambre
ok:     Sí
error:  ¡ No es posible tener hambre a las 10 AM !
---

Bien, esto va avanzando maravillosamente. Esto te puede parecer simple, pero recuerda que ¡ no sabías __nada de nada de Ruby__ hace 15 minutos !

Ultimo paso. Juntémoslo todo, ¿de acuerdo? Hagamoslo repicar todo como un conjunto de brillantes campanas en la playa bajo una gloriosa luz del sol.

Definamos dos métodos y luego tomaremos una decisión:

    def hambre?(hora_del_dia)
      puts "Tengo hambre"
      true
    end
    
    def come(que)
      puts "Me como un #{que}\n"
    end
    
    come 'manzana' if hambre?(14)
    
    come 'manzana' if hambre?(10)

Mira a ver si puedes cambiar el método __hambre?__ para que muestre __"No tengo hambre"__ y devuelva false, si es antes de las 12.