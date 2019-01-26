---
lang:   RU
title:  Ваш собственный сад
answer: Blurbalizer:
ok:     Приложение создано
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end
---

Ладно, давай обернемся, малыш. Вот последняя глава эпической истории познания «Try Ruby»!
Теперь, когда у вас есть понимание, как все это работает, как вы собираетесь использовать это?
Ты отличный человек (один из моих любимых), но тебе нужно руководство.

### Давай закончим наше приложение
У вас есть записи приложений, но нет приложения.
По-прежнему нужно место, где хранить все Blurbs<sup>TM</sup> и упорядочить их.

Угадайте что, мы собираемся использовать другой класс. Я дал весь код для нового класса за один раз.
Только потрать время, чтобы изучить его.
Я не тороплюсь, я буду ждать тебя на следующем уроке.

    class Blurbalizer
      def initialize(title)
        @title  = title
        @blurbs = [] # Пустой массив
                     # для зранения Blurbs
      end
      
      def add_a_blurb(mood, content)
        # << означают добавить в конец массива
        @blurbs << Blurb.new(mood, content)
      end
      
      def show_timeline
        puts "Blurbify: #{@title} has #{@blurbs.count} Blurbs"
        
        @blurbs.sort_by { |t|
          t.time
        }.reverse.each { |t|
          puts "#{t.content.ljust(40)} #{t.time}"
        }
      end
    end
    
    myapp = Blurbalizer.new "The Big Blurb"
