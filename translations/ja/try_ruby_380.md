---
lang:   JA
title:  世界はあなたの思いのまま
answer: ^\{\"William
ok:     いいですね。けれど少しばかり読みにくいです。
error:  
load:   def get_shakey; {"William Shakespeare"=>{"1"=>{"title"=>"The Two Gentlemen of Verona", "finished"=>1591},"2"=>{"title"=>"The Taming of the Shrew", "finished"=>1591},"3"=>{"title"=>"Henry VI, Part 2", "finished"=>1591},"4"=>{"title"=>"Henry VI, Part 3", "finished"=>1591},"5"=>{"title"=>"Henry VI, Part 1", "finished"=>1592},"6"=>{"title"=>"Titus Andronicus", "finished"=>1592},"7"=>{"title"=>"Richard III", "finished"=>1593},"8"=>{"title"=>"Edward III", "finished"=>1593},"9"=>{"title"=>"The Comedy of Errors", "finished"=>1594},"10"=>{"title"=>"Love's Labour's Lost", "finished"=>1595},"11"=>{"title"=>"Love's Labour's Won", "finished"=>1596},"12"=>{"title"=>"Richard II", "finished"=>1595},"13"=>{"title"=>"Romeo and Juliet", "finished"=>1595},"14"=>{"title"=>"A Midsummer Night's Dream", "finished"=>1595},"15"=>{"title"=>"King John", "finished"=>1596},"16"=>{"title"=>"The Merchant of Venice", "finished"=>1597},"17"=>{"title"=>"Henry IV, Part 1", "finished"=>1597},"18"=>{"title"=>"The Merry Wives of Windsor", "finished"=>1597},"19"=>{"title"=>"Henry IV, Part 2", "finished"=>1598},"20"=>{"title"=>"Much Ado About Nothing", "finished"=>1599},"21"=>{"title"=>"Henry V", "finished"=>1599},"22"=>{"title"=>"Julius Caesar", "finished"=>1599},"23"=>{"title"=>"As You Like It", "finished"=>1600},"24"=>{"title"=>"Hamlet", "finished"=>1601},"25"=>{"title"=>"Twelfth Night", "finished"=>1601},"26"=>{"title"=>"Troilus and Cressida", "finished"=>1602},"27"=>{"title"=>"Sir Thomas More", "finished"=>1604},"28"=>{"title"=>"Measure for Measure", "finished"=>1604},"29"=>{"title"=>"Othello", "finished"=>1604},"30"=>{"title"=>"All's Well That Ends Well", "finished"=>1605},"31"=>{"title"=>"King Lear", "finished"=>1606},"32"=>{"title"=>"Timon of Athens", "finished"=>1606},"33"=>{"title"=>"Macbeth", "finished"=>1606},"34"=>{"title"=>"Antony and Cleopatra", "finished"=>1606},"35"=>{"title"=>"Pericles, Prince of Tyre", "finished"=>1608},"36"=>{"title"=>"Coriolanus", "finished"=>1608},"37"=>{"title"=>"The Winter's Tale", "finished"=>1611},"38"=>{"title"=>"Cymbeline", "finished"=>1610},"39"=>{"title"=>"The Tempest", "finished"=>1611},"40"=>{"title"=>"Cardenio", "finished"=>1613},"41"=>{"title"=>"Henry VIII", "finished"=>1613},"42"=>{"title"=>"The Two Noble Kinsmen", "finished"=>1614}}}; end;
---

ここまでは、自分自身で入力したものだけを使用するプログラムを実行してきました。
そのことはよいのですが、それは言わば古い時代にあった叙事詩のようなものです。
けれど、今はインターネット時代です。
プログラミングの成果に、世界の残りを含めてもいい時代です。

わたしたちは、とてもとてもたくさんのWebサイトを利用して、情報を要求することができます。
たとえば、このリンクからはRubyに関する現在の<a href="http://news.google.com/news/section?q=ruby&output=rss" target="_blank">Googleニュースフィード</a>が手に入ります。

Webブラウザは、おそらくとても良い感じにそれを表示してくれるでしょう。
ソースを表示したならば、奇妙にフォーマットされたテキストの長い文字列を確認できるはずです。
先ほどのGoogleニュースフィードの例であれば、それは__rss__フォーマットというものになります。

### フォーマット（形式）

Web上には、変わった名前を持ったとてもたくさんのフォーマットが存在し、利用されています。
たとえば、htmlやxml、jsonといったフォーマットがあります。
そうです、まさにこのWebサイトでも、これらのフォーマットを使用しています。

試しに、インターネット上からウィリアム・シェイクスピアの全著作のリストを取得してくるメソッドを用意しました
（実際にはこのWebサイトをホストしているサーバ上から取得してくるようにしています。誰にも迷惑はかかりませんので、ご安心ください）。

データを取得するには、次のようにします。

    get_shakey
