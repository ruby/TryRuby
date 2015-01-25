---
lang:   ES
title:  Has Enseñado a tu Aplicación a Rechazar Cosas Sin Valor
answer: Blurb:
ok:     Blurb añadido
error:  
load:   class Blurb;attr_accessor :contenido,:hora,:animo;def initialize(animo, contenido="");@hora=Time.now;@contenido=contenido[0..39];@animo=animo;end;end;blurb1=Blurb.new(:enfermo,"¡El Everest ha sido robado!")
---

¿Has visto cómo dentro de la clase usamos el símbolo arroba (@hora).

__Fuera__ de la clase, usamos los accessors:

> __blurb.hora = Time.now__

pero __dentro__ usamos las __variables del objeto__:

> __@hora = Time.now__

Son exactamente la misma cosa, pero expresada en dos sitios diferentes de tu programa.

### Crea otro Blurb<sup>TM</sup>
Cuando se crea un nuevo Blurb<sup>TM</sup>, se usa el método initialize para chequear los argumentos de new.

Eh, necesitamos dos argumentos:

    Blurb2 = Blurb.new :confuso, "¡No puedo creer que hayan robado el Everest!"
