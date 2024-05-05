---
lang:   FR
title:  Un décompte
answer: \w+
ok:     Houra!
error:
---

Une des choses étonnantes que nous venons d'utiliser est un bloc (__block__). Nous allons explorer cela plus en détail dans cette leçon et celle à venir. Mais, en gros, un bloc est un morceau de code Ruby entouré d'accolades '{' '}'.

Essayons un autre bloc :

    3.times { print "Hip! " }

Les blocs sont toujours attachés à des méthodes. Comme la méthode __times__, qui prend le bloc et exécute le code à plusieurs reprises. (Dans notre exemple : trois fois.)