---
lang:   PT-BR
title:  A Megera Domada
answer: ^megera
ok:     Bom bom !
error:  
---

Agora você já sabe como usar o Ruby. Quero dizer, você já viu o essencial.
Você só tem que continuar aprendendo mais métodos e tentar blocos mais complexos.

Mas tem um lado do Ruby que nós não mostramos. Escrever seus próprios métodos.
__Aha!__ Vamos fazer isso então.

Além de utilizar métodos que já vem com o Ruby (como puts, sort, times), você pode definir
seus próprios métodos. Por que isso é uma boa idéia? Dois motivos:

### Para fazer o seu programa ficar menor
Se você tem que fazer a mesma coisa em mais de uma parte do seu código, é mais fácil
colocar este código em um método separado. Seu código será menor

### Para tornar o seu código mais fácil de ler
Suponha que o seu programa precise fazer um monte de coisas diferentes.
Você __poderia__ colocar tudo em um pedaço longo de código. Mas isso tornaria díficil
de ler e entender o seu código depois.

Ao invés disso, você deve dividir seu código em diferentes métodos e dar a cada métodos
um nome de fácil entendimento. Você irá agradecer a si mesmo depois.

Então, como definimos um método? Assim:

    def domar( numero_de_megeras )
    end
