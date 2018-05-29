---
lang:   EN
title:  The Taming of the Shrew
answer: ^tame
ok:     Good good!
error:
---

You totally know how to use Ruby now. I mean you've got down the essentials.
You just need to keep learning more methods and try out more complex blocks.

But there's one side of Ruby we haven't settled. Making your own methods.
__Ahem!__ Let's get it over with then.

Next to using Ruby's built in methods (like puts, sort, times) you can define
your own methods. Why is that a good idea? Two reasons:

### To make your program shorter
If you have to do the same thing in more than one part of your code it is easier
to put that code in a separate method. Your code will be shorter.

### To make your code easier to read
Suppose your program needs to do a lot of different things.
You __could__ stuff all code into one long piece. But it would be very difficult to
read and understand that code later.

Instead you should cut up your code in different methods and give each method an easy to
understand English name. You will thank yourself later.

So how do we define a method? Like this:

    def tame( number_of_shrews )
    end
