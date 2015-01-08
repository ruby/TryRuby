---
lang:   EN
title:  No una Clase de Escuela, Una Clase Trabajadora
answer: 
ok:     
error:  
---

Ves, las llaves vac&iacute;as {} son abreviaciones para Hash.new. El m&eacute;todo new
                es usado para hacer objetos de cierta clase. (Piensa "clase" como en "clase
                trabajadora" &mdash; un grupo especifico de objetos similares, tienen el
                mismo trabajo, la misma camisa.)
    Preg&uacute;ntate esto: __&iquest;C&oacute;mo har&iacute;a mi blog en Ruby?__ &iquest;D&oacute;nde deber&iacute;as
                comenzar? Bien, deber&iacute;as guardar tus entradas del blog en un archivo, &iquest;cierto?
                Pero &iquest;c&oacute;mo seguir&iacute;as los t&iacute;tulos de las entradas y el momento en que fue creado?
                Y cuando cargas el archivo, &iquest;c&oacute;mo se ver&iacute;a en Ruby? &iquest;Ser&iacute;a un Hash? &iquest;O un Array? &iquest;O
                un Array de Arrys? &iquest;O alguna otra cosa?
Yo realmente creo que querr&aacute;s usar una clase. Ya estas familiarizado con varias clases: Hash, Array, String.
    Hagamos una clase nueva: 
    class BlogEntry.
