---
lang:   JA
title:  意味ないものは拒むようにしつけました
answer: Blurb:
ok:     Blurbが追加されました
error:
load:   class Blurb;attr_accessor :content,:time,:mood;def initialize(mood, content="");@time=Time.now;@content=content[0..39];@mood=mood;end;end;blurb1=Blurb.new(:sick,"Today Mount Hood Was Stolen!")
---

クラスの内側がどうなっているかを確認し、アットマークが付いたシンボル(@time)を使いました。

クラスの__外側__では、アクセサを使います。

> __blurb.time = Time.now__

ですが、__内側__では__オブジェクトの変数__を使います。

> __@time = Time.now__

これらは実際には同じことです。しかしプログラムの2つの異なる場所では異なる表現を使います。

### 別のBlurb<sup>TM</sup>を作る
新しいBlurb<sup>TM</sup>を作成すると、initializeメソッドは新しい任意の引数用に使われます。

あ、2つの引数が必要です。

    blurb2 = Blurb.new :confused, "I can not believe Mt. Hood was stolen!"
