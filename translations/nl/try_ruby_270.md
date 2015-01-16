---
lang:   NL
title:  To (be) or not to (be)
answer: Hello
load:   vers = "My toast has flown from my hand\nAnd my toast has gone to the moon.\nEnz. enz. enz.\n"
ok:     Hoi
error:  
---

Er is iets waar we het nog niet over hebben gehad: parameters voor methoden.
In het Engels vaak ook "arguments" genoemd.

Toen we het gedicht een beetje veranderden gebruikten we:
__vers.gsub("toast", "stroopwafel")__
    
De gsub methode heeft 2 parameters nodig. Deze gaven we door met de twee strings tussen haakjes
achter de methode.
_Parameters zorgen er voor dat een methode precies weet wat 'ie moet doen._


### Haakjes
Meestal maakt het Ruby niets uit of je de haakjes wel of niet gebuikt. Dit zou ook werken:  
__vers.gsub "toast", "stroopwafel"__

We hebben al een andere methode gebruikt met een parameter. Heel vaak zelfs, maar het viel niet
echt op:

    puts "Hello"
    puts("Hello")
    
Ja, __puts__ is ook een methode. Puts met of zonder haakjes voor de parameter maakt voor Ruby
niets uit. De versie zonder is wel iets makkelijker te lezen.
En het scheelt jou natuurlijk een hoop kostbare toetsaanslagen!

> Ik denk dat de conclusie hier is dat met haakjes alles mag, als het maar goed leesbaar is.

### to (be) or not to (be)
Dus als _to_ een methode is, en _be_ een parameter dan weten wij het antwoord nu wel op deze
eeuwenoude vraag. Het is gewoon een kwestie van voorkeur voor _to be_ of voor _to(be)_

Wil je meer weten van Shakespeare ? Klik op _Next_.
