---
lang:   PT-BR
title:  E agora para a conclusão surpreendente
answer: não é igual a 100$
ok:     Isso é melhor
error:  Isso não pode estar certo
---

Você viu os dois sinais de igual em __'abc' == 'def'__ ?

Este __==__ significa __é igual a__.
Um único sinal de igual que nós vimos antes significa __atribua o valor a variável__.

Para tornar isto um pouco mais confuso, você pode usar a atribuição após um método if, por exemplo:

    a = 0

    if a = 100
      puts "A expressão é verdadeira, mas agora a é: #{a}"
    else
      puts "#{a} não é igual a 100"
    end

Troque o = por == e veja o que acontece.

Eu posso garantir que você irá esquecer de digitar o segundo sinal de igual regularmente. Eu também
esqueço dele as vezes.

### else
No código acima eu adicionei o else a expressão. Esta parte será executada quando a
__expressão teste do if__ retornar false.

> Existem mais variações para este tema if-then-else. Você pode ler mais
> <a href="http://www.ruby-doc.org/core/syntax/control_expressions_rdoc.html" target="_blank">aqui</a>.
