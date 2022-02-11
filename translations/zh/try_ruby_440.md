---
lang:   ZH
title:  我 饿
answer: ^Me not hungry
ok:     对
error:  我不可能在上午10点饿
---

你已经有了很大进步。这对你来说是很简单的事情，但你记得吗，你在15分钟前还不知道什么是Ruby!
你还不知道 __有关Ruby的任何东西__！

最后一步。让我们把这一切联系起来，你懂的？让我们让它像一组非常漂亮的风铃一样响起来
在神奇的阳光下，在海滩上的闪闪发光的风铃！

我们先定义两种方法，然后再做出决定。

    def hungry?(time_of_day_in_hours)
      puts "Me hungry"
      true
    end

    def eat_an(what)
      puts "Me eat #{what}\n"
    end

    eat_an 'apple' if hungry?(14)

    eat_an 'apple' if hungry?(10)

试试看你能不能用 __hungry?__ 方法来得出 __"Me not hungry"__，并且在时间小于12时使其返回假。
