---
lang:   ES
title:  Todo en conjunto
answer: ^4$
ok:     Sí, Shakespeare escribió 4 obras en 1591
error:  La respuesta correcta para el año 1591 es 4
load:   prev
---

Supongamos que queremos saber los nombres y el número de obras escritas por Shakespeare en un año concreto.

Ruby nos permite seleccionar (__select__) valores de un hash. El método select utiliza un bloque
para definir qué tiene que seleccionar, y nos devuelve lo que encuentre.

Podemos entonces utilizar los resultados devueltos por __select__ en el metodo __each__ como antes
simplemente añadiendolo después del bloque para el select. Esto es otro ejemplo de encadenar métodos, 
que vimos con anterioridad al darle la vuelta al poema.

He preparado el método __cuenta\_obras__ para ti. Mira a ver si puedes averiguar cuántas obras
escribió Shakespeare en el año __1591__. Prueba esto:

    def cuenta_obras(anyo)
      s = get_shakey
      
      s["William Shakespeare"]
        .select { |k, v|
          v["terminado"] == anyo
        }.each { |key, val|
          puts val["titulo"]
        }.count
    end
    
    puts cuenta_obras(0)

¿Te has dado cuenta de cómo he encadenado el método count al final del método each?
Esto nos da un valor de retorno para el método __cuenta\_obras__.

Hay otra posibilidad de encadenar. ¿Ves esa solitaria linea: __s = get_shakey__?

Podrías añadir el __["William Shakespeare"].select { |k, v|__ a continuación de get_shakey
(no se necesita punto en este caso).

> Nota: en Ruby podrías escribir año con la ñ, pero parece que Opal, lo que usamos para ejecutar Ruby en el navegador tiene problemas con estos caracteres.