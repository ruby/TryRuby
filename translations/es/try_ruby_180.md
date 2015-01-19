---
lang:   EN
title:  Tirabuzón de Métodos en Cadena
answer: ^More still did (.+)
load:   prev
ok:     Bien hecho, amigo mío. El método join cogió el array de líneas y las puso juntas en un string.
error:  
---

¿Qué ves? ¿Qué ha pasado? Has escrito __poem.lines.reverse__ y ¿qué ha pasado?

Han pasado dos cosas. Has convertido el poema en una lista usando lines.
Lines decide la forma en la que un string se divide y lo convierte en un Array.

Luego, has dado la vuelta a esa lista. Tenías cada una de las líneas. Les diste la vuelta. Eso es todo.

Añadamos un nuevo método ahí al final:

    puts poem.lines.reverse.join("\n")

Combinar métodos así se llama _encadenar métodos_.
