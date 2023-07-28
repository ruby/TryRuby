---
lang:   MK
title:  Дали си строг при оценувањето на книгите?
answer: :mediocre
load:   books = {"Gravitys Rainbow" => :splendid, "The deep end" => :abysmal, "Living colors" => :mediocre, "Bumblebees" => :mediocre}
ok:     Одлично, браво! Ти само што направи карта со твои оцени.
error:  
---

Даваш строги, нефер оцени? Ајде, да го зачуваме резултатот во нов hash __ratings__:

Потоа, може да ги изброиме твоите оцени. Остани со мене. Напиши:

    ratings = Hash.new {0}
    
    books.values.each { |rate|
      ratings[rate] += 1
    }
    
    puts ratings


Правата линија во кодот се вика **pipe character**, која најверојатно се наоѓа над копчето Enter
на твојата тастатура.

Делот **+= 1** од код линијата **ratings[rate] += 1** значи: зголеми ја вредноста за 1.

Не грижи се ако не разбираш сѐ што се случува тука. Ќе ти биде јасно подоцна.

