---
lang:   FA-IR
title:  یک شی، اون بستهٔ کوچک مرتب
answer: Blurb:
ok:     Blurb به‌روزرسانی شد
error:  
load:   prev;blurb1=Blurb.new;blurb1.content="Today Mount Hood Was Stolen!"
---

خب، حالا وقتشه که Blurb<sup>TM</sup> رو کامل کنیم و زمان و حالت خلق و خو رو تنظیم کنیم:

    blurb1.time = Time.now
    blurb1.mood = :sick
    
    puts blurb1
