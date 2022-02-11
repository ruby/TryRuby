---
lang:   ZH
title:  奉献与索取
answer: \d+
ok:     不错。好样的。
error:
---

大多数方法不仅需要一些参数作为输入，而且也会 __返回__ 一些东西。
我对我们的方法做了一些改变，所以它将返回一个值给你。试试吧：

    def tame( number_of_shrews )
      number_of_shrews.times {
        puts "Tamed a shrew"
      }
      return number_of_shrews
    end

    puts tame(3)

### 返回
那么，既然你在这里变得如此高阶和能干，给你提示。
你可以在方法的最后一行省略 __return__ 这个词。
Ruby将自动返回方法中最后使用的值。

所以我们修改最后一行为: __number\_of\_shrews__.

但是既然方法 __.times__ 也返回 _number\_of\_shrews_ 我么可以省去最后一整行，所以我们最初的方法已经做到了我们一直想做的事情。
