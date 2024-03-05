---
lang:   TR
title:  Hızlandırmak
answer: ^\d{4}
ok:     Not alındı
error:  
---

Güzel, aplikasyonun mükemmel. Hey, hadi bazı şeyleri senin için daha kolay hale getirelim.
Her Blurb<sup>TM</sup> yaptığında zamanı o şekilde belirlemek istemeyeceksin.

Sadece içerik ve ruh halini belirlemek istiyorsun, değil mi?

Hadi class'ımıza bir __initialize__ metodu oluşturalım. Bu metod her yeni Blurb<sup>TM</sup>
oluşturduğumuzda çağırılacak
O anda da Blurb<sup>TM</sup>'ün içeriğini 40 karaktere limitleyebiliriz.

    class Blurb
      attr_accessor :content, :time, :mood

      def initialize(mood, content="")
        @time    = Time.now
        @content = content[0..39]
        @mood    = mood
      end
    end
    
    Blurb.new(:sick).time

(O __content=""__ parametresi hiç content parametresi verilmese de
content'in string olduğunu garanti etmek için orada.)
