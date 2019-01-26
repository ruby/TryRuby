---
lang:   EN
title:  It's All About Combining
answer: :-
ok:     Moody!
error:
load:   prev
---

Some beautiful things can be done with the simple parts of Ruby, especially when you combine them
together into new things.
Here we've got an app made of a class containing another class. And, actually, Ruby really does good
with this kind of creature. It is called object oriented programming.

We have arrived at the __last programming excercise__ of TryRuby. If you want, you can add some
more features to Blurbalizer<sup>TM</sup>.

Maybe you want to print the mood as a smiley in the __show_timeline__ method. You could add
a _moodify_ method to the Blurb<sup>TM</sup> class and then use that method in the _show\_timeline_ method:

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
