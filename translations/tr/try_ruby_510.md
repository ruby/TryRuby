---
lang:   TR
title:  Aplikasyonuna Değersiz Şeyleri Reddetmeyi Öğrettin
answer: Blurb:
ok:     Blurb eklendi
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end;blurb1=Blurb.new(:sick,"Today Mount Hood Was Stolen!")
---

Class içerisinde nasıl at-symbol'lerini (@time) kullandığımızı gördün mü?

Class __dışarısında__ accessor'lar kullanıyoruz:

> __blurb.time = Time.now__

ancak __içeride__ kullandıklarımızsa __objenin değişkenleri__: 

> __@time = Time.now__

Tamamen aynı şeyler, ancak programında iki farklı yerde ifade edilmekteler.

### Başka bir Blurb<sup>TM</sup>
Ne zaman bir Blurb<sup>TM</sup> yaratılsa, initialize metodu new metoduna verilen argümanları
kontrol etmek için çalıştırılır.

Uh, iki argümana ihtiyacımız var:

    Blurb2 = Blurb.new :confused, "I can not believe Mt. Hood was stolen!"
