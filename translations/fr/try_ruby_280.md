---
lang:   FR
title:  Es-tu sévère ?
answer: :moyen
load:   livres = {"Harry Potter"=>:splendide, "The deep end"=>:catastrophique, "Living colors"=>:moyen}
ok:     Génial, wow ! Tu as fait une feuille de notation de tes évaluations
error:  
---

Alors, tu donnes des critiques sévères et injustes ? Gardons une trace avec un nouveau hash __notations__ :

Desormais, nous allons compter tes critiques. Reste avec moi. Écris :

    notations = Hash.new {0}
    
    livres.values.each { |note|
      notations[note] += 1
    }
    
    puts notations

La trait droite dans le code est le caractère pipe (|), probablement situé juste au-dessus de la touche 'T' OU 'Y' d'un clavier Windows Français.

Le _+= 1_ signifie : augmenter la valeur de 1.

Ne t'inquiète pas si tu ne comprends pas tout ce qui se passe ici. Tout sera expliqué plus tard.