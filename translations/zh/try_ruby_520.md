---
lang:   ZH
title:  长颈鹿没有偷总结 #7
answer: 
class:  stretcher chapmark
ok:     
error:  
load:   prev;blurb2=Blurb.new :confused, "I can not believe Mt. Hood was stolen!"
---

啊哈，你已经到这了，还完完整整的嘛。我们仍将努力使你的app成为现实，
但是现在，我们来回顾一下。

### 类
Everything in Ruby is some kind of object. Classes explain objects, how a certain object works.
For example, you made a few Blurb<sup>TM</sup> objects and these objects are explained in the Blurb
class.
In other words: you call them Blurb objects.
You can use classes to (kinda) model real life objects.
在Ruby中，一切皆对象。类会解释一个特定的对象是怎么工作的。
比如，你创建了几个Blurb<sup>TM</sup>对象并且在Blurb<sup>TM</sup>类中对其进行了解释。
换句话说：你把他们叫做Blurb对象。
你可以用类来搭建真实生活中的对象。

### Accessors（存储器）
存储器是附着在对象中的可以在对象 __外__ 被调用的变量。
(blurb2.time = Time.now)

### 对象变量
对象变量就是用以存储器的变量，两者相同，但是在对象 __内__。
(@time = Time.now)
