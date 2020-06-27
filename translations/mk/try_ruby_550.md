---
lang:   МК
title:  Сѐ е до комбинирањето
answer: :-
ok:     Moody!
error:
load:   prev
---

Некои убави работи можат да бидат направени со едноставни делови од Руби, посебно кога ќе ги
искомбинираш заедно за да креираш нови работи.

Тука, ние имаме апликација направена од класа која содржи друга класа. И, всушност, Руби навистина добро
функционира со ваквите вгнездувања. Тоа се нарекува објектно ориентирано програмирање.

Ние стигнавме до __последната вежба за програмирање__ од TryRuby. Доколку сакаш, можеш да додадеш
и други перформанси (анг. features) на Blurbalizer<sup>TM</sup>.

Можеби ти сакаш да го прикажеш расположението преку емотикони во __show_timeline__ методот. Можеш 
да додадеш _moodify_ во Blurb<sup>TM</sup> класата и тогаш да го искористиш тој метод во 
 _show\_timeline_ методот:

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
        # Add other moods here
        end

        # The default mood
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
