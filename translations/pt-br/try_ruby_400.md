---
lang:   PT-BR
title:  Tudo junto agora
answer: ^4$
ok:     Sim, Shakespeare escreveu 4 peças em 1591
error:  A resposta para o ano 1591 deve ser 4
load:   prev
---

Agora, suponha que nós desejamos saber apenas os nomes e a quantidade de peças escritas
por Shakespeare em um determinado ano.

O Ruby nos permite selecionar (__select__) valores do hash. O método __select__ usa um bloco
para nos deixar definir o que selecionar, e retorna o que for encontrado.

Nós podemos usar o resultado retornado pelo método __select__ no método __each__ simplesmente
adicionando-o após o bloco do __select__. Este é outro exemplo de encadeamento de métodos, que nós
vimos antes ao inverter o poema.

Eu preparei o método __count\_plays__ (plays significa peças) para você. Veja se você consegue descobrir
quantas peças foram escritas por Shakespeare no ano __1591__. Tente isso:

    def count_plays(year)
      s = get_shakey

      s["William Shakespeare"]
        .select { |k, v|
          v["finished"] == year
        }.each { |key, val|
          puts val["title"]
        }.count
    end

    puts count_plays(1591)

Você notou que eu encadeei o método __count__ ao final do método __each__? Isto nos dá o valor
de retorno para o método __count\_plays__.

Existe uma outra possibilidade de encadeamento aqui. Veja esta linha __s = get_shakey__.
Você pode adicionar o __["William Shakespeare"].select { |k, v|__ ao final do __get_shakey__
(nesse caso, não é preciso colocar o ponto).
