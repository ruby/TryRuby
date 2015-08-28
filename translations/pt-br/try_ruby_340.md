---
lang:   PT-BR
title:  Noble Kinsmen
answer: ^The Two Noble Kinsmen$
ok:     Assim é bem melhor
error:  
load:   prev
---

Ok, agora nós temos a lista de peças obtidas da internet. A lista está em formato json.
Felizmente, para nós, o Ruby, gentilmente, fornece um método para converter json em Hash.
O método _get\_shakey_ já faz isso para nós

Mas, uma vez que a estrutura do json é convertida em um hash, ela se torna um pouco difícil de ler.
Vamos então escrever um método para exibir as peças de forma legível.

Se você olhar a lista de peças cuidadosamente, você verá que há um tipo de estrutura identada.
Atualmente, isso é comum em dados que você obtém da internet. Parece como isso:

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

Para listar as peças, primeiro nós temos que acessar o elemento do topo do hash, "William Shakespeare", pelo seu nome.
Em seguida, temos que __iterar__ através de cada elemento abaixo deste.

O Ruby tem um método para iterar. Ele é chamado de __each__ (significa cada). Nós já o vimos antes
quando criamos nosso sistema de avaliação de livros.

Tudo que o método __each__ retorna é passado para o bloco:

    s = get_shakey

    s["William Shakespeare"].each { |key, val|
      puts val["title"]
    }
