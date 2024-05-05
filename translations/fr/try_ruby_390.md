œ---
lang:   FR
title:  Noble Kinsmen
answer: ^The Two Noble Kinsmen$
ok:     C'est bien mieux
error:  
load:   prev
---

Okay we now have a list of plays from the internet. The list was in the json format.
Fortunately for us Ruby kindly provides a method to convert json data to a Ruby hash.
The _get\_shakey_ method already did that for us.

But since the structure of the json data is retained in the hash, it is still a bit difficult to read.
Let us write a method to display the plays nicely.

If you inspect the list of plays carefully you will see that it has a kind of nested
structure. (This is actually quite common in data you get from the internet.)
Looks like this:

<ul>
  <li>"William Shakespeare"
  <ul>
      <li>"1"
      <ul>
        <li>"title": "The Two Gentlemen of Verona"</li>
        <li>"finished": 1591</li>
      </ul>
      </li>
      <li>"2"
      <ul>
        <li>"title": "The Taming of the Shrew"</li>
        <li>"finished": 1591</li>
      </ul>
      </li>
      <li>...</li>
  </ul>
  </li>
</ul>

To list the plays we first have to access the top "William Shakespeare" hash element by its name.
Next we have to __iterate__ through each element below it.

Ruby has a method for iterating. It is called __each__. We have seen it before when
creating our book rating system.

Everything that method __each__ returns is passed to a block:

    s = get_shakey
    
    s["William Shakespeare"].each { |key, val|
      puts val["title"]
    }


Bien, maintenant nous avons une liste de pièces de théâtre provenant d'Internet. La liste est au format json.
Heureusement pour nous, Ruby fournit gentiment une méthode pour convertir les données json en un hash Ruby.
La méthode _get\_shakey_ l'a déjà fait pour nous.

Mais comme la structure des données json est conservée dans le hash, il est encore un peu difficile à lire.
Écrivons une méthode pour afficher tout ça de manière agréable.

Si tu inspectes attentivement la liste de pièces de théâtre, tu verras qu'elle a une sorte de structure imbriquée.
(C'est en fait assez courant dans les données que tu obtiens d'Internet.)
Ça ressemble à ça :

<ul>
  <li>"William Shakespeare"
  <ul>
      <li>"1"
      <ul>
        <li>"title": "The Two Gentlemen of Verona"</li>
        <li>"finished": 1591</li>
      </ul>
      </li>
      <li>"2"
      <ul>
        <li>"title": "The Taming of the Shrew"</li>
        <li>"finished": 1591</li>
      </ul>
      </li>
      <li>...</li>
  </ul>
  </li>
</ul>

Pour lister les pièces de théâtre, nous devons d'abord accéder à au premier l'élément du hash "William Shakespeare" par son nom.
Ensuite, nous devons __itérer__ à travers chaque élément suivant.

Ruby a une méthode pour itérer. Elle s'appelle __each__. Nous l'avons déjà vue lorsque nous avons
créé notre système de notation des livres.

Tout ce que la méthode __each__ retourne est passé à un bloc :

    s = get_shakey
    
    s["William Shakespeare"].each { |key, val|
      puts val["title"]
    }