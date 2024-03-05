---
lang:   TR
title:  Bir Saniye, Yer Çekiminin Gökkuşağını Beğendim Mi?
answer: ^(splendid|quite_good|mediocre|quite_not_good|abysmal)$
load:   books = {"Gravitys Rainbow" => :splendid, "The deep end" => :abysmal, "Living colors" => :mediocre}
ok:     Çok beğendim
error:  
---

Ruby hakkında bir şey şu ki, isimler genel olarak tekrar ve tekrar kullanılır, bu sayede hatırlaman gereken isimler daha azdır.

Bir sayı kullanarak array'den nasıl bir element aldığımızı hatırla:
__puts ticket[1]__.

Bir hash için de bu aynı şekilde çalışıyor ancak element alabilmek için bir numara değil, bir isim kullanıyoruz.

Yani, eğer eski değerlendirmelerinden bir tanesine bakmak istersen başlığı köşeli parantezlere tekrardan koy ancak eşittir işaretlerini ekleme.
Tam olarak şöyle:

    puts books["Gravitys Rainbow"]
