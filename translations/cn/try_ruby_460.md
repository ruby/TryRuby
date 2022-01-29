---
lang:   EN
title:  Not a School Class, a Working Class
answer:
ok:
error:
---

You see, the empty curly braces {} is a shortcut for Hash.new. The new method is used to make objects
of a certain class. Think "class" as in "working class" &mdash; a specific group of objects which
are similar, have the same jobs, the same shirts.
What use is a class?

### Blurbalizer<sup>TM</sup>
You just had a brilliant idea for a new app. It is going to be __the__ next instant
messaging platform. You want an app where people can send each other short messages. You call
these messages Blurbs<sup>TM</sup>. A Blurb<sup>TM</sup> has a maximum length of just 40 characters. Let's do a mood setting too.

<!---The Internet has really brought back stick people and smileys out of bankruptcy. __Emote!__-->

### Where to start
Well, you might store your Blurbs<sup>TM</sup> entries in a json file, right?
But how would you keep track of the content of the entry and the time it was posted?
And when you loaded the file, how would it look in Ruby?
Would it be a Hash? Or an Array? Or an Array of Arrays? Or something else?

### Class
I really think you'll want to use a class. You are already familiar with many classes:
Hash, Array, String.
Let's make a new class (returns no output):

    class Blurb
    end
