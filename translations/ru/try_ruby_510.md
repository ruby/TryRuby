---
lang:   RU
title:  Вы научили ваше приложение отвергать бесполезные вещи
answer: Blurb:
ok:     Blurb добавлен
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end;blurb1=Blurb.new(:sick,"Сегодня была украдена гора Худ!")
---

Вы заметили, что мы используем символ "собаки" внутри класса? (@time).

__Снаружи__ класса мы используем аксессоры:

> __blurb.time = Time.now__

но __внутри__ мы используем __переменные объекта__:

> __@time = Time.now__

Это одно и тоже, но может использоваться в разных местах вашей программы.

### Создадим другой Blurb<sup>TM</sup>
Когда другой Blurb<sup>TM</sup> создан, метод инициализации используется для
проверки любого аргумента к методу new.

Ох, нужно еще 2 аргумента:

    blurb2 = Blurb.new :confused, "Не могу поверить, что Худ украли!"
