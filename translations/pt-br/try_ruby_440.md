---
lang:   PT-BR
title:  Mim fome
answer: ^Mim sem fome
ok:     Sim
error:  De jeito nenhum eu estou com fome as 10 da manhã !
---

Ok,
Okay, isso, enfim, está ficando maravilhoso. Isto é uma coisa simples para você, mas tenha em mente que você
não sabia __nada de Ruby__ a apenas 15 minutos atrás.

Último passo,
Last step. Vamos colocar tudo isso junto, sabe? Vamos colocar tudo isso para brilhar junto
como reluzentes sinos na praia brilhando sob a luz do sol.

Nós vamos definir dois métodos primeiro, e então tomaremos uma decisão:

    def fome?(hora_do_dia)
      puts "Mim fome"
      true
    end

    def comer_um(o_que)
      puts "Mim comer #{o_que}\n"
    end

    comer_um 'maçã' if fome?(14)

    comer_um 'maçã' if fome?(10)

Agora, veja se você consegue alterar o método __fome?__ para exibir __"Mim sem fome"__ e retornar falso
quando a hora for menor que 12.
