---
lang:   EN
title:  Have you got the time?
answer: ^[0-9]$
ok:     You timed it just right!
error:  Run the block 0 to 9 times
---

As we saw in the first example with a block (when counting ratings) we can pass a value to the block. Which
values are __passed__ is determined by the method that is running the block.

The values that are __received__ by the block are placed in the variable name at the beginning of the block,
between two pipe symbols: |

Let's try that with this block:

    5.times { |time|
      puts time
    }

Here, method __.times__ sends a value to variable __|time|__. But note that variable time is only known within the block.

> Did you notice that you can split code over multiple lines. This makes it a bit easier to read.
