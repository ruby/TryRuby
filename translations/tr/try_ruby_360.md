---
lang:   TR
title:  Ver ve Al
answer: \d+
ok:     Nokta atışı. Bravo.
error:
---

Çoğu metodlar sadece giriş olarak parametreler istemez, ayrıca __geri bir şeyler de verirler__.
Metodumuzu biraz değiştirdim ki sana bir şey döndürsün. Şunu dene:

    def tame( number_of_shrews )
      number_of_shrews.times {
        puts "Tamed a shrew"
      }
      return number_of_shrews
    end

    puts tame(3)

### Return
Ve, burada bayağı gelişmiş ve yetenekli hale geldiğine göre sana benden bir ipucu:
istersen __return__ kelimesini metoddan kaldırabilirsin.
Ruby, bir sihirbaz gibi otomatik olarak metod içerisinde kullanılan son değeri döndürecektir.

Bu bizim son satırı sadece şuna değiştirebileceğimizi gösteriyor: __number\_of\_shrews__.

But since method __.times__ also returns the _number\_of\_shrews_ we can
remove the entire last line. So in fact our original method already did what we wanted all along!
Ancak zaten metod __.times__ ayrıca _number\_of\_shrews_ değerini döndüreceğizden ötürü son satırı tamamen
kaldırabiliriz. Yani zaten en başından beridir bizim orijinal metodumuz tam olarak da istediğimiz şeyi yapıyordu!
