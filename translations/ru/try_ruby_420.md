---
lang:   EN
title:  If only I knew how to make a decision
answer: 
ok:     
error:  
---

Decision making, in real life this can be a real problem. Not for us though.
Ruby makes it very easy to make decisions.

    if 1 < 2
      puts "It is true: 1 is less than 2"
    end

The key word here is __if__. If can be placed before a method or after a method, like so:

    puts "It is true: 1 is less than 2" if 1 < 2

__If__ is a method that requires one parameter. That parameter can be any expression that you
want to test. The outcome of the expression must be either __true__ or __false__.
Here are a couple of expressions with their outcomes:

    5     <= 10     # => true
    'abc' == 'def'  # => false
    true            # => true
    123456          # => true
    0               # => true
    nil             # => false
    'xyz'.empty?    # => false
    'a' > 5         # => error:
                    # comparison of String with
                    # Numeric failed

The _if expression_ can take many forms. It can compare literal values (1 < 2),
variables (a < 1) and the return value of a method ('xyz'.empty?).
