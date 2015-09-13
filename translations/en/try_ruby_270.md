---
lang:   EN
title:  Hashes as Pairs
answer: ^\[".*"\]
load:   prev
ok:     You found the keys
error:  
---

Keep in mind that hashes won't keep things in order. That's not their job. It'll just pair up
two things: a __key__ and a __value__.

In your reviews, the book's title is the key and the rating is the value.

If you want to just see the titles of all the books you've reviewed:

    books.keys

You can also try this with .values instead of .keys.