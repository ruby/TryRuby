---
lang:   PT-BR
title:  Não Uma Classe de Escola, uma Classe Trabalhadora
answer:
ok:
error:  
---

Veja, as chaves vazias são um atalho para Hash.new. O método new é usado para criar objetos de uma determinada classe.
Pense em "classe" como "classe trabalhadora", um grupo específico de objetos que são similares,
tem o mesmo trabalho, e usam as mesmas roupas.
O que uso é uma classe ?

### Blurbalizer<sup>TM</sup>
Você acabou de ter uma brilhante idéia para um novo aplicativo. Ele será __a__ nova plataforma
de mensagens instantâneas. Você quer um aplicativo onde as pessoas possam enviar curtas mensagens para as outras.
Você chama isso de Blurbs<sup>TM</sup>. Os Blurbs<sup>TM</sup> permite o tamanho máximo de apenas 40 caracteres.
Vamos fazer algumas configurações de humor também.


### Onde começar
Bem, você deve armazenar seus Blurbs<sup>TM</sup> em um arquivo json, certo?
Mas como você poderia manter o rastreamento do conteúdo e da hora em que foi postado?
E quando o arquivo foi carregado, como isso ficaria no Ruby?
Isto deveria ser um Hash? Ou um Array? Ou um Array de Arrays? Ou algo diferente?

### Class
Eu realmente acho que você vai querer usar uma classe. Você já está familiarizado com várias classes:
Hash, Array, String.
Vamos criar uma nova classe (não tem retorno):

    class Blurb
    end
