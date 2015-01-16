---
lang:   EN
title:  A Tally
answer: \w+
ok:     Yodelay!
error:
---

One of the amazing new things we've just used is a __block__. We're going to explore these more
in this and the next lesson. But, basically, a block is a bit of Ruby code surrounded by curly
braces.

Let's try another block:

    5.times { print "Odelay! " }

Blocks are always attached to methods. Like the __times__ method, which takes the block and runs
the code over and over. (In our example: five times.)