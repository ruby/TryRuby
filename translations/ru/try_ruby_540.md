---
lang:   RU
title:  Про что это Blurb?
answer: Today
ok:     Ок!
error:
load:   prev;class Blurbalizer;attr_reader :title;def initialize(title);@title=title;@blurbs=[];end;def add_a_blurb(mood, content);@blurbs << Blurb.new(mood, content);@blurbs.each {|t| t.time -= 73};end;def show_timeline;puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs\n";@blurbs.sort_by { |t| t.time}.reverse.each { |t| puts "#{t.content.ljust(40)} #{t.time}"};end;end;myapp = Blurbalizer.new "The Big Blurb";myapp.add_a_blurb :sick,"Today Mount Hood Was Stolen!";myapp.add_a_blurb :confused,"I can not believe Mt. Hood was stolen!";myapp.add_a_blurb :dazed,"I am speechless!";myapp.add_a_blurb :mad,"It was stolen by a giraffe !!";myapp.add_a_blurb :sad,"I Left my Hoodie on the Mountain!";myapp.add_a_blurb :mad,"I am never going back to that mountain."
---

И вот результат. Вы поняли, что в коде класс Blurbalizer<sup>TM</sup> делает?

> В Blurbalizer<sup>TM</sup> есть 2  __метода__ (add\_a\_blurb and show\_timeline).
> Вы можете использовать метод вне класса, также как и с аксессорами.

Самое время, чтобы начать использовать Blurbalizer<sup>TM</sup>. Я уже загрузил несколько Blurbs<sup>TM</sup> для тебя,
но добавь еще свой сам.

Мы больше не создаем Blurbs<sup>TM</sup> напрямую, но мы используем метод add\_a\_blurb из класса 
Blurbalizer<sup>TM</sup>. Теперь мы можем быть уверены, что все наши Blurbs<sup>TM</sup> хранятся в
объекте myapp.

    myapp.add_a_blurb :moody, "Добавь Blurb сюда"

    myapp.show_timeline
