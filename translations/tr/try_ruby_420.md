---
lang:   TR
title:  Eğer Karar Vermeyi Bilseydim
answer: 
ok:     
error:  
---

Karar verme, gerçek hayatta bir problem olabilir. Ama bizim için değil.
Ruby karar verme sürecini çok kolaylaştırıyor.

    if 1 < 2
      puts "It is true: 1 is less than 2"
    end

Buradaki anahtar kelime __if__. If bir metoddan önce veya sonra şu şekilde yerleştirilebilir:

    puts "It is true: 1 is less than 2" if 1 < 2

__If__ aslında bir parametre gerektiren bir metoddur. O parametre test etmek istediğin ifade olabilir.
O test edilen ifadenin sonucu ya __true__ ya da __false__ olmalıdır.
İşte burada sonuçlarıyla birkaç ifade:

    5     <= 10     # => true
    'abc' == 'def'  # => false
    true            # => true
    123456          # => true
    0               # => true
    nil             # => false
    'xyz'.empty?    # => false
    'a' > 5         # => error:
                    # comparison of String with
                    # Numeric failed

_if ifadesi_ birden fazla form alabilir. Literal değerleri (1 < 2),
değişkenleri (a < 1) ve bir metodun döndürdüğü değeri ('xyz'.empty?) karşılaştırabilir.
