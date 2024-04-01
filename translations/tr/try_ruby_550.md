---
lang:   TR
title:  Tamamen Birleştirmekle Alakalı
answer: :-
ok:     Kaprisli!
error:
load:   prev
---

Bazı güzel şeyler Ruby'nin basit parçalarıyla yapılabilir, özellikle onları
yeni şeylere birleştirdiğin zaman.
Burada bir class içeren başka bir class'tan oluşan bir aplikasyonumuz var. Ve, aslında, Ruby bu şekildeki
yaratıklarla gayet iyi çalışıyor. Buna obje oryantasyonlu programlama deniyor.

TryRuby'deki __son programlama egzersizine__ geldik. İstersen, Blurbalizer<sup>TM</sup>'a daha çok
yeni özellikler ekleyebilirsin.

Belki __show_timeline__ metodunda ruh halini bir smiley olarak yazdırmak istiyorsundur. Blurb<sup>TM</sup> class'ına
_moodify_ metodunu ekleyebilir ve o metodu _show\_timeline_ metodunda kullanabilirsin:

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
