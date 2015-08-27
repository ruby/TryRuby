---
lang:   PT-BR
title:  Espera, Eu Gostei De Gravity's Rainbow?
answer: ^(esplendido|muito_bom|mediocre|nao_tao_bom|lixo)$
load:   livros = {"Gravitys Rainbow" => :esplendido, "The deep end" => :lixo, "Living colors" => :mediocre}
ok:     Eu gostei bastante
error:  
---

Uma grande coisa sobre o Ruby é que nomes são frequentemente reutilizados, isso significa menos nomes para você lembrar.

Relembre como nós recuperamos itens de um array utilizando um número:
__puts ticket[1]__.

Para um hash isso funciona da mesma forma, exceto que nós não usaremos um número para recuperar um elemento (mas sim um nome).

Então, se você quiser olhar uma de suas análises antigas, denovo, coloque o título entre colchetes (mas dessa vez sem o sinal de igual).
Desta forma:

    puts livros["Gravitys Rainbow"]
