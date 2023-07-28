---
lang:   JA
title:  メソッドをつなげる
answer: My toast has flown from my hand
load:   prev
ok:     いい感じですね！joinメソッドは、配列の各要素をつなげて、一つの文字列にしました。
error:  
---

何が確認できました？いったい何が起こりました？__poem.lines.reverse__と入力すると、何が起きたでしょう？

2つのことが起きました。linesを使って、詩を行ごとのリストにしました。
linesは文字列を分解する方法を決定し、配列に変換します。

では、さらにもう一つメソッドをつなげてみましょう。

    puts poem.lines.reverse.join

このようにメソッドをつなげていくことを、__メソッド連鎖__といいます。
