---
lang:   TR
title:  Daha Çok Isırık Büyüklüğünde Değerlendirmeler
answer: [3-9]
load:   books = {"Gravitys Rainbow" => :splendid}
ok:     Gördün mü, length metodu hem string'de hem array'de hem de hash'de kullanılabiliyor
error:
---

Devam et, değerlendirmelerle doldur. Eğer olur da tüm listeyi görmek istersen sadece şunu yazman yeterli: __puts books__

Tekrardan, değerlendirmeler sadece: :splendid, :quite\_good, :mediocre, :quite\_not\_good and :abysmal.

Bu değerlendirmeler string değiller. Basit bir kelimenin önüne iki nokta üst üste karakterini koyduğunda bir __symbol__ haline gelirler.
Symbol'ler string'lerden daha ucuzdurlar(bilgisayar hafızası anlamında.) Eğer olur da belirli bir kelimeyi programında tekrar ve tekrar
kullandığını fark edersen, symbol kullan. Aynı bir kelimenin hafızada binlerce kopyasını yaratmak yerine bilgisayar bu sayede sadece __bir adet__
symbol tutacaktır.

Daha önemlisiyse, bir symbol o kelimenin programın için bir anlamı olmayan herhangi bir kelime olmadığı anlamına gelmektedir.

2 tane daha kitap değerlendirmesi git, hash'te ne kadar kitap değerlendirmesi olduğunu görmek için __books.length__ yaz:

    books["The deep end"]  = :abysmal
    books["Living colors"] = :mediocre
    
    puts books
    
    puts books.length
