---
lang:   PT-BR
title:  Você Pegou o Tempo?
answer: ^[0-9]$
ok:     Seu tempo está correto!
error:  Rode o bloco de 0 a 9 vezes.
---

Como nós vimos em nosso primeiro exemplo com um bloco (quando contamos classificações) nós podemos passar um valor para o bloco.
Que valores são __passados__ é determinado pelo método que está rodando o bloco.

Os valores que são __recebidos__ pelo bloco são colocados em uma variável que tem o nome definido no ínicio do bloco,
entre dois símbolos pipe: |

Vamos tentar isso com este bloco:

    5.times { |time|
      puts time
    }

Aqui, o método __.times__ envia o valor para a variável __|time|__ . Porém, note que a variável time só é conhecida dentro do bloco.

> Você notou que você pode dividir o código em várias linhas? Isto torna o código um pouco mais fácil de ser lido.
