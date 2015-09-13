---
lang:   PT-BR
title:  Tudo Fica Bem Quando Termina Bem
answer: All's Well That Ends Well
ok:     True
error:  Use 1605 como segundo parâmetro
load:   prev
---

Ok, nós pegamos alguns dados da internet, nós selecionamos o que nós queriamos e imprimimos na tela.
O que falta melhorar? Nós poderiamos ter impresso os resultados de forma um pouco mais bonita. Como adicionar
o ano e alinhar títulos e anos.

Isso significa imprimir vários valores em uma linha. O Ruby possui um jeito puro
de fazer isso. É exatamente como imprimir uma string: __puts "Olá, meu nome é Ricardo"__.
Mas, ao invés de utilizarmos o valor literal _Ricardo_, nós usaremos o valor da variável.

Em primeiro lugar, substitua __Ricardo__ por __#{}__. Se o Ruby ver o símbolo hash # segudio chaves {
ele procurará por uma variável entre a abertura e o fechamento da chave }.
Nós podemos usa-lo desta forma: __"Olá, meu nome é \#{nome}"__  

Vamos alterar um pouco o nosso código

    def print_plays(year_from, year_to)
      get_shakey["William Shakespeare"]
        .select { |k, v|
          year_from <= v["finished"] &&
          year_to   >= v["finished"]
        }.each { |k, v|
          puts "#{v["title"].ljust(30)} #{v["finished"]}"
        }
    end
    print_plays(1600, 1605)

Eu adicionei __.ljust(30)__ ao título. Desta forma o título é _justificado a esquerda_ com um minímo de
30 caracteres (assim os anos ficam alinhados).

Veja se você pode mudar a saída do programa para que ele exiba as peças desta forma: __1600 -> As You Like It__

__Tudo Fica Bem Quando Termina Bem ?__ Ei, nós não terminamos ainda, mas o fim está a vista !
