---
lang:   PT-BR
title:  Colocando de forma diferente
answer: ^[0-9\.,-]{1,}$
ok:     Bem colocado
error:  
---

Você percebeu que se você digitou mais de uma fórmula, você só viu o resultado da última?
O que está acontecendo?

> Para tornar este site mais fácil de usar, eu disse ao Ruby para copiar o resultado do seu programa
> para a tela de saída ao topo. Então quando você digita uma fórmula, você consegue ver o resultado.
> __Mas apenas o último resultado.__ E apenas se a saída estiver vazia.

Então, quando você entrou com 2 ou mais fórmulas, o Ruby exibiu apenas o resultado da última fórmula.

É claro, você tem o poder de controlar a tela! Apenas digite __puts__ antes de cada fórmula
(com um espaço entre eles). Puts significa: *'coloque (put) alguma coisa na tela'*.

Tente isso:

    puts 4 * 10
    puts 5 - 12
    puts 30 / 4

Agora, remova o __puts__ da última fórmula e veja o que acontece.
