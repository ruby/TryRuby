---
lang:   TR
title:  Elementsel
answer: ^(12|35|47)$
load:   ticket = [12, 47, 35]
ok:     Tamam
error:  Neredeyse
---

Lotto numaralarımızı ticket adlı değişkenimizde sakladık. Onları nasıl geri çıkarcaz?

zaten __max__ ile en yüksek numarayı alabileceğimizi görmüştük. Benzer bir şekilde
bir listenin __ilk__ ya da __son__ elementlerini de alabilirsin.
Ancak ya spesifik bir element istiyorsan?

### [ ]
Ruby, belirli bir elementi alabilmek için kareli parantezleri [ ] kullanır.
Kareli parantezler Ruby'de yaygındır.
Bunlar, sanki bir nişana tam hedef almak için bir dürbün gibi kullanılır. Aynen.
Bu kareli parantezler, "Şunu arıyorum ____" Hazır, nişan al.

Hadi tüm lotto numaralarımızı alalım:

    puts ticket[0]
    puts ticket[1]
    puts ticket[2]

Neden [0], [1], [2] şeklinde kullanıyoruz?

Ve [1], [2], [3] şeklinde kullanmıyoruz? Bu Bir Japon Zen olayı mı?
Yoo, bilgisayar insanları sadece 0'dan başlayarak saymayı seviyor. Ruby ile alakalı bir olay değil,
bu _sıfır bazlı indexleme_ çoğu programlama dilinde kullanılmakta.

> Küçük bir hatırlatma: __Copy__ butonunu editöre örnek kodu koypalamak için kullanabilirsin.
