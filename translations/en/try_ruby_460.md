---
lang:   EN
title:  Accessors Are the Dangling Limbs
answer: Twat:
ok:     My first Twat
error:  
load:   class Twat;attr_accessor :content,:time,:mood;end
---

Hey, good class, man. You've got a new Twat<sup>TM</sup> class.

In the class definition, you used a method called attr\_accessor.
There are many __attr__ibute methods like this which add little settings to classes.
These attributes are just variables attached to a class.

Think of it this way. A class is like a person. That star-shaped human thing out there.
And the attributes are the dangling limbs, the different parts that make up a body and
other people can shake hands with.

### Now
To create a Twat<sup>TM</sup> and set the content:

    twat1 = Twat.new
    puts twat1
    twat1.content = "Today Mount Hood Was Stolen!"
