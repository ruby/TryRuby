---
lang:   JA
title:  すべてを一緒に
answer: ^4$
ok:     そうです。シェイクスピアは1591年に4つの戯曲を書きました
error:  1591年の答えは4になります
load:   prev
---

ここで、ある年にシェイクスピアによって書かれた戯曲の数と名前のリストだけを知りたいとします。

Rubyでは、ハッシュから値を選び出す(__select__)ことができます。
selectメソッドは、選び出す条件をブロックとして渡すと、条件に該当した値のリストを返します。

__select__ブロックのあとにそのまま__each__ブロックをつなげることで、
selectメソッドから返ったリストを使い、__each__メソッドを呼ぶことができます。
これはメソッド連鎖の別の例です。メソッド連鎖については、詩をひっくり返す際に軽くお話ししました。

上記を行う__count\_plays__メソッドを用意しました。
以下のコードをもとに、__1591__年にシェイクスピアによってどのくらいの数の戯曲が書かれたかを調べてみてください。

    def count_plays(year)
      s = get_shakey
      
      s["William Shakespeare"]
        .select { |k, v|
          v["finished"] == year
        }.each { |key, val|
          puts val["title"]
        }.count
    end
    
    puts count_plays(0)

countメソッドをeachメソッドの終わりにつなげていることに気づきましたか？
この値が__count\_plays__メソッドの戻り値になります。

メソッド連鎖のまた別の具体例を示します。__s = get\_shakey__ という行を見てみてください。
ここで、get\_shakeyのうしろに__["William Shakespeare"].select { |k, v|__ と続けることもできます
（この場合はドットは付けないでください）。
