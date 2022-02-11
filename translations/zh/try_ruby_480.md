---
lang:   ZH
title:  存储器是悬空的星星的角
answer: Blurb:
ok:     我的第一个Blurb
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;end
---

嘿，不错的类。你已经有了一个新Blurb<sup>TM</sup>类。

在类的定义中，你使用了attr\_accessor方法。
在类定义中有很多像这样的 __attr（属）__ibute（性)方法或者其他的一些小设定。
这些属性是附着在类中的变量。

这样，把类想象成一个五角星，那些属性就是星星的角，共同组成了它。

### 现在
创建一个Blurb<sup>TM</sup>并设定好内容:

    blurb1 = Blurb.new
    puts blurb1
    blurb1.content = "Today Mount Hood Was Stolen!"
