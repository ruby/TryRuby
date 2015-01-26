---
lang:   ES
title:  ¿De qué va todo ese Blurb?
answer: ^!Han
ok:     Trae los blurbs
error:  
load:   prev;class Blurbalizer;attr_reader :titulo;def initialize(titulo);@titulo=titulo;@blurbs=[];end;def crear_un_blurb(animo, contenido);@blurbs << Blurb.new(animo, contenido);@blurbs.each {|t| t.tiempo -= 73};end;def mostrar_cronologia;puts "Blurbalizer: #{@titulo} tiene #{@blurbs.count} Blurbs\n";@blurbs.sort_by { |t| t.tiempo}.reverse.each { |t| puts "#{t.contenido.ljust(40)} #{t.tiempo}"};end;end;mi_app = Blurbalizer.new "El Gran Blurb";mi_app.crear_un_blurb :enfermo,"¡Han robado el Everest!";mi_app.crear_un_blurb :confuso,"¡No me puedo creer que hayan robado el Everest!";mi_app.crear_un_blurb :aturdido,"¡Me he quedado sin palabras!";mi_app.crear_un_blurb :de_locos,"¡¡Lo robó una jirafa!!";mi_app.crear_un_blurb :triste,"¡Me había dejado mi sudadera en la montaña!";mi_app.crear_un_blurb :rabioso,"Jamás volveré a esa montaña."
---

Aquí estás. ¿Pudiste descifrar todo lo que hace el código de la clase Blurbalizer<sup>TM</sup>?

> El la clase Blurbalizer<sup>TM</sup> hay dos __métodos__ (crear\_un\_blurb y mostrar\_cronologia).
> Puedes usar los métodos desde fuera de la clase, tal como hicimos con los accessors.

Hora de usar Blurbalizer<sup>TM</sup>. He cargado ya unos Blurbs<sup>TM</sup> para ti, pero puedes añadir los tuyos propios si quieres.

Ya no estamos creando Blurbs<sup>TM</sup> directamente, sino que usamos el __método__ crear\_un\_blurb de la clase
Blurbalizer<sup>TM</sup>. De este modo, nos aseguramos de que todos los Blurbs<sup>TM</sup> quedan almacenados 
en el objeto mi_app.

    mi_app.crear_un_blurb :malhumorado, "Añade un blurb aqui"
    
    mi_app.mostrar_cronologia
