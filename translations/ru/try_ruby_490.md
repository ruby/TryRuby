---
lang:   RU
title:  Объект, этот аккуратный маленький пакет
answer: Blurb:
ok:     Blurb обновлен
error:  
load:   prev;blurb1=Blurb.new;blurb1.content="Today Mount Hood Was Stolen!"
---

А теперь поменяй атрибуты нашего Blurb<sup>TM</sup>:

    blurb1.time = Time.now
    blurb1.mood = :sick
    
    puts blurb1
