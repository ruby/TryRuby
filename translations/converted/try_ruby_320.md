---
lang:   EN
title:  Ruby se Sienta y Espera
answer: #.File:/Home/comics\.txt.
ok:     
error:  
---

Esa ultima l&iacute;nea agrega la historieta __Cat and Girl__ a la lista, pero Ruby seguir&aacute; esperando
                hasta que hallas terminado por completo para tomar acci&oacute;n.
    Ahora, para finalizar el c&oacute;digo que has empezado. Empezaste un nuevo bloque cuando escribiste do.
    Hasta ahora los bloques que hemos visto usaban llaves. Esta vez usaremos do y end en lugar
    de las llaves. Muchos Rubyistas usan do...end cuando el bloque ocupa varias l&iacute;neas.
    Terminemos ese bloque ahora mismo, con: 
    end
    
    <code class="faded">File.open("/Home/comics.txt", "a") do |f|
            <code class="faded">&nbsp;&nbsp;f &lt;&lt; "Cat and Girl: http://catandgirl.com/\n"
            end
    
