---
lang:   FR
title:  Qu'est-ce que c'est tous ces Blurbs ?
answer: Aujourd'hui
ok:     Apportez les blurps
error:
load:   prev;class Blurbalizeur;attr_reader :titre;def initialize(titre);@titre=titre;@blurbs=[];end;def ajouter_un_blurb(humeur, contenu);@blurbs << Blurb.new(humeur, contenu);@blurbs.each {|t| t.horaire -= 73};end;def affiche_chronologie;puts "Blurbifie : #{@titre} contient #{@blurbs.count} Blurbs\n";@blurbs.sort_by { |t| t.horaire}.reverse.each { |t| puts "#{t.contenu.ljust(40)} #{t.horaire}"};end;end;mon_app = Blurbalizeur.new "Le Grand Blurb";mon_app.ajouter_un_blurb :triste,"Aujourd'hui, le Mont Blanc a été volé !";mon_app.ajouter_un_blurb :confus,"Je ne peux pas croire que le Mont Blanc a été volé !";mon_app.ajouter_un_blurb :surpris,"Je suis sans voix !";mon_app.ajouter_un_blurb :colere,"Il a été volé par une girafe !!!";mon_app.ajouter_un_blurb :degout,"J'ai laissé mon sweat à la montagne !";mon_app.ajouter_un_blurb :furieux,"Je ne retournerai jamais sur cette montagne."
---

Nous y voilà. As-tu compris ce que fait tout ce code dans la classe Blurbalizeur<sup>TM</sup> ?

> Dans la classe Blurbalizeur<sup>TM</sup>, il y a deux __méthodes__ (ajouter\_un\_blurb et affiche\_chronologie). Tu peux utiliser une méthode en dehors de la classe, tout comme nous l'avons fait avec les accessors.

Il est temps de commencer à utiliser Blurbalizeur<sup>TM</sup>. J'ai déjà chargé quelques Blurbs<sup>TM</sup> pour toi, mais n'hésite pas à ajouter les tiens.

Nous ne créons plus directement des Blurbs<sup>TM</sup>, mais nous utilisons la __méthode__ ajouter\_un\_blurb de la classe Blurbalizeur<sup>TM</sup>. De cette manière, nous pouvons être sûrs que tous nos Blurbs<sup>TM</sup> sont stockés dans l'objet mon_app.

    mon_app.ajouter_un_blurb :mal_luné, "Ajouter un Blurb ici"

    mon_app.affiche_chronologie
