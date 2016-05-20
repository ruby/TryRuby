---
lang:   JA
title:  待って。Gravity's Rainbowは好きでしたっけ？
answer: ^(splendid|quite_good|mediocre|quite_not_good|abyssmal)$
load:   books = {"Gravitys Rainbow" => :splendid, "The deep end" => :abyssmal, "Living colors" => :mediocre}
ok:     とても好きでした
error:  
---

Rubyがすばらしい点のひとつに、名前がしばしば再利用されるという点があります。
このおかげで、覚えておかないとならない名前は少なくなります。

配列から要素を取り出す際は、__puts ticket[1]__ のように数値を使う必要があったのを覚えてますか？

ハッシュでも同様の方法で要素を取り出せます。ただし、数値ではなく名前を使用します。

古い書評を調べたくなったとします。ふたたび角かっこに書名を入力しましょう。けれどイコールから後ろは含めないでください。
次のようになります。

    puts books["Gravitys Rainbow"]
