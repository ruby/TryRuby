---
lang:   EN
title:  You've Taught Your App to Reject Worthless Things
answer: Twat:
ok:     Twat added
error:  
load:   class Twat;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end;twat1=Twat.new(:sick,"Today Mount Hood Was Stolen!")
---

Did you see how inside the class we used the at-symbols (@time).

__Outside__ the class, we use accessors:

__twat.time = Time.now__,

but __inside__ we use __instance variables__:

__@time = Time.now__.

They're the exact same thing, but expressed in two different places of your program.

### Create another Twat<sup>TM</sup>
When a new Twat<sup>TM</sup> is created, the initialize method is used to check for any
arguments to new.

Uh, we need two arguments:

    twat2 = Twat.new :confused, "I can not believe Mt. Hood was stolen!"
