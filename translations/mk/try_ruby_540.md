---
lang:   МК
title:  Што се работи во Blurb?
answer: Today
ok:     Bring on the blurbs
error:
load:   prev;class Blurbalizer;attr_reader :title;def initialize(title);@title=title;@blurbs=[];end;def add_a_blurb(mood, content);@blurbs << Blurb.new(mood, content);@blurbs.each {|t| t.time -= 73};end;def show_timeline;puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs\n";@blurbs.sort_by { |t| t.time}.reverse.each { |t| puts "#{t.content.ljust(40)} #{t.time}"};end;end;myapp = Blurbalizer.new "The Big Blurb";myapp.add_a_blurb :sick,"Today Mount Hood Was Stolen!";myapp.add_a_blurb :confused,"I can not believe Mt. Hood was stolen!";myapp.add_a_blurb :dazed,"I am speechless!";myapp.add_a_blurb :mad,"It was stolen by a giraffe !!";myapp.add_a_blurb :sad,"I Left my Hoodie on the Mountain!";myapp.add_a_blurb :mad,"I am never going back to that mountain."
---

Одлично, пристина до уште една нова лекција! Дали сфати што прави кодот во  Blurbalizer<sup>TM</sup> класата?

> Во Blurbalizer<sup>TM</sup> има два __методи__ (add\_a\_blurb and show\_timeline).
> Ти можеш да користиш метод надвор од класата, на ист начин како што направивме со accessors.

Време е да почнеме да ја користиме Blurbalizer<sup>TM</sup>. Јас веќе вчитав (анг. loaded) неколку 
Blurbs<sup>TM</sup> за тебе, но чувствувај се слободно да додадеш твои нови.

Ние сега не креираме Blurbs<sup>TM</sup> директно, туку користиме add\_a\_blurb __метод__ од 
Blurbalizer<sup>TM</sup> класата. На овој начин, може да се осигураме дека сите наши Blurbs<sup>TM</sup>
се зачувани во myapp објектот.

    myapp.add_a_blurb :moody, "Додај Blurb тука"

    myapp.show_timeline
