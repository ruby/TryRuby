---
lang:   JA
title:  メソッドをつなげる
answer: ^More still did (.+)
load:   prev
ok:     Good show, my friend! The join method took that array of lines and put them together into a string.
ok:     いい感じですね！joinメソッドは、配列の各要素をつなげて、一つの文字列にしました。
error:  
---

何が確認できました？いったい何が起こりました？__poem.lines.reverse__と入力すると、何が起きたでしょう？

2つのことが起きました。linesを使って、詩を行ごとのリストにしました。
linesは文字列を分解する方法を決定し、配列に変換します。

では、さらにもう一つメソッドをつなげてみましょう。

    puts poem.lines.reverse.join("\n")

このようにメソッドをつなげていくことを、__メソッド連鎖__といいます。
