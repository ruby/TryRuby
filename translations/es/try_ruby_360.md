---
lang:   ES
title:  A buen fin no hay mal tiempo
answer: A buen fin no hay mal tiempo
ok:     Cierto
error:  Usa 1605 como segundo parámetro
load:   prev
---

Bien, tenemos ciertos datos de internet, hemos seleccionado lo que queríamos y lo hemos imprimido en pantalla.
¿Qué queda por mejorar? Podríamos poner más bonitos los resultados. Por ejemplo,
añadir el año, y alinear los títulos y años.

Eso implica imprimir varios valores en una línea. Ruby tiene una manera muy limpia de hacerlo.
Es como imprimir un string como: __puts "Hola, me llamo Juan"__.
Pero en lugar del valor literal _Juan_ podemos usar el valor de una variable.

Primero, reemplazamos __Juan__ con __#{}__. Si Ruby ve un símbolo de almohadilla # seguido de una llave de abrir {, buscará una variable entre la primera llave y la siguiente llave de cerrar }.
Así que podríamos usar esto: __"Hola, me llamo #{nombre}"__.

Cambiemos nuestro código un poco:

    def imprimir_obras(anyo_desde, anyo_hasta)
      get_shakey["William Shakespeare"]
        .select { |k, v|
          anyo_desde <= v["terminado"] &&
          anyo_hasta   >= v["terminado"]
        }.each { |k, v|
          puts "#{v["titulo"].ljust(30)} #{v["terminado"]}"
        }
    end
    imprimir_obras(1600, 1605)

He añadido __.ljust(30)__ al título. De este modo, el título se _justifica a la izquierda_ con una longitud mínima de 30 caracteres, para que los años se alineen y quede más bonito.

A ver si puedes cambiar la salida del programa para que las obras se muestren así: __1600 -> Como gustéis__

__¿A buen fin no hay mal tiempo?__ Todavía no hemos terminado, pero !la meta está a la vista!
