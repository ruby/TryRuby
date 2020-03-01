---
lang:   RU
title:  Про что этот Blurb?
answer: Today
ok:     Ок!
error:
load:   prev;class Blurbalizer;attr_reader :title;def initialize(title);@title=title;@blurbs=[];end;def add_a_blurb(mood, content);@blurbs << Blurb.new(mood, content);@blurbs.each {|t| t.time -= 73};end;def show_timeline;puts "Blurbalizer: #{@title} содержит #{@blurbs.count} Blurbs\n";@blurbs.sort_by { |t| t.time}.reverse.each { |t| puts "#{t.content.ljust(40)} #{t.time}"};end;end;myapp = Blurbalizer.new "The Big Blurb";myapp.add_a_blurb :sick,"Сегодня была украдена гора Худ!";myapp.add_a_blurb :confused,"Не могу поверить, что Худ украли!";myapp.add_a_blurb :dazed,"Я шокрован!";myapp.add_a_blurb :mad,"Ее украли жирафы !!";myapp.add_a_blurb :sad,"Я оставил там свою толстовку!";myapp.add_a_blurb :mad,"Я больше никогда не вернусь на эту гору."
---

Вот вы где. Вы разобрались, что код в классе Blurbalizer<sup>TM</sup> делает?

> В Blurbalizer<sup>TM</sup> есть 2  __метода__ (add\_a\_blurb и
> show\_timeline). Вы можете использовать метод вне класса, так же как и с
> аксессорами.

Самое время, чтобы начать использовать Blurbalizer<sup>TM</sup>. Я уже загрузил
несколько Blurbs<sup>TM</sup> для вас, но не стесняйтесь добавить свои.

Мы больше не создаем Blurbs<sup>TM</sup> напрямую, а используем метод
add\_a\_blurb из класса Blurbalizer<sup>TM</sup>. Это чтобы мы были уверены,
что все наши Blurbs<sup>TM</sup> хранятся в объекте myapp.

    myapp.add_a_blurb :moody, "Добавь Blurb сюда"

    myapp.show_timeline
