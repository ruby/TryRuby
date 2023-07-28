---
lang:   PT-BR
title:  Apressando as Coisas
answer: ^\d{4}
ok:     Notável
error:  
---

Legal, seu app é sensacional. Ei, vamos tornar as coisas um pouco mais fáceis para você.
Você não quer definir a hora desta forma toda vez que você postar um Blurb<sup>TM</sup>.

Você quer apenas digitar o conteúdo e definir o humor, certo?

Vamos adicionar um método __initialize__ na nossa classe. Este método é chamado sempre que um novo Blurb<sup>TM</sup> é criado.
Ao mesmo tempo, nós queremos limitar o tamanho do conteúdo do BLurb<sup>TM</sup> para apenas 40 caracteres.

    class Blurb
      attr_accessor :conteudo, :tempo, :humor

      def initialize(humor, conteudo="")
        @tempo    = Time.now
        @conteudo = conteudo[0..39]
        @humor    = humor
      end
    end

    Blurb.new(:sick).tempo

(Este parâmetro conteudo=""__ está aqui para garantirmos que o conteúdo é uma string,
mesmo se nenhum conteúdo for passado como parâmetro para o método initialize)
