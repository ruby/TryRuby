---
lang:   UA
title:  Про комбінування
answer: :-
ok:     Moody!
error:
load:   prev
---

Деякі цікаві речі можна зробити за допомогою простих частин Ruby, особливо коли ти їх поєднуєш разом в дещо нове. Тут ми маємо додаток, що складається з класу, що містить інший клас. Це називається об'єктно-орієнтоване програмування (ООП).

Ми приступаємо до __останнього завдання__ на TryRuby. Якщо хочеш, то можеш додати більше цікавого в Blurbalizer<sup>TM</sup>.

Може ти захочеш вивести усміхнений смайлик в методі __show\_timeline__.
Ти маєш додати _moodify_ метод в клас Blurb<sup>TM</sup> і потім використати цей метод в __show\_timeline__:

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
        # Додай інший смайлик сюди
        end

        # Смайлик за замовчуванням
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
        puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs"

        @blurbs.sort_by { |t|
          t.time
        }.reverse.each { |t|
          puts "#{t.content.ljust(40)} #{t.time}"
        }
      end
    end

    myapp.show_timeline
