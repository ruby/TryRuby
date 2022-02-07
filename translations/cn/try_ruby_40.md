---
lang:   CN
title:  输出多个结果
answer: ^[0-9\.,-]{1,}$
ok:     不错的put
error:
---


你意识到就算你输入了许多算式，却仅输出最后一个算式的结果吗？
这是为什么？

> 为了让这个网站易于使用，我已经通知Ruby让他把结果显示在输出框了。
> 所以当你输入一个算式，你就可以得到一个结果。
> __但只有最后一个算式有结果__。并且仅在输出为空的情况下。

所以当你打了两个或者以上的算式，Ruby只会显示最后一个算式的结果
。

你当然可以自己选择想要在屏幕上输出什么！只需要在每个算式前打上 __puts__。（记得要加空格）。puts的意思是：*打印某些东西在屏幕上*。

试试这个:

    puts 4 * 10
    puts 5 - 12
    puts 30 / 4

现在把最后一个算式前的puts去掉，看看会发生什么。