---
lang:   ZH
title:  你自己的草场
answer: Blurbalizer:
ok:     我的app创建完成
error:  
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end
---

好了，让我们把一切打包，孩子。接下来将是史诗般的Ruby冒险的最后一章！
现在你已经对一切如何运行有了大概的理解，那如何把它们整合起来使用呢？
你是一个很优秀的人（我最喜欢的人之一），但是你需要指引。

### 让我们完成你的app
你已经搭建了app的主框架，但还没有真正的app。
你需要一个地方来保存Blurbs<sup>TM</sup>，和一个时间线来记录信息。

想不到吧，我们要再创建一个类。我把新类的代码一次性全贴出来了。
你可以 __慢慢学习__。
我可不急，我在下一节课等你。

    class Blurbalizer
      def initialize(title)
        @title  = title
        @blurbs = [] # 用来储存Blurbs
                     # 的新数组
      end
      
      def add_a_blurb(mood, content)
        # 其中 << 意为添加到数组尾部
        @blurbs << Blurb.new(mood, content)
      end
      
      def show_timeline
        puts "Blurbify: #{@title} has #{@blurbs.count} Blurbs"
        
        @blurbs.sort_by { |t|
          t.time
        }.reverse.each { |t|
          puts "#{t.content.ljust(40)} #{t.time}"
        }
      end
    end
    
    myapp = Blurbalizer.new "The Big Blurb"
