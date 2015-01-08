---
lang:   EN
title:  En Ruby, Def Leppard Significa ¡Define Leppard (un Método)!
answer: nil
ok:     
error:  
---

Hey, bueno, lo hiciste. Estas haciendo tu propio m&eacute;todo. Comenzaste con def, seguido por el nombre del m&eacute;todo.
       Y una lista de argumentos que va a necesitar el m&eacute;todo. &iexcl;Esto no da tanto miedo ni es peligroso!
    Todo lo que debemos hacer es rellenar con Ruby y terminarlo con end.
    Aqu&iacute; esta el c&oacute;digo:
    
    <code class="faded">def load_comics( path )
            &nbsp;&nbsp;comics = {}
            &nbsp;&nbsp;File.foreach(path) do |line|
            &nbsp;&nbsp;&nbsp;&nbsp;url, name = line.split(': ')
            &nbsp;&nbsp;&nbsp;&nbsp;comics[url] = name.strip
            &nbsp;&nbsp;end
            &nbsp;&nbsp;comics
            end
    
    No necesitas indentar, si no quieres. Lo hice solo para que sea m&aacute;s legible.
