---
lang:   ZH
title:  让它更快
answer: ^\d{4}
ok:     Noted
error:  
---

不错，你的app很棒。嘿，让我们把这件事情简化一下。
你不会每次发Blurb<sup>TM</sup>都想手动加一下时间的。

每次只手动写内容和心情对吧？

让我们把 __initialize__ 方法增加到类中。这个方法在会在每条Blurb<sup>TM</sup>创建的时候都被调用。

同时我们可以限制Blurb<sup>TM</sup>长度为40个字符。

    class Blurb
      attr_accessor :content, :time, :mood

      def initialize(mood, content="")
        @time    = Time.now
        @content = content[0..39]
        @mood    = mood
      end
    end
    
    Blurb.new(:sick).time

(参数 __content=""__ 是为了确保即使没有content参数被传入初始化方法中，
content也是字符串。)
