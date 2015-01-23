---
lang:   ES
title:  Nobles caballeros
answer: ^Los dos nobles caballeros$
ok:     Mucho mejor
error:  
load:   prev
---

Bien, ahora tenemos una lista de obras obtenidas de internet. Esta lista estaba en el formato json.
Afortunadamente para nosotros, Ruby amablemente nos ofrece un método para convertir datos en json a un hash de Ruby.
El método _get\_shakey_ hace eso por nosotros.

Pero como la estructura de los datos en json se mantiene en el hash, sigue siendo un poco difícil de leer.
Escribamos un método para mostrar las obras más adecuadamente.

Si miras detenidamente la lista de obras, verás que sigue una especie de estructura anidada
(esto es bastante frecuente en los datos que se obtienen de internet).
Se parece a esto:

<ul>
  <li>"William Shakespeare"
  <ul>
      <li>"1"
      <ul>
        <li>"titulo": "Los dos hidalgos de Verona"</li>
        <li>"terminado": 1591</li>
      </ul>
      </li>
      <li>"2"
      <ul>
        <li>"titulo": "La fierecilla domada"</li>
        <li>"terminado": 1591</li>
      </ul>
      </li>
      <li>...</li>
  </ul>
  </li>
</ul>

Para listas las obras, primero tenemos que acceder al elemento de primer nivel del hash "William Shakespeare" por su nombre.
Después tenemos que __iterar__ todos los elementos bajo él.

Ruby tiene un método para iterar. Se llama __each__. Lo hemos visto antes, 
cuando creamos el sistema de reseñas de libros.

Todo lo que el método __each__ devuelve se le pasa a un bloque:

    s = get_shakey
    
    s["William Shakespeare"].each { |key, val|
      puts val["title"]
    }
