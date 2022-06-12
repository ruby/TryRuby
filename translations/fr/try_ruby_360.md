---
lang:   EN
title:  Give and take
answer: \d+
ok:     Right on. Bravo.
error:
---

Most methods do not only want some parameters as input, but will also __give something back__.
I have changed our method a bit so it will return a value to you. Try it:

    def tame( number_of_shrews )
      number_of_shrews.times {
        puts "Tamed a shrew"
      }
      return number_of_shrews
    end

    puts tame(3)

### Return
And, since you're getting so advanced and capable here, one other tip:
you can omit the word __return__ from the last line of the method.
Ruby will automagically return the last value that was used inside the method.

So we can change the last line to just: __number\_of\_shrews__.

But since method __.times__ also returns the _number\_of\_shrews_ we can
remove the entire last line. So in fact our original method already did what we wanted all along!
