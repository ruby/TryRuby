---
lang:   JA
title:  ちっちゃな空っぽの本
answer: ^(splendid|quite_good|mediocre|quite_not_good|abyssmal)$
load:   books = {}
ok:     新しい書評です
error:  splendid、quite_good、mediocre、quite_not_good、abyssmalのいずれかを使ってください。また、コロンを忘れないでください
---

今作成したのは空の__ハッシュ__です。ハッシュは配列みたいなもので、各要素が名前を持つという点が異なります。

新しいハッシュに簡易的な書評をいくつか詰め込んでみることにします。
評価体系は次のとおりです。

- :splendid &rarr; とてもよい
- :quite\_good &rarr; よい
- :mediocre &rarr; よい部分とひどい部分が半々
- :quite\_not\_good &rarr; よくない
- :abyssmal &rarr; これはひどい

書籍を評価するために、角かっこの中に書名を置き、イコールの後に評価結果を置きます。
以下に例を示します。

    books["Gravitys Rainbow"] = :splendid

> TryRubyのすべてのレッスンが互いに独立していることについて、そろそろ触れないといけないでしょう。
> このレッスンでものすごくたくさん書評を入力したとしても、それはこのレッスンでだけしか使えません。
> もし次のレッスンでも作成した書評を使いたいのなら、書評をコピーしておいて次のレッスンにてペーストしてください。
> 心配しすぎなくても大丈夫です。レッスンを楽しめるように、各レッスンで必要となるものは、事前にきちんと定義されています。
