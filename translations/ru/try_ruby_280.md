---
lang:   RU
title:  А ты суров?
answer: :mediocre
load:   books = {"Война и мир" => :splendid, "Отцы и дети" => :abysmal, "Идиот" => :mediocre, "Евгений Онегин" => :amazing}
ok:     Отлично, круто! Вы создали таблицу своих оценок
---

Вы выдаете суровые, несправедливые отзывы? Давайте посчитаем их в новом hash __ratings__:
Следуя за мной, наберите:

    ratings = Hash.new {0}
    
    books.values.each { |rate|
      ratings[rate] += 1
    }
    
    puts ratings

Прямой линией в коде является символ pipe , вероятно, расположенный над клавишей Enter
на клавиатуре.

Эта строка _ + = 1_ означает: увеличить значение на 1.

Не беспокойтесь, если вы не понимаете все, что здесь происходит. Это будет показано позже.
