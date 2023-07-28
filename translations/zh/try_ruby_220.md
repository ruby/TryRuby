---
lang:   ZH
title:  链式方法的小环
answer: My toast has flown from my hand
load:   prev
ok:     好样的，我的朋友！<br/>join方法把那个数组的行数放在一起，变成一个字符串。
error:  
---

那么你看到了什么？那里发生了什么？你输入了 __poem.lines.reverse__，发生了什么？

发生了两件事。你用lines把诗变成了一个列表。
Lines 决定了字符串被分割的方式，并将其转换为一个数组。

然后，你反转了这个列表。每一行都是。你反转了它们。就这样了。

让我们再把一个方法放在最后：

    puts poem.lines.reverse.join

像这样的方法组合被称为_方法链_。