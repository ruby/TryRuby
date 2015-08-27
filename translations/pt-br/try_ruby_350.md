---
lang:   EN
title:  All together now
answer: ^4$
ok:     Yes, Shakespeare wrote 4 plays in 1591
error:  Answer for the year 1591 should be 4
load:   prev
---

Now suppose we only want to know the names and number of plays written by Shakespeare
in a certain year.

Ruby lets us __select__ values from a hash. The select method uses a block to let us
define what to select and returns what it found.

We can then use the results returned by __select__ in the __each__ method as before by
simply adding it after the select block. This is another example of method chaining, which we saw
earlier when reversing a poem.

I have prepared the __count\_plays__ method for you. See if you can find out how many plays
were written by Shakespeare in the year __1591__. Try this:

    def count_plays(year)
      s = get_shakey
      
      s["William Shakespeare"]
        .select { |k, v|
          v["finished"] == year
        }.each { |key, val|
          puts val["title"]
        }.count
    end
    
    puts count_plays(0)

Did you notice that I chained the count method at the end of the each method. This gives
us a return value for the __count\_plays__ method.

There is another possibility for chaining here. See that loney line __s = get_shakey__.
You could add the __["William Shakespeare"].select { |k, v|__ at the end of get_shakey
(no dot needed in this case).
