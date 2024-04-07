---
lang:   JA
title:  二人の貴公子
answer: ^The Two Noble Kinsmen$
ok:     たいへんよいです
error:  
load:   prev
---

いいですね。インターネットから戯曲のリストを取得できました。リストはjsonフォーマットになっていました。
幸いなことに、RubyはjsonデータをRubyのハッシュに変換するメソッドを提供しています。
今回は、_get\_shakey_メソッドがすでにそれをやってくれていました。

ただ、ハッシュにはなりましたが、jsonデータの構造を保ち続けているためにちょっとばかり読みにくいです。
戯曲のリストをいい感じに表示するメソッドを書いていきましょう。

注意深く戯曲のリストを確認してみると、それがある種のネスト構造を持っていることに気がつくでしょう
（こうしたことはインターネットから取得するデータには実際よくあることです）。以下のような感じです。

<ul>
  <li>"William Shakespeare"
  <ul>
      <li>"1"
      <ul>
        <li>"title": "The Two Gentlemen of Veron"</li>
        <li>"finished": 1591</li>
      </ul>
      </li>
      <li>"2"
      <ul>
        <li>"title": "The Taming of the Shrew"</li>
        <li>"finished": 1591</li>
      </ul>
      </li>
      <li>...</li>
  </ul>
  </li>
</ul>

戯曲をリストにするために、まずいちばん上の"William Shakespeare" というハッシュ要素に、名前を指定してアクセスする必要があります。
次に、そこから下の要素を__繰り返し__ていきます。

Rubyには繰り返していくためのメソッドがあります。それが__each__メソッドです。
このメソッドは書評システムを作成したときにも使いました。

__each__メソッドが返すものはすべて、次のようにブロックに渡されます。


    s = get_shakey
    
    s["William Shakespeare"].each { |key, val|
      puts val["title"]
    }
