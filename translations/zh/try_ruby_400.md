---
lang:   ZH
title:  全加在一起
answer: ^4$
ok:     没错，莎士比亚在1591年写了四部剧
error:  1591年的答案应该是4部
load:   prev
---

假如我们想要知道莎士比亚在某一特定的年份写的剧的名字和数量。

Ruby提供了__select__ 方法来检索哈希中的值。它能根据我们在块中的定义来检索并返回值

我们利用在 __each__ 方法中链接 __select__ 方法。这种方法链接，我们已经在之前逆置诗的时候用过了。

我已经替你定义好了 __count\_plays__ 你试着通过下面的代码来找出莎士比亚在1591年写了多少剧本吧：

    def count_plays(year)
      s = get_shakey
      
      s["William Shakespeare"]
        .select { |k, v|
          v["finished"] == year
        }.each { |key, val|
          puts val["title"]
        }.count
    end
    
    puts count_plays(0)

你注意到我在each方法的结尾链接了count方法吗。这将给我们一个 __count\_plays__ 方法的返回值。 

有另一种写法，可以直接把 __["William Shakespeare"].select { |k, v|__ 写在 __s = getshakey__ 后面。（不需要加.）
