---
lang:   ES
title:  Para, estás loco de atar!
answer: ^\d{1,}$
ok:     Sólo a strings (cadenas de texto) se les puede dar la vuelta
error:  
---

No puedes darle la vuelta al número cuarenta. Imagino que puedes poner tu monitor delante del espejo, pero darle la vuelta a un número no tiene sentido.

Ruby ha lanzado un mensaje de error que te dice que no hay un método para dar la vuelta a un número.

Quizás, si conviertes antes el número en string:

    40.to_s.reverse
    
