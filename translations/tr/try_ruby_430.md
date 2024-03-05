---
lang:   TR
title:  Ve Şimdi Şaşırtıcı Sonuca Gelelim
answer: 100$ değerine eşit değil
ok:     Şimdi daha iyi
error:  Bu doğru olamaz
---

__'abc' == 'def'__ ifadesinde bulunan çift eşitlik sembolünü gördün mü?

__==__,  __eşittir__ anlamına gelir.
Önceden gördüğümüz tek eşittir sembolü __bir değişkene değer atamak__ için kullanılır.

Daha çok kafa karıştırmak için: bir if metodundan sonra böyle bir atama kullanabilirsin:

    a = 0
    
    if a = 100
      puts "Expression is true, but a is now: #{a}"
    else
      puts "#{a} is not equal to 100"
    end

= sembolünü == sembolüne çevir ve ne olduğunu gör.

Garanti ederim ki ikinci eşittir sembolünü yazmayı düzenli olarak unutacaksın. Ben de
bazen unutuyorum.

### else
Yukarıdaki kodda bir else ifadesi ekledim. Bu kısım if test ifadesi false olursa çalıştırılacak.

> Bu if-then-else temasının sahip olduğu daha çok varyasyonlar bulunmaktadır. <a href="http://www.ruby-doc.org/core/syntax/control_expressions_rdoc.html" target="_blank">Burada</a> bunun hakkında daha çok okuyabilirsin.
