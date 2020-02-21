---
lang:   UA
title:  Ти навчив свій додаток відкидати непотрібні речі
answer: Blurb:
ok:     Blurb додано
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end;blurb1=Blurb.new(:sick,"Today Mount Hood Was Stolen!")
---

Ти помітив, як ми використовуємо символ собачки "всередині класу"? (@time).

__Ззовні__ класу ми використовуємо аксесор:

> __blurb.time = Time.now__

але __всередині__ ми використовуємо змінні об'єкта:

> __@time = Time.now__

Це одне і те саме, але може використовуватися в різних місцях твоєї програми.

### Створімо інший Blurb<sup>TM</sup>
Коли інший Blurb<sup>TM</sup> створений, метод ініціалізації використовується для перевірки будь-якого аргументи до методу new.

Ой, потрібно ще 2 аргументи:

    Blurb2 = Blurb.new :confused, "Не можу повірити, Мавнт-Худ вкрали!"
