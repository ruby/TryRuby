---
lang:   EN
title:  And Now For the Startling Conclusion
answer: is not equal to 100$
ok:     That's better
error:  This can't be right
---

Did you see the 2 equal signs in __'abc' == 'def'__?

This __==__ means __is equal to__.
The single equal sign that we have seen before means __assign a value to a variable__.

To make it more confusing: you can use the assignment after an if method like this:

    a = 0
    
    if a = 100
      puts "Expression is true, but a is now: #{a}"
    else
      puts "#{a} is not equal to 100"
    end

Change the = into == and see what happens.

I can guarantee you that you will forget typing the second equal sign regularly. I also
still forget it sometimes.

### else
In the code above I have added an else expression. This part will be executed when the
__if test-expression__ evaluates to false.

> There are more variations to this if-then-else theme. You can read more
> <a href="http://www.ruby-doc.org/core/syntax/control_expressions_rdoc.html" target="_blank">here</a>.
