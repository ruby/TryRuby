---
lang:   PT-BR
title:  Sobre o que Blurb's são?
answer: Hoje
ok:     Que venham os blurbs
error:  
load:   prev;class Blurbalizer;attr_reader :titulo;def initialize(titulo);@titulo=titulo;@blurbs=[];end;def adicionar_um_blurb(humor, conteudo);@blurbs << Blurb.new(humor, conteudo);@blurbs.each {|t| t.tempo -= 73};end;def exibir_timeline;puts "Blurbalizer: #{@titulo} tem #{@blurbs.count} Blurbs\n";@blurbs.sort_by { |t| t.tempo}.reverse.each { |t| puts "#{t.conteudo.ljust(40)} #{t.tempo}"};end;end;meuApp = Blurbalizer.new "O Grande Blurb";meuApp.adicionar_um_blurb :doente,"Hoje Mount Hood Foi Roubado!";meuApp.adicionar_um_blurb :confuso,"Eu não posso acreditar que Mount Hood Foi Roubado!";meuApp.adicionar_um_blurb :atordoado,"Estou sem palavras!";meuApp.adicionar_um_blurb :enlouquecido,"Ele foi roubado por uma GIRAFA !!";meuApp.adicionar_um_blurb :triste,"Eu deixei meu chapéu na montanha!";meuApp.adicionar_um_blurb :enlouquecido,"Eu nunca mais voltarei as montanhas."
---

Aqui está você. Você percebeu tudo que o código da classe Blurbalizer<sup>TM</sup> faz?

> Na classe Blurbalizer<sup>TM</sup> existem dois __métodos__ (adicionar\_um\_blurb e exibir\_timeline)
> Você pode usar um método fora da classe, da mesma forma como fizemos com os acessores.

Hora de começar a usar o Blurbalizer<sup>TM</sup>. Eu já carreguei alguns Blurbs<sup>TM</sup> para você,
mas sinta-se a vontade para adicionar os seus próprios.

Nós não estamos mais criando Blurbs<sup>TM</sup> diretamente, ao invés disso nós estamos usando o __método__
adicionar\_um\_blurb da classe Blurbalizer<sup>TM</sup>. Desta forma, nós podemos ter certeza que todos os Blurbs<sup>TM</sup>
são armazenados no objeto meuApp.

    meuApp.adicionar_um_blurb :temperamental, "Adicione um Blurb aqui"

    meuApp.exibir_timeline
