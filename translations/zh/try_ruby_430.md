---
lang:   ZH
title:  我们有一个惊人的结论
answer: is not equal to 100$
ok:     这样好多了
error:  这肯定不对
---

看到这里面的两个等号了吗 __'abc' == 'def'__?

 __==__ 意为 __相等__.
我们之前见到的一个等号意为 __将值赋值于一个变量__.

让这一切变的更令人迷惑：你可以在if方法后面写一个赋值语句：

    a = 0
    
    if a = 100
      puts "Expression is true, but a is now: #{a}"
    else
      puts "#{a} is not equal to 100"
    end

把=换成==，看看会发生什么

我保证你有时会忘了打第二个等号。因为我也老是忘记。

### else
在上面的代码中我加入了else表达式，这一部分代码会在
__if test-expression__ 判定为假的时候执行

> if-then-else有很多变种，详情请见：
> <a href="http://www.ruby-doc.org/core/syntax/control_expressions_rdoc.html" target="_blank">here</a>.
