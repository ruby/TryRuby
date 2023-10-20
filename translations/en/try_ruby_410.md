---
lang:   EN
title:  All's Well That Ends Well
answer: All's Well That Ends Well
ok:     True
error:  Use 1605 as the second parameter
load:   prev
---

Okay, we got some data from the internet, we selected what we wanted and printed it out.
What is left to improve? We could print the results a bit prettier. Like add the year
and align titles and years.

This means printing several values on one line. Ruby has a neat way of doing
that. It is just like printing a string like: __puts "Hi, my name is Jimmy"__.
But instead of the literal value _Jimmy_ we use the value of a variable.

First replace __Jimmy__ with __#{}__. If Ruby sees a hash symbol # followed by a curly brace {
it looks for a variable between the first brace and the following closing brace }.
So we can use this: __"Hi, my name is \#{name}"__.

Let's change our code a bit

    def print_plays(year_from, year_to)
      get_shakey["William Shakespeare"]
        .select { |k, v|
          year_from <= v["finished"] &&
          year_to   >= v["finished"]
        }.each { |k, v|
          puts "#{v["title"].ljust(30)} #{v["finished"]}"
        }
    end
    print_plays(1600, 1605)

I have added __.ljust(30)__ to the title. This way the title is _left justified_ with a minimum
length of 30 characters so the years align nicely.

See if you can change the output of the program so that it shows the plays like this: __1600 -> As You Like It__

__All's Well That Ends Well?__ Hey we're not done yet, but the end is in sight!
