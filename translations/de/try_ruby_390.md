---
lang:   DE
title:  Noble Kinsmen
answer: ^The Two Noble Kinsmen$
ok:     Viel besser
error:  
load:   prev
---

Okay, wir haben jetzt eine Liste von Theaterstücken aus dem Internet. Die 
Liste war im json-Format. Zum Glück bietet uns Ruby eine Methode, um json-Daten 
in einen Ruby-Hash zu konvertieren. Die Methode _get\_shakey_ hat das bereits 
für uns getan.

Aber da die Struktur der json-Daten im Hash beibehalten wird, ist es immer noch 
ein bisschen schwierig zu lesen. Lass uns eine Methode schreiben, welche die 
Stücke schön anzeigt.

Wenn du dir die Liste der Stücke genau ansiehst, wirst du sehen, dass sie eine 
Art verschachtelte Struktur hat. (Das ist bei Daten aus dem Internet ziemlich 
üblich.) So sieht das aus:

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

Um die Stücke aufzulisten, müssen wir zunächst auf das oberste Hash-Element 
"William Shakespeare" über seinen Namen zugreifen. Als Nächstes müssen wir 
durch jedes Element darunter __iterieren__.

Ruby hat eine Methode zum Iterieren. Sie heißt __each__. Wir haben sie bereits 
bei der Erstellung unseres Buchbewertungssystems gesehen.

Alles, was die Methode __each__ zurückgibt, wird an einen Block übergeben:

    s = get_shakey
    
    s["William Shakespeare"].each { |key, val|
      puts val["title"]
    }
