---
lang:   RU
title:  Я голоден
answer: ^Я не голоден.$
ok:     Да
error:  Без вариантов, я голоден в 10 утра!
---

Это прекрасно, но имей ввиду, что ты не знал Ruby всего 15 минут назад!

Давай теперь объединим все наши полученные навыки:
Давайте определим 2 метода: 

    def hungry?(time_of_day_in_hours)
      puts "Я голоден."
      true
    end

    def eat_an(what)
      puts "Я ем #{what}.\n"
    end

    eat_an 'яблоко' if hungry?(14)

    eat_an 'яблоко' if hungry?(10)

Видете, что метод __hungry?__ отображает __"Me not hungry"__ и возвращает false
когда времени меньше 10.
