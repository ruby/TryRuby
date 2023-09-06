---
lang:   DE
title:  Keine Schulklasse, eine Arbeiterklasse
answer:
ok:
error:
---

Du siehst, die leeren geschweiften Klammern {} sind eine Abkürzung für 
Hash.new. Die Methode new wird verwendet, um Objekte einer bestimmten Klasse 
zu erzeugen. Denken Sie bei "Klasse" an die " Arbeiterklasse" &mdash; eine 
bestimmte Gruppe von Objekten, die ähnlich sind, die gleichen Jobs haben, die 
gleichen Hemden.
Welchen Nutzen hat eine Klasse?

### Blurbalizer<sup>TM</sup>
Du hattest gerade eine brillante Idee für eine neue App. Es wird __die__ 
nächste Instant-Messaging-Plattform sein. Du willst eine App, mit der man sich 
gegenseitig kurze Nachrichten schicken kann. Du nennst diese Nachrichten 
Blurbs<sup>TM</sup>. Ein Blurb<sup>TM</sup> hat eine maximale Länge von nur 40 
Zeichen. Lass uns auch eine Stimmungsanzeige machen.

<!---Das Internet hat die Strichmännchen und Smileys wirklich aus der 
Versenkung geholt. __Emote!__-->

### Wo soll ich anfangen?
Nun, du könntest deine Blurbs<sup>TM</sup>-Einträge in einer json-Datei 
speichern, oder?
Aber wie kannst du den Inhalt des Eintrags und die Zeit, zu der er 
veröffentlicht wurde, nachverfolgen?
Und wenn du die Datei geladen hast, wie würde sie in Ruby aussehen?
Wäre es ein Hash? Oder ein Array? Oder ein Array von Arrays? Oder etwas 
anderes?

### Klasse
Ich glaube wirklich, dass du eine Klasse benutzen willst. Du bist bereits mit 
vielen Klassen vertraut:
Hash, Array, String.
Erstellen wir eine neue Klasse (gibt keine Ausgabe zurück):

    class Blurb
    end
