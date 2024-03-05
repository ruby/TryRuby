---
lang:   TR
title:  Sert Misin?
answer: :mediocre
load:   books = {"Gravitys Rainbow" => :splendid, "The deep end" => :abysmal, "Living colors" => :mediocre, "Bumblebees" => :mediocre}
ok:     Süper, vay! Değerlendirmelerinin bir puan kardını oluşturdun
error:  
---

Yani sağda solda gidip sert ve haksız değerlendirmeler mi yapıyorsun? Hadi yeni hash'imiz __ratings__ ile bunu takip edelim:

Öyleyse, tamam, hadi şimdi değerlendirmelerini sayalım. Sadece benimle kal. Şunu yaz:

    ratings = Hash.new {0}
    
    books.values.each { |rate|
      ratings[rate] += 1
    }
    
    puts ratings

Koddaki düz çizgi pipe karakteridir ve muhtemelen Enter tuşunun hemen üstünte yer almaktadır.

O _+= 1_ satırı şu anlama gelir: değeri 1 ile arttır.

Eğer burada olan her şeyi anlayamıyorsan endişelenme. Sonradan açıklayacağız.
