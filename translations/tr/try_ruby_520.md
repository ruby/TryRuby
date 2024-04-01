---
lang:  TR
title:  Bir Zürafa Hırsızlık Yapmadı Özet #7
answer: 
class:  stretcher chapmark
ok:     
error:  
load:   prev;blurb2=Blurb.new :confused, "I can not believe Mt. Hood was stolen!"
---

Aha, buradasın. Ve hala bir parça. Hala senin aplikasyonunu gerçek dünyaya taşıyacağız,
ancak o zamana kadar, bir gözden geçirelim, tamam mı?

### Class'lar
Ruby içerisindeki her şey bir tür obje. Class'lar objeleri açıklar, belirli objelerin nasıl çalıştığını.
Mesela, birkaç yeni Blurb<sup>TM</sup> objeleri oluşturdun ve bu obheler Blurb class'ında açıklanmakta.
Başka bir deyişle: onlara Blurb objesi diyorsun.
Gerçek dünyadaki şeyleri modellemek için class'ları kullanabilirsin (kısmen).

### Accessor'lar
Accessor'lar objelere yapıştırılmış objelerin __dışında__ kullanılan değişkenlerdir.
(blurb2.time = Time.now)

### Obje değişkenleri
Obje değişkenleri, accessor'lar kullandığındaki değişkenlerle aynıdır, ancak objenin __içindedirler__.
(@time = Time.now)
