---
lang:   PT-BR
title:  Seu próprio gramado
answer: Blurbalizer:
ok:     Meu app foi criado
error:  
load:   class Blurb;attr_accessor :conteudo,:tempo,:humor;def initialize(humor, conteudo="");@tempo=Time.now;@conteudo=conteudo[0..39];@humor=humor;end;end
---

Ok, vamos embrulhar as coisas, garoto. Este é o último capítulo da EMOCIONANTE e épica história do Try Ruby!
Agora que você já sentiu o gostinho de como tudo funciona, como nós vamos usar isso em volta da casa e no freezer
da sua mercearia?
Você é uma grande pessoa (uma das minhas favoritas), mas você precisa de orientação.

### Vamos finalizar seu app
Seu app tem entradas, mas não está completo.
Ele ainda precisa de um título, algum lugar para armazenar todos os Blurbs<sup>TM</sup> e uma timeline para funcionar adequadamente.

Tente advinhar, nós vamos usar outra classe. Eu estou lhe dando todo o código da nova classe de uma vez.
Estude-a __no seu tempo__, sem pressa.
Eu não estou com pressa, eu irei esperar você para a sua próxima lição.

    class Blurbalizer
      def initialize(titulo)
        @titulo  = titulo
        @blurbs = [] # Um array fresquinho e limpo
                     # para armazenar os Blurbs
      end

      def adicionar_um_blurb(humor, conteudo)
        # O << significa adicionar ao array
        @blurbs << Blurb.new(humor, conteudo)
      end

      def exibir_timeline
        puts "Blurbify: #{@titulo} tem #{@blurbs.count} Blurbs"

        @blurbs.sort_by { |t|
          t.tempo
        }.reverse.each { |t|
          puts "#{t.conteudo.ljust(40)} #{t.tempo}"
        }
      end
    end

    meuApp = Blurbalizer.new "O Grande Blurb"
