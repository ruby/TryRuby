---
lang:   EN
title:  Ringlets of Chained Methods
answer: My toast has flown from my hand
load:   prev
ok:     Good show, my friend!<br/>The join method took that array of lines and put them together into a string.
error:  
---

So what do you see? What happened there? You typed __poem.lines.reverse__ and what happened?

Two things happened. You turned the poem into a list using lines.
Lines decides the way the string is split up and converts it into an Array.

Then, you reversed that list. You had each line. You reversed them. That's it.

Let's tack one more method on the end there:

    puts poem.lines.reverse.join

Combining methods like this is called _method chaining_.