---
lang:   RU
title:  А ты суров?
answer: "mediocre"
load:   books = {"Gravitys Rainbow" => :splendid, "The deep end" => :abysmal, "Living colors" => :mediocre, "Bumblebees" => :mediocre}
ok:     Отлчно, круто! Вы создали таблицу своих оценок
---

Так вы выдаете суровые, несправедливые отзывы? Давайте посчитаем их в новом словаре __ratings__:
Следуй за мной. Набери:

    ratings = Hash.new {0}
    
    books.values.each { |rate|
      ratings[rate] += 1
    }
    
    puts ratings

Прямой линией в коде является символ pipe , вероятно, расположенный над клавишей Enter
на клавиатуре.

Эта строка _ + = 1_ означает: увеличить значение на 1.

Не беспокойтесь, если вы не понимаете все, что здесь происходит. Это будет показано позже.
