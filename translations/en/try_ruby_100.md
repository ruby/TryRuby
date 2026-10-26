---
lang:   EN
title:  Stop, You're Barking Mad!
answer: ^\d{1,}$
ok:     Strings can be reversed (and so can arrays, which you'll learn about next)
error:  
---

You can't reverse the number forty. I guess you can hold your monitor up to the mirror, but reversing a number just doesn't make sense.

Ruby has tossed an error message. Ruby is telling you there is no method reverse for numbers.

Maybe if you turn the number into a string first:

    40.to_s.reverse
