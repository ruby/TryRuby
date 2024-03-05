---
lang:   EN
title:  Wait, Did I Like Gravity's Rainbow?
answer: ^(splendid|quite_good|mediocre|quite_not_good|abysmal)$
load:   books = {"Gravitys Rainbow" => :splendid, "The deep end" => :abysmal, "Living colors" => :mediocre}
ok:     I liked it a lot
error:  
---

One great thing about Ruby is that names are often reused, which means fewer names you need to remember.

Remember how we retrieved items from an array using a number:  
__puts ticket[1]__.

For a hash this works the same way, except we don't use a number to get an element but a name.

So, if you'd like to look up one of your old reviews, again put the title in the square. But leave off the equals.
Just like this:

    puts books["Gravitys Rainbow"]
