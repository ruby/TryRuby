---
lang:   TR
title:  İyi Biten Her Şey İyi
answer: İyi Biten Her Şey İyi
ok:     True
error:  1605'i ikinci parametre olarak kullan
load:   prev
---

Tamam, internetten biraz data aldık ve istediğimizi seçip yazdırdık.
Geriye geliştirmek için ne kaldı? Sonuçları daha güzel yazdırabilirdik. Mesela yılı ekleyip
başlık ve yılı birbiriyle hizalayabiliriz.

Bu bir satıra birden fazla değer yazdırmak anlamına geliyor. Ruby'nin bunu yapmak için kullanışlı
bir yolu var. Normal bir string yazdırmak gibi: __puts "Hi, my name is Jimmy"__.
Ancak _Jimmy_ gibi literal bir değer yerine bir değişkenin değerini kullanıyoruz.

Önce __Jimmy__'i __#{}__ ile değiştir. Eğer Ruby bir hast sembolünü # süslü parantezden
önce görürse süslü parantezler arasındaki değişkenin değeri için aramaya başlar.
Yani şunu kullanabiliriz: __"Hi, my name is \#{name}"__.

Hadi kodumuzu biraz değiştirelim

    def print_plays(year_from, year_to)
      get_shakey["William Shakespeare"]
        .select { |k, v|
          year_from <= v["finished"] &&
          year_to   >= v["finished"]
        }.each { |k, v|
          puts "#{v["title"].ljust(30)} #{v["finished"]}"
        }
    end
    print_plays(1600, 1605)

Başlığa __.ljust(30)__'ı ekledim. Bu şekilde başlığın sola doğru minimum 30 karakter uzunlukta
güzelce hizalı olmasını sağladım.

Programın çıktısını bu şekilde değiştirmeyi bir deneyin: __1600 -> As You Like It__

__İyi Biten Her Şey İyi Midir?__ Hey, daha bitmedi. Ancak son yakındır.
