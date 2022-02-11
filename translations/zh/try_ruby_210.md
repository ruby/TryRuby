---
lang:   ZH
title:  太多逆置了
answer: ^\["More still did (.+)
load:   prev
ok:     差不多是我们想要的了
error:  
---

所以整首诗按照字母的顺序，被逐一倒置了。这显然不是我想要的。我期望按照行的顺序进行倒置，比如第一行变成最后一行。那么如下操作：

    poem.lines.reverse

把最后一行移到第一行，把第一行移到最后一行。
