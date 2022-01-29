---
lang:   EN
title:  Elemental
answer: ^(12|35|47)$
load:   ticket = [12, 47, 35]
ok:     Ok
error:  Almost
---

So we stored our lotto numbers inside variable ticket. How to get 'em out again?

We already saw that we can get the highest number with __max__. Similarly you can
get the __first__ or the __last__ element of the list.
But what if you want a specific element?

### [ ]
Ruby uses the square brackets [ ] to target an element.
The square brackets are very common in Ruby.
They are like sights used to line up a target. Exactly.
These brackets mean, "I am looking for ____" Ready, aim.

Let's get all of our lotto numbers:

    puts ticket[0]
    puts ticket[1]
    puts ticket[2]

Why do we use [0], [1], [2]?

And not [1], [2] and [3]? Is that some kind of Japanese Zen thing?
No, we computer people just like to begin counting from zero. It's not just a Ruby thing,
this _zero based indexing_ is used in most programming languages.

> A little reminder: you can use the __Copy__ button to copy the example code to the editor.
