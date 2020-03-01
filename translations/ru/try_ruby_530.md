---
lang:   RU
title:  Ваш собственный сад
answer: Blurbalizer:
ok:     Приложение создано
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end
---

Ладно, давайте подведем все к концу. Вот последняя глава эпической истории Try
Ruby! Теперь, когда у вас есть понимание, как все это работает, как вы
собираетесь использовать это? Вы - отличный человек (один из моих любимых), но
вам еще нужно небольшое руководство.

### Давай закончим наше приложение
У вас есть записи приложений, но нет самого приложения.
Ему все еще нужно название, место, где хранить все Blurbs<sup>TM</sup> и их график.

Угадайте, что! Мы собираемся использовать другой класс. Я дал весь код для
нового класса за один раз. Потратьте столько времени, сколько вам нужно, чтобы
изучить его. Я не тороплюсь, я буду ждать вас на следующем уроке.

    class Blurbalizer
      def initialize(title)
        @title  = title
        @blurbs = [] # Пустой массив
                     # для хранения Blurbs
      end
      
      def add_a_blurb(mood, content)
        # << означают добавить в конец массива
        @blurbs << Blurb.new(mood, content)
      end
      
      def show_timeline
        puts "Blurbify: #{@title} содержит #{@blurbs.count} Blurbs"
        
        @blurbs.sort_by { |t|
          t.time
        }.reverse.each { |t|
          puts "#{t.content.ljust(40)} #{t.time}"
        }
      end
    end
    
    myapp = Blurbalizer.new "Большой Blurb"
