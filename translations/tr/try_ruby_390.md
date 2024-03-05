---
lang:   TR
title:  Noble Kinsmen
answer: ^The Two Noble Kinsmen$
ok:     Bu çok daha iyi
error:  
load:   prev
---

Pekala, şimdi internetten içerisinde oyunlar barındıran bir listeye sahibiz. Liste json formatındaydı.
Neyse ki, Ruby bize kibarca json datasını Ruby hash'ine döndürecek metodu sağlıyor.
Onu _get\_shakey_ metodu bizim için zaten yaptı.

Ancak json datanın yapısı hash içerisinde muhafaza edildiğinden ötürü bu hala biraz okuması zor.
Hadi oyunları daha kolayca okumamızı sağlayacak bir metod yazalım.

Eğer oyun listesini dikkatlice incelersen iç içe gömülü bir yapıya sahip olduğununun farkına
varacaksın. (Bu aslında internetten aldığın datalar için gayet yaygındır.)
Şu şekilde gözüküyor:

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
        <li>"title": "The Taming of the Shrew"</li>
        <li>"finished": 1591</li>
      </ul>
      </li>
      <li>...</li>
  </ul>
  </li>
</ul>

Oyunlara erişebilmek için ilk önce en yukarıdaki "William Shakespeare" hash elementine ismi aracılığıyla ulaşmalıyız.
Sonra altında bulunan her element için __iterate__ etmeliyiz.

Ruby'nin iterate etmek için bir metodu zaten bulunmakta. Buna __each__ deniyor. Bunu önceden
kitap değerlendirme sistemimizi yazarken görmüştük.

__each__ metodunun döndürdüğü her şey bir block'a verilmekte:

    s = get_shakey
    
    s["William Shakespeare"].each { |key, val|
      puts val["title"]
    }
