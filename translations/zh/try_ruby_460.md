---
lang:   ZH
title:  不是学校班级，是工人阶级
answer:
ok:
error:
---

你看，大括号{}是Hash.new的一个快捷方式。new方法是用来给特定的类（class）制造对象（object）的。
把类（class）理解成工人阶级（working class）中的阶级（class）&mdash一组特定的对象，们是相似的，有相同的工作，穿着相同的衬衫。 
类有什么用呢？

### Blurbalizer<sup>TM</sup>
你想出了一个新app的绝妙的点子，将会是下一代即时通信平台。
你想要一个人们能够互相发送短信息的平台。
你把这个平台上的信息称为Blurbs<sup>TM</sup>，一个Blurb<sup>TM</sup>的最大长度为40个字符。我们得再加一个发送似的情绪。

<!---The Internet has really brought back stick people and smileys out of bankruptcy. __Emote!__-->

### 从哪里开始
那么，你也许会把Blurbs<sup>TM</sup>的主框架写入一个json文件中，对吧？
但你如何监控界面的内容和它上传的时间呢？
而当你加载了那个文件，在Ruby中它会以什么数据类型显示呢？
会以哈希？或是数组？还是包含数组的数组？或是其他的一些什么？

### 类
我认为你会想要用类。你已经熟悉了很多类：
哈希，数组，字符串。
让我们创建一个新的类（不返回输出）：

    class Blurb
    end
