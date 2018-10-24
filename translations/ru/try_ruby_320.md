---
lang:   EN
title:  To (be) or not to (be)
answer:
load:   poem = "My toast has flown from my hand\nAnd my toast has gone to the moon.\nYada yada yada\n"
ok:
error:
---

One other little thing we haven't really talked about openly: method arguments.
Remember when we changed the poem a little bit? We used:
__poem.gsub("toast", "honeydew")__

The gsub method needs 2 arguments, which we passed to gsub by including two strings between
parenthesis. _Arguments tell the method exactly what to do._

### Parenthesis
Actually, most of the time Ruby doesn't mind if you omit the parenthesis. So this would have
worked too:
__poem.gsub "toast", "honeydew"__

We have already used another method with a parameter. Many times in fact, though it was not very
obvious:

    puts "Hello"
    puts("Hello")

Yes __puts__ is also a method. Using puts with or without parenthesis is the same to Ruby, but the
version without parenthesis is a bit easier to read. And it saves you valuable typing time!

> So I guess the conclusion is that you can do whatever you like with parenthesis as long as your
> code reads nicely.

### to (be) or not to (be)
So if _to_ is a method and _be_ is an argument we now know the answer to this age old question.
It is really just a matter of preference whether you want _to be_ or _to(be)_.

Are you in the mood for more Shakespeare? Read on.
