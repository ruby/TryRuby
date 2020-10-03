---
lang:   UA
title:  Об'єкт, цей акуратний маленький пакет
answer: Blurb:
ok:     Blurb оновлено
error:  
load:   prev;blurb1=Blurb.new;blurb1.content="Today Mount Hood Was Stolen!"
---

А тепер змінимо атрибути нашого Blurb<sup>TM</sup>:

    blurb1.time = Time.now
    blurb1.mood = :sick

    puts blurb1
