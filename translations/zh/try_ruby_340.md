---
lang:   ZH
title:  在Ruby中，Def Leppard 的意思是: 定义Leppard方法
answer: ^tame
ok:     Tame is not lame
error:  
---

嘿，好吧，你做到了。你正在创建你自己的方法。你以def开头，后面是方法的名称。
还有一个方法需要的参数列表。这并不可怕，也不危险。
我们所要做的就是用Ruby来写满它，然后用end来结束它。

下面是代码：
    
    def tame( number_of_shrews )
      number_of_shrews.times {
        puts "Tamed a shrew"
      }
    end
    
> __P.S.__  
> 如果你不懂这一章的标题
> <a href="http://en.wikipedia.org/wiki/Def_Leppard" target="_blank">Def Leppard</a>
> 是一个，曾经很有名的，英语摇滚乐队的名字
