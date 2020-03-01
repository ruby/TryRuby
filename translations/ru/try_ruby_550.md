---
lang:   RU
title:  Это все про комбинирование
answer: :-|
ok:     Эмоционально!
error:
load:   prev
---

Интересные вещи можно сделать с помощью простых частей Ruby, особенно когда вы
их объединяете вместе в нечто новое. Здесь у нас есть приложение, состоящее из
класса, содержащего другой класс. На самом деле, Ruby очень хорошо справляется
с таким созданием. Это называется объектно-ориентированное программирование
(ООП)

Мы приступаем к __последнему заданию__ на TryRuby. Если хотите, то можете
добавить больше интересного в Blurbalizer<sup>TM</sup>.

Может вы захотите выводить улыбающийся смайлик в методе __show_timeline__. Вы
можете добавить метод _moodify_ в класс Blurb<sup>TM</sup> и затем использовать
его в методе _show\_timeline_:

    class Blurb
      attr_accessor :content, :time, :mood

      def initialize(mood, content="")
        @time    = Time.now
        @content = content[0..39]
        @mood    = mood
      end

      def moodify
        if    @mood == :sad
          return ":-("
        elsif @mood == :happy
          return ":-)"
        # Добавьте другой смайлик сюда
        end

        # Смайлик по умолчанию
        ":-|"
      end
    end

    class Blurbalizer
      def initialize(title)
        @title  = title
        @blurbs = []
      end

      def add_a_blurb(mood, content)
        @blurbs << Blurb.new(mood, content)
      end

      def show_timeline
        puts "Blurbalizer: #{@title} содержит #{@blurbs.count} Blurbs"

        @blurbs.sort_by { |t|
          t.time
        }.reverse.each { |t|
          puts "#{t.content.ljust(40)} #{t.time}"
        }
      end
    end

    myapp.show_timeline
