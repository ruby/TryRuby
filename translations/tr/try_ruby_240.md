---
lang:   TR
title:  Küçük Boş Bir Kitap
answer: ^(splendid|quite_good|mediocre|quite_not_good|abysmal)$
load:   books = {}
ok:     Evet o yeni bir eleştiri
error:  splendid, quite_good, mediocre, quite_not_good, abysmal değerlerinden birini kullan.<br/>İki nokta üst üsteyi unutma
---

Boş bir __hash__ yaptın. Hast boş bir array gibidir, tek farkı her bir elementinin bir adı olmasıdır.

Yeni hash'imize birkaç yeni minyatür eleştiriler koyacağız. İşte bizim değerlendirme sitemimiz:

- :splendid &rarr; bir sanateseri
- :quite\_good &rarr; güzel, aynen, evet
- :mediocre &rarr; iyi tarafları olduğu kadar kötü tarafları da vardı
- :quite\_not\_good &rarr; oldukça kötü
- :abysmal &rarr; duman tüten enkaz

Bir kitabı değerlendirmek için, köşeli parantez içerisine başlığı ve değerlendirmeyi de eşittir işaretinden sonra koy. Mesela

    books["Gravitys Rainbow"] = :splendid

> Şimdi, TryRuby içerisindeki her dersin birbirinden ayrı olduğunu söylemeyi boynumun bir borcu olarak görüyorum.
> Yani, eğer burada gidip deli gibi değerlendirmeler yazıverirsen onları sadece bu derste görüntüleyebilirsin.
> Eğer oluşturduğun değerlendirmeleri diğer derslerde kullanmak istiyorsan o zaman kopyala/yapıştır yapmalısın.
> Bunları çok kafana takma, her dersin kendine özel uğraşabilmen için önceden yaratılmış şeyleri var zaten.
