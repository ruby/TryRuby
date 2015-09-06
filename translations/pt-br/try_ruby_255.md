---
lang:   PT-BR
title:  Você Pegou o Tempo?
answer: ^[0-9]$
ok:     Seu tempo está correto!
error:  Rode o bloco de 0 a 9 vezes.
---

Como nós vimos em nosso primeiro exemplo com um bloco (quando contamos classificações) nós podemos passar um valor para o bloco.
Quais valores são __passados__ é determinado pelo método que está rodando o bloco.

Os valores que são __recebidos__ pelo bloco são colocados em uma variável que tem o nome definido no ínicio do bloco,
entre dois símbolos pipe: |

Vamos tentar isso com este bloco:

    5.times { |vez|
      puts vez
    }

Aqui, o método __.times (significa vezes)__ envia o valor para a variável __|vez|__ . Porém, note que a variável vez só é conhecida dentro do bloco.

> Você notou que você pode dividir o código em várias linhas? Isto torna o código um pouco mais fácil de ser lido.
