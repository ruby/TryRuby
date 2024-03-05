---
lang:   TR
title:  Bir Çetele
answer: \w+
ok:     Yodelay!
error:
---

Kullandığımız mükemmel şeylerden bir tanesi __block__. Bunları bu derste daha çok keşfedeceğiz. Ancak,
basitçe, bir block süslü parantezlerle çevrelenmiş Ruby kodudur.

Hadi bir başka block daha deneyelim:

    5.times { print "Odelay! " }

Block'lar her zaman metodlara bağlıdırlar. Kodu alıp tekrar ve tekrar çalıştıran __times__ metodunda da olduğu gibi. (Bizim örneğimizde: beş kere.)