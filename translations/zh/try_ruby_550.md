---
lang:   ZH
title:  一切都有关结合
answer: :-
ok:     Moody!
error:
load:   prev
---

用Ruby的简单部分可以创造出很美的东西，特别是当你把它们结合在一起产生新事物。
我们做了一个类包含着类的app。而Ruby很擅长做这类事情。
这就是面向对象编程。

我们将要面对TryRuby __最后的编程练习__。 如果你想，你可以为Blurbalizer<sup>TM</sup>增加更多功能。

也许你想把__show_timeline__ 方法中的情绪用笑脸打印出来。
你可以在Blurb<sup>TM</sup>类中添加一个 _moodify_ 方法，
然后在 _show\_timeline_ 方法中使用：

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
