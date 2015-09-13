---
lang:   PT-BR
title:  (Ser) ou não (ser)
answer:
load:   poema = "Minha torrada voou das minhas mãos\nE minha torrada foi para a lua.\nYada yada yada\n"
ok:
error:  
---

Outra pequena coisa que nós não falamos de forma realmente aberta: argumentos de métodos.
Lembra quando nós múdamos o poema um pouco? Nós usamos:
__poema.gsub("torrada", "manga")__

O método gsub precisa de dois argumentos, que nós passamos para o gsub ao incluir duas strings
entre parênteses. _Argumentos falam para o método exatamente o que fazer_

### Parênteses
Atualmente, na maior parte das vezes o Ruby não se importa se você omitir os parenteses. Então, Isto
teria funcionado também:
__poema.gsub "torrada", "manga"__

Nós já usamos outro método com parâmetro (ou argumento). Muitas vezes, de fato, isso não foi tão óbvio:

    puts "Olá!"
    puts("Olá!")

Sim, __puts__ também é um método. Usar puts com ou sem parênteses é a mesma coisa para o Ruby, mas a versão
sem parênteses é um pouco mais fácil de ler. E isso economiza seu valioso tempo digitando !

> Então eu acho que a conclusão é que você pode fazer o que você quiser com parêntesis desde que
> a legibilidade do seu código seja boa.

### (ser) ou não (ser)
Então, se _to_ (ser) é o nome de um método e _ser_ é um argumento, nós sabemos a resposta para esta questão milenar.
É realmente apenas uma questão de preferência de _to be_ ou _to(be)_.

Você está no humor para mais Shakespeare? Leia.
