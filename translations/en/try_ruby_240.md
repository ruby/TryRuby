---
lang:   EN
title:  Are You Harsh?
answer: "mediocre"
load:   books = {"Gravitys Rainbow" => :splendid, "The deep end" => :abyssmal, "Living colors" => :mediocre, "Bumblebees" => :mediocre}
ok:     Great, wow! You've made a scorecard of your ratings
error:  
---

So are you giving out harsh, unfair reviews? Let's keep score with a new hash __ratings__:

Then, okay, now let's count up your reviews. Just stay with me. Type:

    ratings = Hash.new {0}
    
    books.values.each { |rate|
      ratings[rate] += 1
    }
    
    puts ratings

The straight line in the code is the pipe character, probably located right above the Enter key
on your keyboard.

Don't worry if you don't understand everything that is going on here. It will be revealed later.
