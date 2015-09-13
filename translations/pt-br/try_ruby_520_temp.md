---
lang:   PT-BR
title:  Isto é tudo sobre combinar
answer: :-
ok:     Temperamental !
error:  
load:   prev
---

Algumas coisas maravilhosas podem ser feitas com simples partes de Ruby, especialmente quando você combina
elas em coisas novas.
Aqui nós temos um app feito de uma classe, que contém outra classe. E, atualmente, Ruby realmente lida direito com
este tipo de criatura. Isto é chamado de programação orientada a objetos.

Enfim chegamos ao __último exercício de programação__ do TryRuby. Se você quiser, você pode adicionar mais
funcionalidades ao Blurbalizer<sup>TM</sup>.

Talvez você deseje imprimir o humor como um smiley e exibi-lo no método __exibir\_timeline__. Você também pode
adicionar o método _modificar_ a sua classe Blurb<sup>TM</sup> e então usa-lo dentro do método __exibir\_timeline__:

    class Blurb
      attr_accessor :conteudo, :tempo, :humor

      def initialize(humor, conteudo="")
        @tempo    = Time.now
        @conteudo = conteudo[0..39]
        @humor    = humor
      end

      def modificar
        if    @humor == :triste
          return ":-("
        elsif @mood == :feliz
          return ":-)"
        # E outros humores aqui
        end

        # O humor padrão
        ":-|"
      end
    end

    class Blurbalizer
      def initialize(titulo)
        @titulo  = titulo
        @blurbs = []
      end

      def adicionar_um_blurb(humor, conteudo)
        @blurbs << Blurb.new(humor, conteudo)
      end

      def exibir_timeline
        puts "Blurbalizer: #{@titulo} tem #{@blurbs.count} Blurbs"

        @blurbs.sort_by { |t|
          t.tempo
        }.reverse.each { |t|
          puts "#{t.conteudo.ljust(40)} #{t.tempo}"
        }
      end
    end

    meuApp.exibir_timeline
