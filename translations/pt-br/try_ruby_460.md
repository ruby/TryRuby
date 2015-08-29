---
lang:   PT-BR
title:  Acessores São Os Membros Pendurados
answer: Blurb:
ok:     Meu primeiro Blurb
error:  
load:   class Blurb;attr_accessor :conteudo,:tempo,:humor;end
---

Hey, boa classe cara. Você tem uma nova classe Blurb<sup>TM</sup>.

Na definição de classe, você usou o método chamado attr\_accessor.
Existem vários métodos de __attr__ibutos como esse que adicionam pequenas configurações as classes.
Esses atributos são apenas variáveis amarradas a classe.

Pense desta forma. A classe é uma pessoa. Aquela coisa humana em forma de estrela lá fora.
E os atributos são os membros pendurados, as diferentes partes que mantém o corpo de pé e
que permitem que as pessoas apertem as mãos umas das outras.

### Agora
Para criar um Blurb<sup>TM</sup> e definir seu conteúdo:

    blurb1 = Blurb.new
    puts blurb1
    blurb1.conteudo = "Hoje, Mount Hood foi roubado!"
