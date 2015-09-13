---
lang:   PT-BR
title:  Se eu pelo menos soubesse como tomar uma decisão
answer:
ok:
error:  
---

Tomar uma decisão, na vida real isso pode ser um problema. Não para nós.
O Ruby faz a tomada de decisões ser muito fácil.

    if 1 < 2
      puts "É verdade: 1 é menor que 2"
    end

A palavra chave aqui é __if__ (se). O __if__ pode ser posicionado antes de um método ou depois de um método, por exemplo:

    puts "É verdade que: 1 é menor que 2? " if 1 < 2

__If__ é um método que requer um parâmetro. Este parâmetro pode ser qualquer expressão que você queira
testar. A saída da expressão, no entanto, deve ser __true__ (verdadeiro) ou __false__ (falso).
Aqui estão um monte de expressões e suas saídas:

    5     <= 10     # => true
    'abc' == 'def'  # => false
    true            # => true
    123456          # => true
    0               # => true
    nil             # => false
    'xyz'.empty?    # => false
    'a' > 5         # => error:
                    # comparison of String with
                    # Numeric failed

A _expressão if_ pode tomar muitas formas. Ela pode comparar valores literais (1 < 2),
variáveis (a < 1) e o retorno de um método ('xyz'.empty?).
