---
lang:   ES
title:  to (be) or not to (be)
answer: 
load:   poema = "My toast has flown from my hand\nAnd my toast has gone to the moon.\nYada yada yada\n"
ok:     
error:  
---

Otra pequeña cosa sobre la que no hemos hablado abiertamente: los argumentos de los métodos.
¿Recuerdas cuando cambiamos el poema un poco? Usamos:
__poema.gsub("toast", "honeydew")__
    
El método gsub necesita dos argumentos, que le pasamos incluyendo dos strings entre paréntesis.
_Los argumentos le dicen al método exactamente qué hacer._

### Paréntesis
De hecho, la mayoría de las veces a Ruby no le importa si omites los paréntesis. Esto también habría funcionado:

__poema.gsub "toast", "honeydew"__

Ya hemos usado también otro método con un parámetro. Muchas veces, de hecho, aunque no era demasiado obvio:

    puts "Hola"
    puts("Hola")
    
Sí, __puts__ también es un método. Para Ruby es lo mismo usar puts con o sin paréntesis, pero la versión sin paréntesis es un poco más fácil de leer. ¡ Y ahorra tiempo !

> Así que la conclusión es que puedes hacer lo que quieras con los paréntesis,
> mientras tu código se lea fácilmente.

### to (be) or not to (be)
Si _to_ es un método y _be_ es un argumento, ahora sabemos la respuesta a esta pregunta milenaria.
Es una cuestión de preferencia si quieres _to be_ or _to(be)_.

¿Tienes ganas de más Shakespeare? Sigue leyendo.