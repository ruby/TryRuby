---
lang:   EN
title:  Expandiendo las Historietas en la Tabla
answer: 
ok:     
error:  
---

Bien, esto esta yendo maravilloso. Esto es algo simple, pero mant&eacute;n en mente que no sabias __nada sobre Ruby__ hace quince minutos atr&aacute;s!
    
Ultimo paso. Vamos a juntar todo, &iquest;sabes? &iexcl;Junt&eacute;moslo como esos juegos de
                campanillas hermosas que tintinean en los p&oacute;rticos bajo la hermosa luz del sol
                en la playa!
    Aseg&uacute;rate de que las historietas est&aacute;n cargadas: comics = load_comics( '/comics.txt' )
    Ahora, hagamos una lista de links para cada historieta:
    
    Popup.make do
            &nbsp;&nbsp;h1 "Comics on the Web"
            &nbsp;&nbsp;list do
            &nbsp;&nbsp;&nbsp;&nbsp;comics.each do |name, url|
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;link name, url
            &nbsp;&nbsp;&nbsp;&nbsp;end
            &nbsp;&nbsp;end
            end
    
    Puedes clickear en los links y leer las historietas &iexcl;inclusive en la ventana principal! &iexcl;B&aacute;rbaro!
