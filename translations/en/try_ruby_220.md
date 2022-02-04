---
lang:   CN
title:  链式方法
answer: ^More still did (.+)
load:   prev
ok:     感觉不错!join方法将排列的各个要素连接起来，组成了一个字符串。
error:  
---

所以你看到了什么？发生了什么？你输入__poem.lines.reverse__ 导致了什么？

发生了两件事。你用lines把这首诗变成了列表。lines决定如何分解字符串，并将其转换成数组。

然后你逆置了那个列表，每一行都被转化，你逆置了它们，就这样

让我们在最后再加一个方法:

    puts poem.lines.reverse.join

这样的组合方法称为_method chaining_.