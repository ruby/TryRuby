---
lang:   PT-BR
title:  Dar e Tomar
answer: \d+
ok:     Certo. Bravo.
error:  
---

Muitos métodos não só precisam de alguns parâmetros de entrada, mas também irão __devolver algo__.
Eu mudei o nosso método um pouco, assim ele irá retornar um valor para você. Tente isso:

    def domar( numero_de_megeras )
      numero_de_megeras.times {
        puts "Megera domada"
      }
      return numero_de_megeras
    end

    puts domar(3)

### Retorno (Return)
E, uma vez que você está ficando avançado e capaz aqui, mais uma dica:
você pode omitir a palavra __return__ da última linha do método.
O Ruby irá automagicamente retornar o valor da última variável usada dentro do método.

Assim, nós podemos mudar a última linha para apenas __numero\_de\_megeras__.

Mas, uma vez que o método __.times__ também retorna o _numero\_de\_megeras_ nós podemos
remover a última linha inteira. De fato, nosso método original já fazia o que nós queríamos!
