---
lang:   PT-BR
title:  Cachos de Métodos Encadeados
answer: Minha torrada voou da minha mão
load:   prev
ok:     Bem mostrado, meu amigo!<br/>O método join pega este array de linhas e junta todas elas em uma string.
error:  
---

Então, o que você vê? O que aconteceu aqui? Você digitou __poema.lines.reverse__ e o que aconteceu?

Duas coisas aconteceram. Você tornou o poema em uma lista usando o método __lines__.
__Lines__ decide a forma como a string será dividida e converte isso em um array.

Então, você inverteu esta lista. Você tinha cada linha. Você inverteu elas. É isso.

Vamos colocar mais um método ao final aqui:

    puts poema.lines.reverse.join

Combinando métodos desta forma é chamado de _encadeamento de métodos_.
