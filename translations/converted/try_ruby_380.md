---
lang:   EN
title:  Hey, Cool, Una Cosa de Historietas
answer: true
ok:     
error:  
---

En tu ventana de Ruby arriba, mira el c&oacute;digo que has escrito para el m&eacute;todo load_comics. &iquest;Qu&eacute; esta pasando? Tu estas
       pasando en la variable path y estas recibiendo la variable comics. Ruby permite filtrar el hash comics
       que es devuelto al final del m&eacute;todo.
    Una cantidad de m&eacute;todos se usaron para realizar el trabajo. F&iacute;jate si puedes hallarlos.
    
    
__File.foreach__ es el m&eacute;todo que abre un archivo y manda cada l&iacute;nea al bloque. La variable line
        dentro del bloque do...end va turnando con cada l&iacute;nea del archivo.
            
__split__ es un m&eacute;todo para strings, que rompe los string en coloc&aacute;ndolo en un array. Un hacha es arrojada sobre las comas
                y las l&iacute;neas se cortan en dos, d&aacute;ndonos la url y el nombre, name, de las historietas.
            
__strip__ remueve los espacios extra alrededor de name. Por si acaso.
    
    Justo all&iacute;. Bravo. Tienes las historietas en un hash de Ruby. &iquest;Pero ahora qu&eacute;? &iquest;Qu&eacute; tan bueno es en verdad?
    Hagamos una p&aacute;gina de links. &iquest;Qu&eacute; te parece? Vamos a necesitar una peque&ntilde;a librer&iacute;a que hice para ti.
    Escribe: 
    require 'popup'
