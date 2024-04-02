---
lang:   TR
title:  Farklı Bir Şekilde İfade Etmek
answer: ^[0-9\.,-]{1,}$
ok:     Aferin
error:
---

Birden fazla formül yazdığında sadece en sondakinin cevabını görebildiğini fark ettin mi?
Neler oluyor?

> Bu websitenin kullanımını iyileştirmek adına Ruby'e programının çıktısını
> çıktı ekranına yapıştırmasını söyledim. Böylelikle herhangi bir formül yazdığında sonucunu görebileceksin.
> __Ancak bu sadece son socuç için geçerli.__ Ayrıca çıktının boş da olması lazım.

Bu yüzden, 2 formül girdiğinde sadece sonuncunun sonucunu gördün.

Tabii ki, ekranı kontrol etme gücü sana ait! Sadece __puts__ yazman(ardından bir boşluk 
karakteri olacak şekilde) yeterli. Puts'un anlamı: *'ekrana bir şey koy'*.

Şunu dene:

    puts 4 * 10
    puts 5 - 12
    puts 30 / 4

Şimdi son formülden puts'u sil ve ne olduğunu gör.
