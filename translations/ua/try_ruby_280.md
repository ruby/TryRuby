---
lang:   UA
title:  Ти суворий критик?
answer: :mediocre
load:   books = {"Фарбований Лис" => :splendid, "Сутінки. Сага." => :abysmal, "Хоббіт" => :mediocre, "Голодні ігри" => :mediocre}
ok:     Ти створив свій власний рейтинг книжок
error:  
---

Ти пишеш суворі, несправедливі відгуки? Порахуємо їх в новому словнику __ratings__:

Тепер ми можемо їх порахувати. Набери:Then, okay, now let's count up your reviews. Just stay with me. Type:

    ratings = Hash.new {0}

    books.values.each { |rate|
      ratings[rate] += 1
    }

    puts ratings

Прямою лінією в коді є символ pipe, ймовірно, розташований зверху клавіші Enter на твоїй клавіатурі.

Цей рядок += 1 означає: збільшити значення на одиницю.

Не турбуйся, якщо не розумієш всього, що тут відбувається. Все буде ясно пізніше.
