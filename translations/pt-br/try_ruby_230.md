---
lang:   PT-BR
title:  Hashes como pares
answer: ^\[".*"\]
load:   prev
ok:     Você encontrou as chaves
error:  
---

Tenha em mente que hashes não mantém as coisas ordenadas. Este não é o trabalho dele. Ele apenas
faz pares, os pares são: uma __key__ (chave) e um __value__ (valor).

Em suas análises, o título do livro é a __key__, e a classificação é o __value__.

Se você desejar ver apenas os titulos de todos os livros que você já análisou:

    livros.keys

Você também pode tentar isso com .values ao invés de .keys.
