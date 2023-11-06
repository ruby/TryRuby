---
lang:   DE
title:  Die Kombination macht's
answer: :-
ok:     Moody!
error:
load:   prev
---

Mit den einfachen Teilen von Ruby lassen sich einige wunderschöne Dinge 
anstellen, besonders wenn man sie zu neuen Dingen kombiniert.
Hier haben wir eine App, die aus einer Klasse besteht, die eine andere Klasse 
enthält. Und genau mit dieser Art von Kreaturen kann Ruby wirklich gut umgehen. 
Man nennt das objektorientierte Programmierung.

Wir sind bei der __letzten Programmierübung__ von TryRuby angekommen. Wenn du 
willst, kannst du dem Blurbalizer<sup>TM</sup> noch einige weitere Funktionen hinzufügen.

Vielleicht möchtest du die Stimmung als Smiley in der Methode __show_timeline__ 
ausgeben. Du könntest der Blurb<sup>TM</sup>-Klasse eine _moodify_-Methode 
hinzufügen und diese Methode dann in der _show\_timeline_-Methode verwenden:

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
