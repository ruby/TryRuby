---
lang:   ZH
title:  要是我知道怎么做决定就好了
answer: 
ok:     
error:  
---

在现实生活中，做决定是一个难题。但在Ruby中，
就超级简单了。

    if 1 < 2
      puts "It is true: 1 is less than 2"
    end

关键的是 __if__。 If 可以被添加在方法前或后，像这样:

    puts "It is true: 1 is less than 2" if 1 < 2

__If__ 方法需要一个参数。这个参数可以是任何你想要验证真假的表达式。
 验证的结果只有 __true（真）__ 或 __false（假）__.
下面是一些表达式和他们的真假:

    5     <= 10     # => true
    'abc' == 'def'  # => false
    true            # => true
    123456          # => true
    0               # => true
    nil             # => false
    'xyz'.empty?    # => false
    'a' > 5         # => error:
                    # 字符串与
                    # 数字的比较会失败

_if expression_ 可以验证许多表达式。 
它可以比较数字(1 < 2)，变量(a < 1)，和某一方法的返回值('xyz'.empty?)。