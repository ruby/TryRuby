---
lang:   RU
title:  В Ruby, Def Leppard означает: определить метод Leppard *
answer: ^tame
ok:     Tame is not lame
error:  
---

Эй, хорошо, ты это сделал. Вы создали свой собственный метод. Вы начали с def, за которым следует имя метода.
И список аргументов, которые будут нужны методу. Это не слишком страшно и опасно!
Все, что нам нужно сделать, это заполнить его кодом на Ruby и закончить с ним.

Вот код:
    
    def tame( number_of_shrews )
      number_of_shrews.times {
        puts "Tamed a shrew"
      }
    end
    
> __P.S.__  
> Если вы не знаете это название, то прочтите
> <a href="http://en.wikipedia.org/wiki/Def_Leppard" target="_blank">Def Leppard</a>
> это название известной Британской группы.
