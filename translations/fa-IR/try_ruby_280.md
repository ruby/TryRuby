---
lang:   FA-IR
title:  آیا سختگیر هستی؟
answer: :mediocre|mediocre:
load:   books = {"The Blind Owl" => :splendid, "The deep end" => :abysmal, "Living colors" => :mediocre, "Bumblebees" => :mediocre}
ok:     عالی، وای! تو یه کارنامهٔ امتیازدهی از بررسی‌هایت ساخته‌ای
error:  
---

خب، آیا داری نظرهای سخت‌گیرانه و ناعادلانه می‌دی؟ بیا با یه هش جدید به نام __ratings__، امتیازها رو بشماریم:

حالا بریم تعداد بررسی‌هامون رو حساب کنیم. فقط با من همراه باش. تایپ کن:

    ratings = Hash.new {0}
    
    books.values.each { |rate|
      ratings[rate] += 1
    }
    
    puts ratings

خط عمودی توی کد همان نویسه pipe است، احتمالا درست بالای کلید Enter روی صفحه‌کلیدت قرار دارد.

آن خط _<span dir="ltr">+= 1</span>_ یعنی: مقدار را یک واحد افزایش بده.

نگران نباش اگر همهٔ چیزهایی که اینجا اتفاق می‌افتد را نمی‌فهمی، بعداً توضیح داده خواهد شد.
