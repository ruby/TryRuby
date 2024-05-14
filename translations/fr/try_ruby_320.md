---
lang:   FR
title:  Être ou ne pas être
answer:
load:   poem = "My toast has flown from my hand\nAnd my toast has gone to the moon.\nYada yada yada\n"
ok:
error:
---

Une autre petite chose que nous n'avons pas vraiment abordée ouvertement : les arguments/paramètres de méthode.
Tu te souviens quand nous avons modifié un peu le poème ? Nous avons utilisé :
__poem.gsub("toast", "honeydew")__

La méthode gsub a besoin de 2 arguments, que nous avons passés à gsub en incluant deux strings entre
parenthèses. _Les arguments disent à la méthode exactement quoi faire_.

### Parenthèses
En fait, la plupart du temps, Ruby n'est pas dérangé si tu ommets les parenthèses. Donc, cela aurait
également fonctionné :
__poem.gsub "toast", "honeydew"__

Finalement, nous avons déjà utilisé une autre méthode avec un seul paramètre. Beaucoup de fois en fait, même si ce n'était pas très
évident :

    puts "Hello"
    puts("Hello")

Oui, __puts__ est aussi une méthode. Utiliser puts avec ou sans parenthèses est la même chose pour Ruby, mais la
version sans parenthèses est un peu plus facile à lire. Et cela vous fait gagner du temps de frappe précieux !

> Du coup, on peut supposer que la conclusion est que tu peux faire ce que tu veux avec les parenthèses tant que ton
> code est lisible.

### Être ou ne pas être
Donc, si _to_ est une méthode et _be_ est un argument, nous connaissons maintenant la réponse à cette question ancienne.
C'est vraiment juste une question de préférence si tu veux _to be_ ou _to(be)_.

As-tu envie de plus de Shakespeare ? Lisons.