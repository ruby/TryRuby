---
lang:   EN
title:  El Reloj Clavado en el Archivo
answer: \w+ \w+ \d+ \d{2}:\d{2}:\d{2} [+-]\d{4} \d{4}
ok:     
error:  
---

&iexcl;Bien, bien! Has a&ntilde;adido esa historieta al archivo. Puedes verlo por ti mismo: print File.read("/Home/comics.txt")
    &iquest;Qu&eacute; hora era cuando cambiaste el archivo? Veamos. Escribe: 
    File.mtime("/Home/comics.txt")
