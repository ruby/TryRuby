---
lang:   TR
title:  Blurb'ün Olayı Ne Ya?
answer: Bugün
ok:     Blurb'leri getir
error:
load:   prev;class Blurbalizer;attr_reader :title;def initialize(title);@title=title;@blurbs=[];end;def add_a_blurb(mood, content);@blurbs << Blurb.new(mood, content);@blurbs.each {|t| t.time -= 73};end;def show_timeline;puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs\n";@blurbs.sort_by { |t| t.time}.reverse.each { |t| puts "#{t.content.ljust(40)} #{t.time}"};end;end;myapp = Blurbalizer.new "The Big Blurb";myapp.add_a_blurb :sick,"Today Mount Hood Was Stolen!";myapp.add_a_blurb :confused,"I can not believe Mt. Hood was stolen!";myapp.add_a_blurb :dazed,"I am speechless!";myapp.add_a_blurb :mad,"It was stolen by a giraffe !!";myapp.add_a_blurb :sad,"I Left my Hoodie on the Mountain!";myapp.add_a_blurb :mad,"I am never going back to that mountain."
---

İşte buradasın. Blurbalizer<sup>TM</sup>'in içerisindeki tüm o kodun ne yaptığını çözdün mü?

> Blurbalizer<sup>TM</sup> class'ında iki adet __metod__ var (add\_a\_blurb and show\_timeline).
> Class dışında bir metod kullanabilirsin, aynı accessor'larla yaptığımız gibi.

Blurbalizer<sup>TM</sup>'ı kullanma zamanı. Senin için Blurbs<sup>TM</sup>'ler yükledim bile, kendi başına
istediklerini ekleme konusunda rahat hisset.

Artık direk Blurbs<sup>TM</sup> yaratmıyoruz, ancak Blurbalizer<sup>TM</sup> class'ın add\_a\_blurb __metodunu__ kullanıyoruz.
Bu şekilde tüm Blurbs<sup>TM</sup>'lerimizin myapp objesinde depolandığına emin olabiliriz.

    myapp.add_a_blurb :moody, "Add Blurb here"

    myapp.show_timeline
