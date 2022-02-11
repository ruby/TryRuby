---
lang:   ZH
title:  你教会了你的app拒绝做无意义的事
answer: Blurb:
ok:     Blurb已添加
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end;blurb1=Blurb.new(:sick,"Today Mount Hood Was Stolen!")
---

你注意到在类的内部我们使用了@（@time）吗？
在类 __之外__，我们用存储器:

> __blurb.time = Time.now__

但是在类 __之内__ 我们用 __对象的变量__:

> __@time = Time.now__

They're the exact same thing, but expressed in two different places of your program.
这两种方式是等效的，只是在程序的不同地方表达了。

### 创建另一个Blurb<sup>TM</sup>
当一个新的Blurb<sup>TM</sup>被创建了，初始化方法将被用来检查是否有新的参数传入。

额，我们需要两个新参数:

    Blurb2 = Blurb.new :confused, "I can not believe Mt. Hood was stolen!"
