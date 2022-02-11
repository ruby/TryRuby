---
lang:   ZH
title:  等等，我喜欢Gravity's Rainbow吗?
answer: ^(splendid|quite_good|mediocre|quite_not_good|abysmal)$
load:   books = {"Gravitys Rainbow" => :splendid, "The deep end" => :abysmal, "Living colors" => :mediocre}
ok:     我超级喜欢
error:  
---

Ruby的优点之一是名字经常被重复使用。
多亏了这个，必须要记住的名字变少了。

还记得从数组中提取元素的时候，像 __puts ticket[1]__ 那样需要使用数值吗?

哈希也可以用同样的方法提取元素。但是，使用名字而不是数值。

假设你想检查旧的书评。在括号里输入书名。但把等号去了。
如下所示：

    puts books["Gravitys Rainbow"]
