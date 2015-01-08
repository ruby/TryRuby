---
lang:   EN
title:  Rizos de Metodos Concatenados
answer: 
ok:     
error:  
---

Dime, que es lo que ves? Que paso ac&aacute;? Escribiste poem.lines.to_a.reverse y &iquest;que pas&oacute;?
    Dos cosas pasaron. Convertiste poem en una lista usando
lines.to_a. lines decide la forma en que
el string se divide, luego to_a lo
convierte en un Array. (__To a__rray.) Diferentes m&eacute;todos, como
bytes y chars pueden ser usadas en lugar de
lines. Usando lines, Ruby retornar&aacute; cada l&iacute;nea de poem.
    Luego, tu revertiste, reversed, esa lista. Ten&iacute;as cada l&iacute;nea. Las revertiste. Eso es todo.
    Vamos a hilar un m&eacute;todo m&aacute;s al final de todo esto: 
    print poem.lines.to_a.reverse.join
    
