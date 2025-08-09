---
lang:   FR
title:  Ton propre territoire
answer: Blurbalizeur:
ok:     L'application est créée
error:
load:   class Blurb;attr_accessor :contenu,:horaire,:humeur;def initialize(humeur, contenu="");@horaire=Time.now;@contenu=contenu[0..39];@humeur=humeur;end;end
---

Trés bien, concluons cela. Voici le dernier chapitre de l'histoire épique et PALPITANTE de Try Ruby !
Maintenant que tu as eu un aperçu de comment tout cela fonctionne, comment vas-tu l'utiliser à la maison
et dans ton quotidien ?

Tu es une personne géniale (l'une de mes favories), mais tu as encore un peu besoin de quelqu'un pour te guider.

### Terminons l'application
Nous avons des entrées dans l'application, mais pas d'application à proprement parler.
Pour fonctionner, elle a encore besoin d'un titre, d'un endroit où stocker tous les Blurbs<sup>TM</sup> et d'une chronologie.

Devine quoi, nous allons utiliser une autre classe.
Je te donne tout le code pour la nouvelle classe.
__Prends ton temps__ pour l'étudier. Je ne suis pas pressé, je t'attendrai à la prochaine leçon.

    class Blurbalizeur
      def initialize(titre)
        @titre  = titre
        @blurbs = [] # Un tableau propre et vide
                     # pour stocker les Blurbs
      end

      def ajouter_un_blurb(humeur, contenu)
        # Le << signifie ajouter à la fin du tableau
        @blurbs << Blurb.new(humeur, contenu)
      end

      def affiche_chronologie
        puts "Blurbifie : #{@titre} contient #{@blurbs.count} Blurbs"

        @blurbs.sort_by { |t|
          t.horaire
        }.reverse.each { |t|
          puts "#{t.contenu.ljust(40)} #{t.horaire}"
        }
      end
    end

    mon_app = Blurbalizeur.new "Le Grand Blurb"
