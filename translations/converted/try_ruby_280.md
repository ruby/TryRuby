---
lang:   EN
title:  Ven, Lee Historietas Conmigo
answer: 
ok:     
error:  
---

El m&eacute;todo Dir[] hace como entries pero tu buscas por archivos
       archivos con car&aacute;cteres de comod&iacute;n. &iexcl;Aqu&iacute;, vemos esos corchetes otra vez! Te das
                cuenta como todav&iacute;a significan, "Estoy buscando _____.".
    Mas espec&iacute;ficamente: "Estoy buscando archivos que terminen con .txt."
    Abramos este archivo con historietas de una vez. Aqu&iacute; esta la manera:

    
    print File.read("/comics.txt")
