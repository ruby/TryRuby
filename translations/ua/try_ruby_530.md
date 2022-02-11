---
lang:   UA
title:  Твій власний терен
answer: Blurbalizer:
ok:     Додаток створено
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end
---

Гаразд, закругляймося, хлопче. Ось останній розділ епічної історії пізнання Try Ruby!
Тепер, коли у тебе є розуміння, як все це працює, як ти збираєшся його використовувати?
Ти чудова людина (один з моїх улюбленців), але тобі потрібне керівництво.

### Закінчимо наш додаток
У нас є записи додатків, але може бути відсутня програма.
Як і раніше потрібно ім'я, місце, де можна зберігати всі Blurbs<sup>TM</sup> і впорядкувати їх.

Ми збираємося використовувати інший клас. Я дав весь код для нового класу за раз. Тільки __не поспішай, вивчи його__.
Я не поспішаю, я буду чекати тебе на наступному уроці.

    class Blurbalizer
      def initialize(title)
        @title  = title
        @blurbs = [] # Порожній масив
                     # для зберігання Blurbs
      end
    
      def add_a_blurb(mood, content)
        # The << means add to the end of the array
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
