---
lang:   TR
title:  Okul Class'ı Değil, Çalışan Class
answer:
ok:
error:
---

Gördüğün gibi, boş süslü parantezler {} aslında Hast.new için bir kısa yol. new metodu belirli bir class
için yeni objeler oluşturmak adına kullanılır. "class" kavramını aslında "çalışan class" olarak düşün &mdash;
aynı gömleği olan, aynı işleri olan, spesifik birbirine benzer bir grup objeler.

### Blurbalizer<sup>TM</sup>
Yeni bir aplikasyon için mükemmel bir fikir aklına geldi. O yeni hızlı mesajlaşma
platformu olacak. İnsanların birbirine kısa mesajlar gönderebileceğ bir aplikasyon istiyorsun.
Bu mesajlara Blurbs<sup>TM</sup> diyorsun. Bir Blurb<sup>TM</sup>'ün maksimum uzunluğu 40 karakterdir.
Ayrıca bir ruh havası belirleme de yapalım.

<!---İnternet gerçekten de çubuk adamlar ve smiley'leri iflastan kurtardı. __Emote!__-->

### Nereden başlanmalı
İstersen Blurbs<sup>TM</sup> girişlerini bir json dosyasında depolayabilirsin, değil mi?
Ancak girişlerin içeriği ve yayınlandığı zamanları nasıl takip edebilirsin?
Ayrıca dosyayı indirdiğinde Ruby'de nasıl görünürdü?
Bir Hask mi olurdu? Ya da bir Array mi? Ya da Array'den oluşan bir Array? Ya da başka bir şey?

### Class
Ben gerçekten bir class kullanmak isteyeceğini düşünüyorum. Zaten birçok class ile aşinasın:
Hash, Array, String.
Hadi yeni bir class yapalım (bir çıktı döndürmeyecek):

    class Blurb
    end
