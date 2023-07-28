---
lang:   ZH
title:  你标准很高?
answer: :mediocre
load:   books = {"Gravitys Rainbow" => :splendid, "The deep end" => :abysmal, "Living colors" => :mediocre, "Bumblebees" => :mediocre}
ok:     不错，你已经为你的书评做了一个评分卡了
error:  
---

你写了刻薄或不公平的书评吗?
那么，让我们准备一个名为 __ratings__ 的新的哈希来打分吧。

怎么做呢?对啊，就是不断地增加书评。请输入以下内容:

    ratings = Hash.new {0}
    
    books.values.each { |rate|
      ratings[rate] += 1
    }
    
    puts ratings

代码中的直线是管道字符，位于键盘中Enter键的正上方

_+= 1_表示:值增加1。

如果你不明白这里发生的一切，也不要担心。这将在稍后揭晓。
