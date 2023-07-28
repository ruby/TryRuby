---
lang:   ES
title:  Tirabuzón de Métodos en Cadena
answer: My toast has flown from my hand
load:   prev
ok:     Bien hecho, amigo mío.<br/>El método join cogió el array de líneas y las puso juntas en un string.
error:  
---

¿Qué ves? ¿Qué ha pasado? Has escrito __poema.lines.reverse__ y ¿qué ha pasado?

Han pasado dos cosas. Has convertido el poema en una lista usando lines.
Lines decide la forma en la que un string se divide y lo convierte en un Array.

Luego, has dado la vuelta a esa lista. Tenías cada una de las líneas. Les diste la vuelta. Eso es todo.

Añadamos un nuevo método al final de la cadena:

    puts poema.lines.reverse.join

Combinar métodos así se llama _encadenar métodos_.
