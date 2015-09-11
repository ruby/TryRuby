---
lang:   PT-BR
title:  Você Ensinou Seu App a Desprezar Coisas Sem Valor
answer: Blurb:
ok:     Blurb adicionado
error:  
load:   class Blurb;attr_accessor :conteudo,:tempo,:humor;def initialize(humor, conteudo="");@tempo=Time.now;@conteudo=conteudo[0..39];@humor=humor;end;end;blurb1=Blurb.new(:doente,"Hoje, Mount Hood foi roubado!")
---

Você viu como usamos os simbolos arroba dentro da classe (@tempo)?

__Fora__ da classe, nós usamos o acessor:

> __blurb.tempo = Time.now__

mas __dentro__ nós usamos __a variável objeto__:

> __@tempo = Time.now__

Eles são exatamente a mesma coisa, mas são representados em dois locais diferentes do programa.

### Crie outro Blurb<sup>TM</sup>
Quando um novo Blurb<sup>TM</sup> é criado, o método initialize é usado para verificar
por algum argumento para o new.

Uh, nós precisamos de dois argumentos:

    Blurb2 = Blurb.new :confuso, "Eu não posso acreditar que Mt. Hood foi roubado!"
