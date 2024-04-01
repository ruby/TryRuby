---
lang:   TR
title:  To (be) or not to (be)
answer:
load:   poem = "Tostum elimden fırlayıverdi\nVe tostum aya uçtu.\nfalan filan falan filan falan filan\n"
ok:
error:
---

Üzerinde çok konuşmadığımız diğer bir küçük şeyse: metod argümanları.
Şiiri biraz değiştirdiğimiz zamanı hatırlıyor musun? Şunu kullanmıştık:
__poem.gsub("toast", "honeydew")__

gsub metodunun 2 argümana ihtiyacı var ve biz bunları parantezler arasında iki string vererek kullandık.
_Argümanlar metoda tam olarak ne yapılması gerektiğini söylerler._

### Parantezler
Aslında, çoğu zaman parantezleri kullanmaman Ruby'nin umrunda değildir. Yani bu da çalışırdı:
__poem.gsub "toast", "honeydew"__

Zaten parametrelerle başka bir metodu kullanmıştık. Hatta birden fazla kere, ancak o kadar da açık değildi:

    puts "Hello"
    puts("Hello")

Evet, __puts__ da bir metod. puts metodunu parantezli veya parantezsiz kullanmak Ruby için aynı şey, ancak
parantezsiz versiyonunu okumak biraz daha kolay. Ayrıca seni değerli yazma zamanından da da kurtarmış oluyor!

> Sanırım buradaki sonuç kodun güzelce okunduğu sürece parantezlerle ne istersen yapabileceğin.

### to (be) or not to (be)
Yani eğer _to_ bir metod ve _be_ de bir argümansa bu eski soruya olan cevabı biliyoruz.
_to be_ ya da _to(be)_ olmak aslında tamamen bir tercih meselesi.

Biraz Shakespeare için modda mısın? Okumaya devam et.
