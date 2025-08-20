---
lang:   FR
title:  Accélérons les choses
answer: ^\d{4}
ok:     C'est noté
error:
---

Super, ton application est géniale. Rendons les choses un peu plus simple pour toi.
Tu ne voudras pas définir le temps de cette façon à chaque fois que tu crées un Blurb<sup>TM</sup>.

Tu veux juste saisir le contenu et définir l'humeur, n'est-ce pas ?

Ajoutons une méthode __initialize__ à notre classe. Cette méthode est appelée chaque fois qu'un nouveau Blurb<sup>TM</sup> est créé.
Par la méme occassion, nous pouvons limiter la longueur du contenu du Blurb<sup>TM</sup> à 40 caractères.

    class Blurb
      attr_accessor :contenu, :horaire, :humeur

      def initialize(humeur, contenu="")
        @horaire = Time.now
        @contenu = contenu[0..39]
        @humeur  = humeur
      end
    end

    Blurb.new(:triste).horaire

(Le paramètre __contenu=""__ est là pour s'assurer que nous savons que le contenu est une chaîne de caractères,
même si aucun paramètre « contenu » n'est defini, il passe par la méthode __initialize__.)
