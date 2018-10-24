---
lang:   EN
title:  More Bite-Size Reviews
answer: [3-9]
load:   books = {"Gravitys Rainbow" => :splendid}
ok:     See, the length method works on strings, array's and hashes.
error:
---

Keep going, fill it up with reviews. And, if you want to see the whole list, just type: __puts books__

Again, the ratings are: :splendid, :quite\_good, :mediocre, :quite\_not\_good and :abysmal.

These ratings are not strings. When you place a colon in front of a simple word, you get a __symbol__.
Symbols are cheaper than strings (in terms of computer memory.) If you use a word over and over in your program,
use a symbol. Rather than having thousands of copies of that word in memory, the computer will store the symbol only
__once__.

More importantly, a symbol tells you that is not just any old word but has a meaning within your program.

Enter 2 more bookreviews, use __books.length__ to see how many reviews there are in the hash:

    books["The deep end"]  = :abysmal
    books["Living colors"] = :mediocre
    
    puts books
    
    puts books.length
