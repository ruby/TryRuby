---
lang:   TR
title:  Kaydedildi, Kenara Konuldu
answer: \[12, 35, 47\]
load:   ticket = [12, 47, 35]
ok:     Listeyi sıraladın
error:  
---

Lotto numaralarını ticket adında bir __değişkene__ atayarak onları sağlama aldın.
Tabii, eğer isteseydin _mahmut_ adında bir değişkene de atayabilirdin.

Zaten fark edeceksin ki programlama aslında genel olarak değişkenlerle uğraşmaktır.

Hadi lotto numaralarını sıralayalım, şuna ne dersin?

Şunu kullan: 

    ticket.sort!
    
Bir listen var. Bunu sıraladın. ticket adındaki değişkenin şimdi değişti.
_sort!_ metodunun sonda büyük bir ünlem işaretini barındırdığını fark ettin mi?
Ruby, genel olarak bir değişkeni kalıcı bir şekilde değiştirdiğinde sana öyle bağırır.
Herhangi bir özel bir şey değil, sadece bir işaret.
