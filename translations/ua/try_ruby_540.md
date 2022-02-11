---
lang:   UA
title:  То про що цей Blurb?
answer: Today
ok:     Додай blurbs
error:
load:   prev;class Blurbalizer;attr_reader :title;def initialize(title);@title=title;@blurbs=[];end;def add_a_blurb(mood, content);@blurbs << Blurb.new(mood, content);@blurbs.each {|t| t.time -= 73};end;def show_timeline;puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs\n";@blurbs.sort_by { |t| t.time}.reverse.each { |t| puts "#{t.content.ljust(40)} #{t.time}"};end;end;myapp = Blurbalizer.new "The Big Blurb";myapp.add_a_blurb :sick,"Today Mount Hood Was Stolen!";myapp.add_a_blurb :confused,"I can not believe Mt. Hood was stolen!";myapp.add_a_blurb :dazed,"I am speechless!";myapp.add_a_blurb :mad,"It was stolen by a giraffe !!";myapp.add_a_blurb :sad,"I Left my Hoodie on the Mountain!";myapp.add_a_blurb :mad,"I am never going back to that mountain."
---

І ось результат. Ти зрозумів, що робить код у класі Blurbalizer<sup>TM</sup>?

> У Blurbalizer<sup>TM</sup> є 2 методи (add\_a\_blurb та show\_timeline). Можеш використовувати метод поза класом, так як і з аксесорами.

Саме час щоб почати використовувати Blurbalizer<sup>TM</sup>. Я вже завантажив кілька Blurbs<sup>TM</sup> для тебе, але можеш додати ще свій.

Ми більше не створюємо Blurbs<sup>TM</sup> directly, безпосередньо, а використовуємо метод add\_a\_blurb з класу Blurbalizer<sup>TM</sup>.
Тепер ми можемо бути певні, що всі наші  Blurbs<sup>TM</sup> зберігаються в об'єкті myapp.

    myapp.add_a_blurb :moody, "Додай Blurb сюди"
    
    myapp.show_timeline
