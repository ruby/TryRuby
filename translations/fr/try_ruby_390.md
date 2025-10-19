œ---
lang:   FR
title:  Noble Kinsmen
answer: ^The Two Noble Kinsmen$
ok:     C'est bien mieux
error:
load:   prev
---

Bien, maintenant nous avons une liste de pièces de théâtre provenant d'Internet. Cette liste est au format json.
Heureusement, Ruby nous donne gentiment une méthode pour convertir les données json en un hash Ruby.
La méthode _lis\_shakou_ l'a déjà fait pour nous.

Mais comme la structure des données json est conservée dans le hash, il est encore un peu difficile à lire.
Écrivons une méthode pour afficher tout ça de manière agréable.

Si tu inspectes attentivement la liste de pièces de théâtre, tu verras qu'elle a une sorte de structure imbriquée.
(C'est en fait assez courant dans les données que tu obtiens d'Internet.)
Ça ressemble à ça :

<ul>
  <li>"William Shakespeare"
  <ul>
      <li>"1"
      <ul>
        <li>"title": "Les Deux Gentilshommes de Vérone"</li>
        <li>"finished": 1591</li>
      </ul>
      </li>
      <li>"2"
      <ul>
        <li>"title": "La Mégère apprivoisée"</li>
        <li>"finished": 1591</li>
      </ul>
      </li>
      <li>...</li>
  </ul>
  </li>
</ul>

Pour lister les pièces de théâtre, nous devons d'abord accéder à au premier l'élément du hash « William Shakespeare » par son nom.
Ensuite, nous devons __itérer__ à travers chaque élément suivant.

Ruby a une méthode pour itérer. Elle s'appelle __each__. Nous l'avons déjà vue lorsque nous avons
créé notre système de notation des livres.

Tout ce que la méthode __each__ retourne est passé à un bloc :

    s = lis_shakou

    s["William Shakespeare"].each { |key, val|
      puts val["title"]
    }
