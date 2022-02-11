---
lang:   ZH
title:  To (be) or not to (be)
answer:
load:   poem = "My toast has flown from my hand\nAnd my toast has gone to the moon.\nYada yada yada\n"
ok:
error:
---

一个还没有认真探讨的东西：方法参数
还记得我们怎么修改那首诗的吗：
__poem.gsub("toast", "honeydew")__

gsub方法需要两个参数，这两个参数即为括号中的那两个字符串。

### 括号
实际上，Ruby不是很在意你去掉括号，这样也可以运行:
__poem.gsub "toast", "honeydew"__

实际上我们已经用了好多次一个带着括号的方法，很显然:

    puts "Hello"
    puts("Hello")

是的 __puts__ 是的 __puts__ 是一个方法，加不加括号对Ruby来说一样，但是
不加括号使代码更易读，并且节省时间

>所以我想结论是，你可以用括号做任何你喜欢的事，只要你
>代码读起来很好。

### to (be) or not to (be)
所以如果 _to_ 是一个方法 _be_ 是一个参数，我们现在知道这个古老问题的答案了
这只是单纯的个人喜好问题_to be_ or _to(be)_.

还想要更多的莎士比亚作品吗，继续读。
