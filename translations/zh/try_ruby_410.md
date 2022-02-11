---
lang:   ZH
title:  一切都是美好的结局 
answer: All's Well That Ends Well
ok:     True
error:  把1605作为第二个参数
load:   prev
---

好了，我们从互联网上得到了一些数据，我们选择了我们想要的东西并把它打印出来。
还有什么需要改进的呢？我们可以把结果打印得更漂亮一点。比如添加年份,
并将剧名和年份对齐。

这意味着在一行中打印多个值。Ruby有一个很好的方法来实现。
就如同打印一个字符串一样，如: __puts "Hi, my name is Jimmy"__。
但我们要把Jimmy换成一个变量
所以我们可以这样写:
    __"Hi, my name is \#{name}"__。

第一步，把 __Jimmy__ 用 __#{}__ 代替。Ruby会为这个括号寻找所放进去的变量
让我们修改一下我们的代码：

    def print_plays(year_from, year_to)
      get_shakey["William Shakespeare"]
        .select { |k, v|
          year_from <= v["finished"] &&
          year_to   >= v["finished"]
        }.each { |k, v|
          puts "#{v["title"].ljust(30)} #{v["finished"]}"
        }
    end
    print_plays(1600, 1605)

这个方法 __.ljust(30)__ 的作用是，将打印出来的内容 _左对齐(left justified)_ 给剧名占用30个字符大小，这样年份就会漂亮的对齐了。 

试试看你能不能修改一下代码，把内容以这样的形式打印出来：__1600 -> As You Like It__
__一切都是美好的结局?__ 嘿，我们还没学完了，不过也快了！
