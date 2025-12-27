---
lang:   FA-IR
title:  یه زرافه خلاصهٔ شماره ۷ را ندزدیده
answer: 
class:  stretcher chapmark
ok:     
error:  
load:   prev;blurb2=Blurb.new :confused, "I can not believe Mt. Hood was stolen!"
---

آها، رسیدی اینجا؛ سالم و سرحال هم هستی؛ 
هنوز قراره برنامه‌ات رو «واقعی» کنیم، ولی قبلش بیا یه جمع‌بندی داشته باشیم، حله؟

### <ruby>کلاس‌ها<rt>Classes</rt></ruby>
تو روبی، همه‌چیز یه جور شی است؛ کلاس‌ها توضیح میدن هر شی چطوری کار می‌کنه. 
مثلا تو چندتا Blurb<sup>TM</sup> ساختی و این Blurbها توی کلاس Blurb تعریف شدن. 
به زبون ساده‌تر: اینا همون «شی‌های Blurb» هستن؛ کلاس‌ها کمک می‌کنن چیزهای دنیای واقعی رو (تقریبا) توی کد مدل‌سازی کنیم.

### Accessors
Accessorها متغیرهایی هستن که به یه شی وصل هستن و می‌تونی از __بیرون__ شی بهشون دسترسی داشته باشی:
(blurb2.time = Time.now)

### <ruby>متغیرهای شی<rt>Object variables</rt></ruby>
متغیرهای شی همان متغیرهایی هستن که برای accessorها استفاده می‌کنی، اما __داخل__ شی ازشون استفاده می‌کنی.  
<span dir="ltr">(@time = Time.now)</span>
