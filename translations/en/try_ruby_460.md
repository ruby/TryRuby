---
lang:   EN
title:  Accessors Are the Dangling Limbs
answer: Blurb:
ok:     My first Blurb
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;end
---

Hey, good class, man. You've got a new Blurb<sup>TM</sup> class.

In the class definition, you used a method called attr\_accessor.
There are many __attr__ibute methods like this which add little settings to classes.
These attributes are just variables attached to a class.

Think of it this way. A class is like a person. That star-shaped human thing out there.
And the attributes are the dangling limbs, the different parts that make up a body and
other people can shake hands with.

### Now
To create a Blurb<sup>TM</sup> and set the content:

    blurb1 = Blurb.new
    puts blurb1
    blurb1.content = "Today Mount Hood Was Stolen!"
