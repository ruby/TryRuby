---
lang:   ZH
title:  更多的评论
answer: [3-9]
load:   books = {"Gravitys Rainbow" => :splendid}
ok:     看到了吧，length方法不仅可以用于字符串，还可以用于数组和哈希。
error:
---

继续增加书评吧。
要查看完整的列表，输入 __puts books__。

再重复一遍，评价体系是:splendid、:quite_good、:mediocre、:quite_not\ _good、:abysmal。

这些评价不是一串文字。在单词前面加冒号的话，那个就变成了 __符号__。
从计算机存储器的角度来看，符号比字符串成本更低。
如果你在程序中不断重复使用相同的单词，你就应该使用符号。
不是在内存上有那个单词的数千个副本，而是计算机只存储符号 __一次__。

更重要的是，用符号来表示它会告诉电脑这不仅仅是一个单词，而是在程序中有意义的。

如果输入了两个以上的书评，请使用 __books.length__ 确认哈希中有哪些书评：

    books["The deep end"]  = :abysmal
    books["Living colors"] = :mediocre
    
    puts books
    
    puts books.length
