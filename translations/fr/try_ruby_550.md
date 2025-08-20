---
lang:   FR
title:  Tout est dans la combinaison
answer: :-
ok:     De l'humeur !
error:
load:   prev
---

Il est possible de faire de très belles choses avec les éléments simples de Ruby, en particulier lorsqu'on les combine
pour créer de nouvelles choses.
Ici, nous avons une application composée d'une classe contenant une autre classe.
Et, en fait, Ruby se débrouille très bien
avec ce genre de créature. C'est ce qu'on appelle la programmation orientée objet.

Nous sommes arrivés au __dernier exercice de programmation__ de TryRuby. Si tu le souhaites,
tu peux ajouter d'autres fonctionnalités à Blurbalizeur<sup>TM</sup>.

Peut-être que tu prefères afficher l'humeur sous forme de smiley dans la méthode __affiche\_chronologie__. Tu peux ajouter
une méthode _humeurifie_ dans la classe Blurb<sup>TM</sup> puis utiliser cette méthode dans la méthode _affiche\_chronologie_ :

    class Blurb
      attr_accessor :contenu, :horaire, :humeur

      def initialize(humeur, contenu="")
        @horaire = Time.now
        @contenu = contenu[0..39]
        @humeur  = humeur
      end

      def humeurifie
        if    @humeur == :triste
          return ":-("
        elsif @humeur == :content
          return ":-)"
        # Ajoutez d'autres humeurs ici
        end

        # L'humeur par défaut
        ":-|"
      end
    end

    class Blurbalizeur
      def initialize(title)
        @title  = title
        @blurbs = []
      end

      def add_a_blurb(humeur, contenu)
        @blurbs << Blurb.new(humeur, contenu)
      end

      def affiche_chronologie
        puts "Blurbifie : #{@title} contient #{@blurbs.count} Blurbs"

        @blurbs.sort_by { |t|
          t.horaire
        }.reverse.each { |t|
          puts "#{t.contenu.ljust(40)} #{t.horaire}"
        }
      end
    end

    myapp.affiche_chronologie
