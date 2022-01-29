---
lang:   EN
title:  Your Own Turf
answer: Blurbalizer:
ok:     My app created
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end
---

Okay, let's wrap things up, kid. Here's the last chapter of the GRIPPING epic story of Try Ruby!
Now that you've got a taste of how it all works, how are you going to use it around the house
and in your grocer's freezer?
You're a great person (one of my favorites), but you need guidance.

### Let's finish your app
You have app entries, but no actual app.
It still needs a title, someplace to store all Blurbs<sup>TM</sup> and a timeline in order to work.

Guess what, we're going to use another class. I've given all the code for the new class in one go.
Just __take your time__ to study it.  
I'm in no hurry, I'll wait for you in the next lesson.

    class Blurbalizer
      def initialize(title)
        @title  = title
        @blurbs = [] # A fresh clean array
                     # for storing Blurbs
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
