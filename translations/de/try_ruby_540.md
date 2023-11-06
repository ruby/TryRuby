---
lang:   DE
title:  Was hat es mit dem Blurb auf sich?
answer: Today
ok:     Bring die Blurbs
error:
load:   prev;class Blurbalizer;attr_reader :title;def initialize(title);@title=title;@blurbs=[];end;def add_a_blurb(mood, content);@blurbs << Blurb.new(mood, content);@blurbs.each {|t| t.time -= 73};end;def show_timeline;puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs\n";@blurbs.sort_by { |t| t.time}.reverse.each { |t| puts "#{t.content.ljust(40)} #{t.time}"};end;end;myapp = Blurbalizer.new "The Big Blurb";myapp.add_a_blurb :sick,"Today Mount Hood Was Stolen!";myapp.add_a_blurb :confused,"I can not believe Mt. Hood was stolen!";myapp.add_a_blurb :dazed,"I am speechless!";myapp.add_a_blurb :mad,"It was stolen by a giraffe !!";myapp.add_a_blurb :sad,"I Left my Hoodie on the Mountain!";myapp.add_a_blurb :mad,"I am never going back to that mountain."
---

Da hast du es. Hast du herausgefunden, was der ganze Code in der Blurbalizer
<sup>TM</sup>-Klasse macht?

> In der Klasse Blurbalizer<sup>TM</sup> gibt es zwei __Methoden__ (add\_a\_blurb und show\_timeline).
> Du kannst eine Methode außerhalb der Klasse benutzen, genau wie wir es mit den Accessors gemacht haben.

Zeit, Blurbalizer<sup>TM</sup> zu verwenden. Ich habe bereits einige Blurbs
<sup>TM</sup> für dich vorbereitet, aber du kannst gerne deine Eigenen 
hinzufügen.

Wir erstellen die Blurbs<sup>TM</sup> nicht mehr direkt, sondern verwenden die 
__Methode__ add\_a\_blurb der Blurbalizer<sup>TM</sup>-Klasse. Auf diese Weise 
können wir sicher sein, dass alle unsere Blurbs<sup>TM</sup> im myapp-Objekt 
gespeichert sind.

    myapp.add_a_blurb :moody, "Add Blurb here"

    myapp.show_timeline
