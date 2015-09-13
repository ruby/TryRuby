---
lang:   ES
title:  No una Clase del Colegio, sino una Clase Trabajadora
answer: 
ok:     
error:  
---

Las llaves {} sin nada dentro, son un atajo para decir Hash.new. Este método new se usa para crear objetos
de una cierta clase. Piensa en "clase" como en "clase trabajadora &mdash; un grupo específico de objetos
que son similares, tienen los mismos trabajos, lo mismos uniformes.
¿Para qué se usan las clases?

### Blurbalizer<sup>TM</sup>
Has tenido una idea brillante para una nueva aplicación. Va a ser __la__ siguiente plataforma de 
mensajería instantánea. Quieres una aplicación con la que la gente se pueda enviar mensajes cortos entre sí.
Llamas a esos mensajes Blurbs<sup>TM</sup>. Un Blurb<sup>TM</sup> tiene una longitud máxima de 40 caracteres.
Tengamos también la posibilidad de definir un estado de ánimo.

<!---Internet realmente ha sacado de la bancarrota a los monigotes de palos y a los smileys. __¡A sentir!__-->

### Por dónde empezar
Bueno, puedes guardar los Blurbs<sup>TM</sup> en un fichero json, ¿verdad?
Pero ¿cómo mantener un registro del contenido de la entrada y la hora a la que se publicó?
Y cuando cargues el fichero, ¿cómo será en Ruby?
¿Será un Hash? ¿O un Array? ¿O un Array de Arrays? ¿U otra cosa?

### Clase
Realmente pienso que necesitarás usar una clase. Ya estás familiarizado con muchas clases:
Hash, Array, String.  
Hagamos una nueva (no tiene salida en pantalla):

    class Blurb
    end
