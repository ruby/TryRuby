---
lang:   TR
title:  Sivri Uçluların Ehlileştirilmesi
answer: ^tame
ok:     Güzel güzel!
error:
---

Artık tamamen Ruby'i nasıl kullanman gerektiğini biliyorsun. Yani, temelleri biliyorsun.
Sadece daha çok metodları öğrenip daha kompleks blokları denemelisin.

Ancak Ruby'nin henüz hakkında konuşmadığımız bir kısmı daha var. Kendi metodlarını yapmak.
__Öhöm!__ Hadi onu da halledelim bari.

Ruby'nin zaten kendinden tanımlı metodlarının yanısıra (puts, sort, times gibi) kendi metodlarını da tanımlayabilirsin.
Peki bu neden iyi bir fikir? İki sebepten ötürü:

### Programını daha kısa yapabilmek için
Eğer kodunda aynı şeyi birden fazla yerde yapmak ihtiyacı duyuyorsan bu kodu ayrı bir metoda
koymak daha kolaydır. Kodun bu sayede daha kısa olacaktır.

### Kodunu daha kolay okunabilir yapmak için
Diyelim ki programın birçok şey yapmaya ihtiyaç duyuyor.
__Eğer istersen__ tüm kodunu upuzun bir parça halinde yazabilirsin. Ancak bu sonradan okuması ve
anlaması zor bir hale gelecektir.

Onun yerine kodunu ayrı metodlarda yazıp her birine anlaması kolay bir İngilizce isim ver.
Kendine bunun için sonradan teşekkür edeceksin.

Peki, nasıl bir metod tanımlayabiliriz? Bu şekilde:

    def tame( number_of_shrews )
    end
