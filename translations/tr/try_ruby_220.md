---
lang:   TR
title:  Zincirlenmiş Metodlardan Oluşan Bukleler
answer: Tostum elimden fırlayıverdi
load:   prev
ok:     İyi iş yaptın!<br/>join metodu o satırlardan oluşan array'i aldı ve bir string'e dönüştürdü.
error:  
---

Ee, ne görüyorsun? Orda ne oldu? __poem.lines.reverse__ yazdın ve ne oldu?

İki şey oldu. Şiiri satırlardan oluşan bir listeye dönüştürdün.
Lines, string'in ayrıştırılacağı yönteme karar verip onu array'e dönüştürür.

Sonra, o listeyi tersine çevirdin. Her bir satırın vardı. Onları tersine çevirdin. Bu kadar.

Şu en sona bir tane daha metod ekleyiverelim:

    puts poem.lines.reverse.join

Metodları böyle yazmaya _metod zincirlemesi_ denir.