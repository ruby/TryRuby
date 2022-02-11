---
lang:   ZH
title:  一个对象，整洁的小包裹
answer: Blurb:
ok:     Blurb已更新
error:  
load:   prev;blurb1=Blurb.new;blurb1.content="Today Mount Hood Was Stolen!"
---

继续设置Blurb<sup>TM</sup>的时间和心情:

    blurb1.time = Time.now
    blurb1.mood = :sick
    
    puts blurb1
