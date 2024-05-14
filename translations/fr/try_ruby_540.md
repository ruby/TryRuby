---
lang:   FR
title:  Qu'est-ce que c'est tous ces Blurbs ?
answer: Aujourd'hui
ok:     Apportez les blurps
error:
load:   prev;class Blurbalizer;attr_reader :title;def initialize(title);@title=title;@blurbs=[];end;def add_a_blurb(mood, content);@blurbs << Blurb.new(mood, content);@blurbs.each {|t| t.time -= 73};end;def show_timeline;puts "Blurbalizer: #{@title} contient #{@blurbs.count} Blurbs\n";@blurbs.sort_by { |t| t.time}.reverse.each { |t| puts "#{t.content.ljust(40)} #{t.time}"};end;end;myapp = Blurbalizer.new "Le Grand Blurb";myapp.add_a_blurb :triste,"Aujourd'hui, le Mont Blanc a été volé !";myapp.add_a_blurb :confus,"Je ne peux pas croire que le Mont Blanc a été volé !";myapp.add_a_blurb :surpris,"Je suis sans voix !";myapp.add_a_blurb :colere,"Il a été volé par une girafe ! !!";myapp.add_a_blurb :degout,"J'ai laissé mon sweat à la montagne !";myapp.add_a_blurb :furieux,"Je ne retournerai jamais sur cette montagne."
---

Nous y voilà. Avez-vous compris ce que fait tout ce code dans la classe Blurbalizer<sup>TM</sup> ?

> Dans la classe Blurbalizer<sup>MC</sup>, il y a deux __méthodes__ (add\_a\_blurb et show\_timeline). Tu peux utiliser une méthode en dehors de la classe, tout comme nous l'avons fait avec les accessors.

Il est temps de commencer à utiliser Blurbalizer<sup>TM</sup>. J'ai déjà chargé quelques Blurbs<sup>TM</sup> pour toi, mais n'hésite pas à ajouter les tiens.

Nous ne créons plus directement des Blurbs<sup>TM</sup>, mais nous utilisons la __méthode__ add\_a\_blurb de la classe Blurbalizer<sup>TM</sup>. De cette manière, nous pouvons être sûrs que tous nos Blurbs<sup>TM</sup> sont stockés dans l'objet myapp.

    myapp.add_a_blurb :humeur, "Ajouter un Blurp ici"

    myapp.show_timeline
