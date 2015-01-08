---
lang:   EN
title:  Todo Se Trata de Combinar Cosas
answer: \[(:\w+, )+:\w+\]
ok:     
error:  
---

Cosas hermosas pueden hacerse de partes simples de Ruby, especialmente
        cuando las combinas entre ellas para formar algo nuevo. Aqu&iacute; tenemos un blog
        hecho de un array de clases. Y, en realidad, Ruby realmente hace buenas cosas
        con este tipo de criaturas.
    Aqu&iacute; hay un pu&ntilde;ado de cosas que puedes hacer con tu blog array:
    
    Querr&aacute;s ordenar tus entradas de mas reciente a viejas. Puedes hacerlo con:

        blog.sort_by { |entry| entry.time }.reverse
Ve <a href="http://ruby-doc.org/core/classes/Enumerable.html#method-i-sort_by" target="_new">sort_by</a> para m&aacute;s explicaci&oacute;n.
        Si quieres buscar en el blog por cualquier cosa relacionada con "cadillac": 

        blog.find_all { |entry| entry.fulltext.match(/cadillac/i) }

        Lee mas en <a href="http://ruby-doc.org/core-2.0/Enumerable.html#method-i-find_all" target="_new">find_all</a>
        y <a href="http://ruby-doc.org/core-2.0/String.html#method-i-match" target="_new">match</a>
        para descubrir como funciona. Tambi&eacute;n: /giraffe/i es un objeto Regexp, usado para concordar palabras.
        Y agregar nuevas entradas con blog &lt;&lt; new_entry

        Y aqu&iacute; la documentaci&oacute;n del m&eacute;todo <a href="http://ruby-doc.org/core-2.0/Array.html#method-i-3C-3C" target="_new">&lt;&lt;</a>.
    
    Puedes buscar entre la lista de los m&eacute;todos con los que viene Ruby en <a href="http://ruby-doc.org/core/" target="_new">ruby-doc.org's core</a>.
       Otra buena lista hay en <a href="http://www.whytheluckystiff.net/ruby/pickaxe/html/builtins.html">online pickaxe</a>.
    Un m&eacute;todo __realmente__ &uacute;til (probablemente yo uso esto mas que otra cosa) es map. Escribe: 
    blog.map { |entry| entry.mood }
