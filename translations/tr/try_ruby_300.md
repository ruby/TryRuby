---
lang:   TR
title:  Zamanın var mı?
answer: ^[0-9]$
ok:     Tam zamanında yaptın!
error:  Block'u 0 ila 9 arasında çalıştır.
---

Birince örnekte de gördüğümüz (değerlendirmeleri sayarken) gibi bir block'a değer verebiliyoruz. Bu block'a
verilen değerler block'u çalıştıran metoda bağlıdır.

Block tarafından alınan değerler block'un başında iki pipe sembolü arasına yazılan değişken isimlerinde tutulur: |

Hadi onu bu block'ta deneyelim:

    5.times { |time|
      puts time
    }

Burada, __.times__ metodu değeri __|time|__ adlı değişkene göndermektedir. Ayrıca, time adlı değişkenin sadece bu block içerisinde bilindiğini aklımızda tutalım.

> Bir kodu birden fazla satır üzerinde bölebileceğinizi fark ettiniz mi? Bu okumayı daha kolaylaştırır.
