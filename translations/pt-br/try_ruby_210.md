---
lang:   PT-BR
title:  Mais Pequenos Pedaços de Análises
answer: [3-9]
load:   livros = {"Gravitys Rainbow" => :esplendido}
ok: Veja, o método length trabalha com strings, arrays e hashes
error:
---

Vá em frente, preencha a lista com análises. E, se você quiser ver toda a lista, apenas digite: __puts livros__

Denovo, as classificações são: :esplendido, :muito\_bom, :mediocre, :nao\_tao\_bom e :lixo

Essas classificações não são strings. Quando você coloca dois pontos a frente de uma simples palavra, você obtém um __symbol__ (símbolo).
Símbolos são mais baratos que strings (em termos de custo de memória). Se você usar uma palavra várias e várias vezes no seu programa,
troque por um símbolo. Ao invés de ter milhares de cópias desta palavra na memória, o computador irá armazenar o símbolo apenas __uma vez__.

Mais importante, um símbolo diz a você que isso não é apenas uma palavra, mas algo que significa algo para o seu programa.

Entre com mais duas análises de livros, use __livros.length__ para ver quantas análises já existem no hash:

    livros["The deep end"]  = :lixo
    livros["Living colors"] = :mediocre

    puts livros

    puts livros.length
