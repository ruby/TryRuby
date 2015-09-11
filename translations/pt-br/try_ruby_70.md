---
lang:   PT-BR
title:  Pare, Você Está Latindo Como Um Louco!
answer: ^\d{1,}$
ok:     Apenas strings podem ser invertidas
error:  
---

Você não pode inverter o número 40. Eu acho que você pode segurar o seu monitor em frente a um espelho, mas inverter um número
 simplesmente não faz sentido.

O Ruby lançou uma mensagem de erro. O Ruby está te dizendo que não há o método reverse para números.

Talvez, se você tornar o número em uma string primeiro:

    40.to_s.reverse
