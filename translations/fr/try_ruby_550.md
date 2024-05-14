---
lang:   FR
title:  Tout est dans la combinaison
answer: :-
ok:     De l'humeur !
error:
load:   prev
---

Il est possible de faire de très belles choses avec les éléments simples de Ruby, en particulier lorsqu'on les combine 
pour créer de nouvelles choses.
Ici, nous avons une application composée d'une classe contenant une autre classe. 
Et, en fait, Ruby se débrouille très bien
avec ce genre de créature. C'est ce qu'on appelle la programmation orientée objet.  

Nous sommes arrivés au __dernier exercice de programmation__ de TryRuby. Si vous le souhaitez,
vous pouvez ajouter d'autres fonctionnalités à Blurbalizer.<sup>TM</sup>.  

Peut-être que tu prefères afficher l'humeur sous forme de smiley dans la méthode __show_timeline__. Tu peux ajouter
une méthode _moodify_ dans la classe Blurb<sup>TM</sup> puis utiliser cette méthode dans la méthode _show\_timeline_ :  

    class Blurb
      attr_accessor :content, :time, :mood

      def initialize(mood, content="")
        @time    = Time.now
        @content = content[0..39]
        @mood    = mood
      end

      def moodify
        if    @mood == :triste
        return ":-("
        elsif @mood == :content
        return ":-)"
        # Ajoutez d'autres humeurs ici
        end

        # L'humeur par défaut
        ":-|"
      end
    end

    class Blurbalizer
      def initialize(title)
        @title  = title
        @blurbs = []
      end

      def add_a_blurb(mood, content)
        @blurbs << Blurb.new(mood, content)
      end

      def show_timeline
        puts "Blurbalizer: #{@title} contient #{@blurbs.count} Blurbs"

        @blurbs.sort_by { |t|
          t.time
        }.reverse.each { |t|
          puts "#{t.content.ljust(40)} #{t.time}"
        }
      end
    end

    myapp.show_timeline