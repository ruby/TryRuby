---
lang:   PT-BR
title:  Um Pequenino Livro em Branco
answer: ^(esplendido|muito_bom|mediocre|nao_tao_bom|lixo)$
load:   livros = {}
ok:     Sim, este precisa de uma análise
error:  Use um dentre esplendido, muito_bom, mediocre, nao_tao_bom, lixo. Não esqueça os dois pontos.
---

Você criou um __hash__ vazio. Um hash é como um array, porém cada um dos seus elementos tem um nome.

Nós iremos adicionar algumas análises de livrinhos ao nosso hash. Aqui está nosso sistema de classificação:

- :esplendido &rarr; uma obra prima
- :muito\_bom &rarr; gostei, é, gostei
- :mediocre &rarr; tem partes boas e ruins
- :nao\_tao\_bom &rarr; notavelmente ruim
- :lixo &rarr; jamais recomendaria a alguém

Para classificar um livro, coloque o título entre colchetes e escreva a classificação após o sinal de igual. Por exemplo:

    livros["Gravitys Rainbow"] = :esplendido

> Agora, acho que é justo lhe dizer que todas as lições do TryRuby são separadas uma das outras.
> Então, se você sair escrevendo loucamente análises de livros aqui, você só poderá usa-las nessa lição.
> Se você deseja usar as suas análises na próxima lição, você deve copia-las e cola-las.
> Não se preocupe com isso, cada lição tem uma quantidade pré definida de coisas para você brincar.
