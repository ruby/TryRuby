---
lang:   TR
title:  Açım
answer: ^Aç değilim
ok:     Evet
error:  Sabah 10'da aç olmam imkansız!
---

Tamam, her şey güzelce bir araya geliyor. Bunlar senin için kolay şeyler, ancak aklında tut ki
15 dakika önce bir Ruby bilgin yoktu.

Son adım. Artık tüm bunları birbirine bağlamanın zamanı geldi, değil mi? Hadi beraber bu güzel müziği
parıldayan sahil ve mükemmel günbatımında beraber dinleyelim!

İlk önce iki metod tanımlayacak sonra bir karar vereceğiz:

    def hungry?(time_of_day_in_hours)
      puts "Me hungry"
      true
    end

    def eat_an(what)
      puts "Me eat #{what}\n"
    end

    eat_an 'apple' if hungry?(14)

    eat_an 'apple' if hungry?(10)

Şimdi false değerini döndürüp zaman öğle 12'den erken olunca __"Me not hungry"__ görüntüleyebilmek için __hungry?__ metodunu değiştirmeyi dene. 
