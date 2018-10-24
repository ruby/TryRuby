---
lang:   EN
title:  A Wee Blank Book
answer: ^(splendid|quite_good|mediocre|quite_not_good|abysmal)$
load:   books = {}
ok:     Yes that's a new review
error:  Use one of splendid, quite_good, mediocre, quite_not_good, abysmal. Don't forget the colon
---

You've made an empty __hash__. A hash is like an array, only every one of its elements has a name.

We're going to stuff some miniature book reviews in our new hash. Here's our rating system:

- :splendid &rarr; a masterpiece
- :quite\_good &rarr; enjoyed, sure, yes
- :mediocre &rarr; equal parts great and terrible
- :quite\_not\_good &rarr; notably bad
- :abysmal &rarr; steaming wreck

To rate a book, put the title in square brackets and put the rating after the equals. For example:

    books["Gravitys Rainbow"] = :splendid

> By now I think it is only fair to tell you that all lessons in TryRuby are separate from each other.
> So if you go crazy typing book reviews here, you can only use 'em in this lesson.  
> If you want to use your reviews in the next lesson you should copy/paste them.  
> Don't worry about this too much, each lesson has plenty of predefined stuff for you to play around with.
