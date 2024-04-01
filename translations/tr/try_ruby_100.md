---
lang:   TR
title:  Dur, Delilercesine Havlıyorsun!
answer: ^\d{1,}$
ok:     Sadece string'ler tersine çevirilebilir
error:  
---

40 sayısını tersine çeviremezsin. Aslında düşününce, monitörünü bir aynaya doğru tutabilirsin tabii ki, ancak bir numarayı tersine çevirmenin pek bir mantığı yok.

Ruby sana bir hata mesajı fırlattı. Ruby, sana reverse metodunun numaralar için var olmadığını anlatıyor.

Eğer belki numara değerini ilk önce string'e çevirirsen:

    40.to_s.reverse
