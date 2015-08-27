---
lang:   PT-BR
title:  Elemento
answer: ^(12|35|47)$
load:   ticket = [12, 47, 35]
ok:     Ok
error:  Quase
---

Então, nós guardamos os nossos números da loteria dentro de uma variável ticket. Como fazemos para
coloca-los pra fora denovo?

Nós já vimos que nós podemos obter o mairor número com o método __max__. De forma similar, você pode obter
o primeiro, __first__, ou o último, __last__, elemento da lista.
Mas e se você quiser um elemento específico?

### [ ]
Ruby usa colchetes [ ] para obter um elemento alvo.
Os colchetes são muito comuns em Ruby.
Eles são como miras usadas para alinhar ao alvo. Exatamente.
Esses colchetes significam: "Eu estou olhando pelo ____". Pronto, mire.

Vamos pegar todos os nossos números da loteria:

    puts ticket[0]
    puts ticket[1]
    puts ticket[2]

Por que nós usamos [0], [1], [2] ?

E não [1], [2] e [3] ? Isso é algum tipo de coisa zen japonesa ?
Não, nós, pessoas-computador, apenas gostamos de contar começando do zero. Isso não é algo apenas do Ruby,
este _índice com base zero_ é usado na maioria das linguagens de programação.

> Um pequeno lembrete: você pode usar o botão __Copy__ para copiar o exemplo para o editor.
