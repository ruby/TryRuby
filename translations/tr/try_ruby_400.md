---
lang:   TR
title:  Şimdi Hep Beraber
answer: ^4$
ok:     Evet, Shakespeare 1591'de 4 oyun yazdı
error:  Cevap, 1591 yılı için 4 olmalı
load:   prev
---

Şimdi, düşünelim ki biz sadece belirli bir yılda Shakespeare tarafından yazılan oyunların
isim ve sayılarını bulmak istiyoruz.

Ruby, bizim değerleri bir hash'ten __select__ aracılığıyla seçmemize izin veriyor. select metodu
bizim neyin seçileceğini belirmememiz için bir block kullanıyor.

__select__ metodunun daha önce döndürdüğü sonuçları __each__ metodu içerisinde select block'u sonrasında
ekleyerek kullanabiliriz. Bu daha önce şiiri terster çevirirken gördüğümüz metod zincirlemesine başka bir örnektir.

Senin için __count\_plays__ metodunu hazırladım. Shakespeare'in __1591__  yılında ne kadar oyun
yazdığına bir bak bakalım. Şunu dene:

    def count_plays(year)
      s = get_shakey
      
      s["William Shakespeare"]
        .select { |k, v|
          v["finished"] == year
        }.each { |key, val|
          puts val["title"]
        }.count
    end
    
    puts count_plays(0)

count metodunu en sona zincirlediğimi fark ettin mi? Bu bize __count\_plays__ metodu için
geri döndürülecek bir değer veriyor.

Burada zincirleme için başka bir olasılık daha var. O yalnız __s = get_shakey__ satırını görüyor musun?
get_shakey'den sonra __["William Shakespeare"].select { |k, v|__'ı ekleyebilirdin
(bu örnekte ihtiyacın yok).
