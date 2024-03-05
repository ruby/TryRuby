---
lang:   TR
title:  Accessor'lar Sallanan Uzuvlardır
answer: Blurb:
ok:     İlk Blurb'üm
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;end
---

Hey, güzel class, dostum. Yeni bir Blurb<sup>TM</sup> class'ın var

Class tanımalmasında attr\_accessor adlı bir metod kullandın.
Bunun gibi küçük class'a küçük ayarlar ekleyen birçok __attr__ibute metodları bulunmaktadır.
Bu attribute'lar sadece class'a yapışık değişkenlerdir.

Şu şekilde düşün. Bir class insan gibidir.O dışarıda dolaşan yıldız şekilli şey işte.
Ve attribute'lar da sallanan uzuvlar, farklı parçalar bir vücudu oluşturur ve insanlar
el sıkışabilir.

### Şimdi
Blurb<sup>TM</sup> oluşturup içeriğini belirlemek için:

    blurb1 = Blurb.new
    puts blurb1
    blurb1.content = "Today Mount Hood Was Stolen!"
