---
lang:   PT-BR
title:  Você é Áspero (Harsh)?
answer: :mediocre
load:   livros = {"O Arco-Íris da Gravidade" => :esplendido, "Até o Fim" => :lixo, "Cores Vivas" => :mediocre, "Bumblebees" => :mediocre}
ok:     Ótimo, wow! Você fez um scorecard das suas análises.
error:  
---

Então, você está dando análises ásperas e injustas? Vamos dar uma pontuação com um novo hash __classificacoes__:

Ok, vamos contar nossas análises. Apenas fique comigo. Digite:

    classificacoes = Hash.new {0}

    livros.values.each { |classificacao|
      classificacoes[classificacao] += 1
    }

    puts classificacoes

A novidade em nosso código é o caracter pipe, provavelmente localizado a direita da tecla Shift
no seu teclado.

A linha _+= 1_ significa: some 1 ao valor.

Não se preocupe se você não entender tudo o que está acontecendo aqui. Isto será revelado mais tarde.
