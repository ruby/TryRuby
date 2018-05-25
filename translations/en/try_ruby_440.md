---
lang:   EN
title:  Me hungry
answer: ^Me not hungry.$
ok:     Yes
error:  No way am I hungry at 10 AM!
---

Okay, this is coming along wonderfully. This is simple stuff for you, but keep in mind that you
didn't know __any Ruby whatsoever__ just fifteen minutes ago!

Last step. Let's tie it all together, you know? Let's make it chime together like a very nice set
of glistening chimes on the beach in the maginificent sunlight!

We'll define two methods first and then take a decision:

    def hungry?(time_of_day_in_hours)
      puts "Me hungry."
      true
    end

    def eat_an(what)
      puts "Me eat #{what}.\n"
    end

    eat_an 'apple' if hungry?(14)

    eat_an 'apple' if hungry?(10)

Now see if you can change the method __hungry?__ to display __"Me not hungry"__ and returning false
when the time is less than 12.
