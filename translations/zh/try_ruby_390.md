---
lang:   ZH
title:  两个高贵的亲戚
answer: ^The Two Noble Kinsmen$
ok:     这看起来好多了
error:  
load:   prev
---

我们从网上搜集了一些剧本，剧本的清单储存在json格式中。
幸运的是，Ruby提供了一个将json数据转化为Ruby哈希的方法。
_get\_shakey_方法能帮助我们。

由于json的格式还是被保留在了哈希中，这还是有点难阅读的。
让我们写一个能增加其可读性的方法。

如果你仔细观察下面的代码，你会发现它们以一种嵌套结构排列。
这种结构在互联网上可以经常见到

<ul>
  <li>"William Shakespeare"
  <ul>
      <li>"1"
      <ul>
        <li>"title": "The Two Gentlemen of Verona"</li>
        <li>"finished": 1591</li>
      </ul>
      </li>
      <li>"2"
      <ul>
        <li>"title": "The Taming of the= Shrew"</li>
        <li>"finished": 1591</li>
      </ul>
      </li>
      <li>...</li>
  </ul>
  </li>
</ul>

要想列出剧本的名字我们要先通过找到哈希顶部的元素，也就是"William Shakespeare"，然后对其下属的元素进行__iterate(迭代)__ 搜索。
Ruby有一个用以迭代的方法。也就是__each__。我们在创建书评系统的时候曾用到过这个方法。

所有由__each__ 方法返回的值都传到了一个块中：

    s = get_shakey
    
    s["William Shakespeare"].each { |key, val|
      puts val["title"]
    }
