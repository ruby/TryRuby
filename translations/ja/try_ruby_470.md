---
lang:   JA
title:  アプリを作るもの
answer: 
ok:     
error:  
---

新しくBlurb<sup>TM</sup>クラスを開きました。
ブログエントリは一体何で作られるでしょう？そうです、コンテンツです。
それからBlurb<sup>TM</sup>が投稿された時刻、そして気分も必要でしょう。

先ほどはクラスの最初の行を用意しました。以下が残りの部分になります。

    class Blurb
      attr_accessor :content, :time, :mood
    end

クラス名は常に大文字から始まります。

（まだ何も出力しません）
