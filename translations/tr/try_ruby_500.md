---
lang:   EN
title:  Quickening it Up
answer: ^\d{4}
ok:     Noted
error:  
---

Cool, your app is awesome. Hey, let's make things a bit easier on you.
You're not going to want to set the time like that every time you Blurb<sup>TM</sup>.

You just want to type the content and set the mood, right?

Let's add an __initialize__ method to our class. This method is called whenever a new Blurb<sup>TM</sup>
is created.
At the same time we can limit the length of the Blurb<sup>TM</sup> content to 40 characters.

    class Blurb
      attr_accessor :content, :time, :mood

      def initialize(mood, content="")
        @time    = Time.now
        @content = content[0..39]
        @mood    = mood
      end
    end
    
    Blurb.new(:sick).time

(That parameter __content=""__ is there to make sure that we know content is a string,
even if no content parameter is passed to the initialize method.)
