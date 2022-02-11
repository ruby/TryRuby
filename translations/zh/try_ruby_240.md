---
lang:   ZH
title:  一本空白的小书
answer: ^(splendid|quite_good|mediocre|quite_not_good|abysmal)$
load:   books = {}
ok:     是的，这是一个新的评论
error:  splendid, quite_good, mediocre, quite_not_good, abysmal.<br/>请使用其中之一。另外，不要忘记冒号。
---

现在制作的是空的 __哈希（hash）__。哈希就像数组一样，不同之处在于每个元素都有自己的名字。

我们要在新的哈希中塞进一些简易的书评，
评价体系如下。

- :splendid &rarr; 大师之作
- :quite\_good &rarr; 很享受，啊对
- :mediocre &rarr; 半好半坏
- :quite\_not\_good &rarr; 特别差
- :abysmal &rarr; 热气腾腾的残骸

要给一本书评分，把书名放在方括号里，把评分放在等号后面。比如说：

    books["Gravitys Rainbow"] = :splendid

> 现在我想应该告诉你，TryRuby的所有课程都是相互独立的。
> 所以，如果你在这里疯狂地输入书评，你只能在这一课中使用它们。 
> 如果你想在下一课使用你的评论，你应该复制/粘贴它们。 
> 不要太担心这个，每一课都有很多预定义的东西供你玩耍。