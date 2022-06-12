---
lang:   EN
title:  You've Taught Your App to Reject Worthless Things
answer: Blurb:
ok:     Blurb added
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end;blurb1=Blurb.new(:sick,"Today Mount Hood Was Stolen!")
---

Did you see how inside the class we used the at-symbols (@time).

__Outside__ the class, we use accessors:

> __blurb.time = Time.now__

but __inside__ we use the __object's variables__:

> __@time = Time.now__

They're the exact same thing, but expressed in two different places of your program.

### Create another Blurb<sup>TM</sup>
When a new Blurb<sup>TM</sup> is created, the initialize method is used to check for any
arguments to new.

Uh, we need two arguments:

    Blurb2 = Blurb.new :confused, "I can not believe Mt. Hood was stolen!"
