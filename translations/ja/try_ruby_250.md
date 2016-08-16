---
lang:   JA
title:  一口書評をもうちょっと
answer: [3-9]
load:   books = {"Gravitys Rainbow" => :splendid}
ok:     lengthメソッドは文字列だけでなく、配列やハッシュでも使えます
error:
---

つづけて書評を増やしていきましょう。
すべてのリストを確認するには、__puts books__ と入力します。

繰り返しますが、評価体系は :splendid、:quite\_good、:mediocre、:quite\_not\_good、:abyssmal です。

これらの評価は文字列ではありません。単語の前にコロンをつけると、それは__シンボル__になります。
シンボルとは、コンピュータメモリの観点で、文字列よりもコストの安いものになります。
もしプログラムの中で繰り返し繰り返し同じ単語を使いっていたら、シンボルを使うべきです。
その単語の数千のコピーをメモリ上に持つのではなく、コンピュータは__一度__だけシンボルを格納します。

もっと重要なことは、シンボルにすることは、それが適当な単語ではなく、プログラム中で意味があると示すことができるということです。

書評を2つ以上入力したら、__books.length__を使ってハッシュの中に何この書評があるかを確認してみてください。

    books["The deep end"]  = :abyssmal
    books["Living colors"] = :mediocre
    
    puts books
    
    puts books.length
