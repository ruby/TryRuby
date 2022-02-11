---
lang:   ZH
title:  真是悲哀啊，最讨厌有吐司的诗了
answer: (toast){0}
load:   prev
ok:     棒极了
error:  还有吐司的味道。
---

看，这诗不错。你不需要喜欢它。
随便修改，可以把toast改成各种瓜。
试试下面这个，然后检查一下新的诗：

    poem.gsub("toast", "honeydew")

__gsub__ 方法是global substitute的缩写。
它会将所有"toast"替换为"honeydew"。
