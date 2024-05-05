---
lang:   FR
title:  Ton propre territoire
answer: Blurbalizer:
ok:     L'application est créée
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end
---

Trés bien, concluons cela. Voici le dernier chapitre de l'histoire épique et PALPITANTE de Try Ruby !
Maintenant que tu as eu un aperçu de comment tout cela fonctionne, comment vas-tu l'utiliser à la maison 
et dans ton quotidien ?
Tu es une personne géniale (l'un de mes favoris), mais tu as encore un peu besoin d'être guidé.

### Terminons l'application
Nous avons des entrées dans l'application, mais pas d'application à proprement parler.
Pour fonctionner, elle a encore besoin d'un titre, d'un endroit où stocker tous les Blurbs<sup>TM</sup> et d'une chronologie.

Devine quoi, nous allons utiliser une autre classe. 
Je te donne tout le code pour la nouvelle classe. 
__Prends ton temps__ pour l'étudier. Je ne suis pas pressé, je t'attendrai à la prochaine leçon.

    class Blurbalizer
      def initialize(title)
        @title  = title
        @blurbs = [] # Un tableau propre et vide
                     # pour stocker les Blurbs
      end
      
      def add_a_blurb(mood, content)
        # Le << signifie ajouter à la fin du tableau
        @blurbs << Blurb.new(mood, content)
      end
      
      def show_timeline
        puts "Blurbify: #{@title} contient #{@blurbs.count} Blurbs"
        
        @blurbs.sort_by { |t|
          t.time
        }.reverse.each { |t|
          puts "#{t.content.ljust(40)} #{t.time}"
        }
      end
    end
    
    myapp = Blurbalizer.new "Le Grand Blurb"