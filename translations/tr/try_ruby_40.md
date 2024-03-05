---
lang:   EN
title:  Putting it differently
answer: ^[0-9\.,-]{1,}$
ok:     Well put
error:
---

Did you notice that if you typed more than one formula you only saw the answer for the last one.
What is going on?

> To make this website easier to use I have told Ruby to copy the result of your program to the
> output screen. So when you type a formula you get to see the results.
> __But only the last result.__ And only if the output is still empty.

So when you entered 2 or more formulas, Ruby only showed the result of the last formula.

Of course you have the power to control the screen! Just type __puts__ before each formula
(with a space in between). Puts means: *'put something on the screen'*.

Try this:

    puts 4 * 10
    puts 5 - 12
    puts 30 / 4

Now remove the puts from the last formula and see what happens.
