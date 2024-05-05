---
lang:   FR
title:  Moi faim
answer: ^Moi pas faim
ok:     Oui
error:  NON, j'ai pas faim à 10h !
---

Vous avancez à merveille ! C'est simple pour vous, mais rappelez-vous que vous ne connaissiez __absolument rien en Ruby__ il y a seulement quinze minutes !

Dernière étape. Mettons tout cela ensemble, d'accord ? Faisons en sorte que tout sonne ensemble comme un très joli ensemble de carillons scintillants sur la plage, sous la magnifique lumière du soleil !

Nous allons d'abord définir deux méthodes, puis prendre une décision :

    def faim?(heure_de_la_journée_en_heures)
      if heure_de_la_journée_en_heures < 12
        puts "Moi pas faim"
        false
      else
        puts "Moi faim"
        true
      end
    end
    
    def manger(aliment)
      puts "Moi manger #{aliment}\n"
    end
    
    manger 'pomme' if faim?(14)
    
    manger 'pomme' if faim?(10)

Voyez si vous pouvez changer la méthode __faim?__ pour afficher __"Moi pas faim"__ et retourner faux __false__ lorsque l'heure est inférieure à 12.