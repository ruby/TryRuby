---
lang:   ES
title:  Los "Accessors" son las extremidades colgantes
answer: Blurb:
ok:     Mi primer Blurb
error:  
load:   class Blurb;attr_accessor :contenido,:hora,:animo;end
---

Buena clase, amigo. Tienes una nueva clase Blurb<sup>TM</sup>.

En la definición de la clase, usaste un método llamado attr\_accessor.
Hay muchos métodos de __attr__ibutos como este que añaden pequeños ajustes.
Estos atributos son simplemente variables adjuntadas a una clase.

Pienslo de esta manera. Una clase es como una persona. Esa cosa humana con forma de estrella de ahí.
Y los atributos son las extremidades colgantes, las diferentes partes que forman el cuerpo y con las que otras
personas pueden extrecharle las manos.

### Ahora
Para crear un Blurb<sup>TM</sup> y fijar su contenido:

    blurb1 = Blurb.new
    puts blurb1
    blurb1.contenido = "¡El Everest ha sido robado!"
